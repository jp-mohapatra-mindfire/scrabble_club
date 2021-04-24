class Player < ActiveRecord::Base
  validates :name, presence: true
  validates :email,  
            presence: true, 
            format: { with: URI::MailTo::EMAIL_REGEXP },
            uniqueness: {
              message: "This email has already been used."
            }
  has_many :scores
  validates :contact_number, 
    presence: true,
    :numericality => true,
    :length => { :minimum => 10, :maximum => 15 },
    uniqueness: {
      message: "This number has already been used."
    }

  def get_score_details
    win_count = 0
    lost_count = 0
    avg_score = 0
    highest_score = 0
    score_list = self.scores.order(value: :desc)
    high_scored_place = ''
    
    if score_list.present?  
      score_values = score_list.map(&:value)
      game_ids = score_list.map(&:game_id)
      
      Game.includes(:scores).where(id: game_ids).each do |game|
        high_scored_place = game.place if game.id == score_list.first.game_id
        game.scores&.sort_by {|score| score.value}.reverse
        .first.player_id == self.id ? win_count += 1 : lost_count += 1
      end
      
      avg_score = score_values.sum / score_values.size
      highest_score = score_values.first
    
      return win_count, lost_count, avg_score, highest_score, high_scored_place
    else
      [0, 0, 0.0, 0, '']
    end
  end
end
