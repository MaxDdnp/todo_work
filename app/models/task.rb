class Task < ActiveRecord::Base
  belongs_to :project
  validates :name, presence: true, length: { 
    minimum: 3,
    maximum: 50,
    too_short: "must have at least %{count} words",
    too_long: "must have at most %{count} words" }
  validate :check_deadline

  private

  def check_deadline
    if !deadline.blank? && deadline > Date.today
      self.errors.add(:deadline, "can't be in the future")
    end
  end
end
