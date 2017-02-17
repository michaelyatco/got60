class Friendship < ApplicationRecord
  belongs_to :competitor  
  belongs_to :friend, :class_name => "Competitor"
end
