class Score < ActiveRecord::Base
  belongs_to :game
  belongs_to :player
  validates :player_id, :value,  presence: true
  # validates_uniqueness_of :player_id, :scope => :game_id
end
