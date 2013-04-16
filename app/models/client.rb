class Client < ActiveRecord::Base
  has_many :systems
  belongs_to :queue_group

  validates :name, presence: true
end
