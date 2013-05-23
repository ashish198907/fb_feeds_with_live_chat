class Message < ActiveRecord::Base
  attr_accessible :msg
  belongs_to :user
end
