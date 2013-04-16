class QueueGroup < ActiveRecord::Base
  has_many :clients
  has_many :events
end
