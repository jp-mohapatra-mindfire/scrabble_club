class Game < ActiveRecord::Base
  validates :name, presence: true
  has_many :scores, dependent: :destroy
  validates :start_date, presence: true
  validates :end_date, presence: true
  accepts_nested_attributes_for :scores, :allow_destroy => true
  validate :end_date_after_start_date?


  private 

  def end_date_after_start_date?
    if end_date < start_date
      errors.add :end_date, "must be after start date"
    end
  end
end
