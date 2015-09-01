class Project < ActiveRecord::Base
  has_many :tasks
  validates :name, presence: true, length: { 
    minimum: 3,
    maximum: 50,
    too_short: "must have at least %{count} words",
    too_long: "must have at most %{count} words" }
end
