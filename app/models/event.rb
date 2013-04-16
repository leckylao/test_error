class Event < ActiveRecord::Base
  belongs_to :system
  belongs_to :queue_group

  STATUSES = ["ABANDONED", "CLOSED", "NEW", "OPEN", "UPDATED", "WAITING"]

  PRIORITIES = [0, 1, 2, 3, 4, 5]

  validates :name, presence: true
  validates :status, presence: true, inclusion: {in: STATUSES, message: "%{value} is not a valid status"}
  validates :priority, presence: true, inclusion: {in: PRIORITIES, message: "%{value} is not a valid priority"}
  validates :system, presence: true

  class << self
    def statuses
      STATUSES
    end

    def priorities
      PRIORITIES
    end
  end
end
