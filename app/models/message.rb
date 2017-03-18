class Message < ApplicationRecord
  belongs_to :competitor
  belongs_to :chatroom
end
