class Friendship < ApplicationRecord
  belongs_to :user, :class_name => "friend", :foreign_key => "user_id"
  belongs_to :user, :class_name => "requester", :foreign_key => "user_id"
end
