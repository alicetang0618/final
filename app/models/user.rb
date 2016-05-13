class User < ActiveRecord::Base

  has_many :posts
  has_many :subscribings, foreign_key: :subscriber_id, class_name: "Subscription"
  has_many :subscribeds, foreign_key: :publisher_id, class_name: "Subscription"
  has_many :comments

end
