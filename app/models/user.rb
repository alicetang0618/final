class User < ActiveRecord::Base

  has_secure_password
  
  has_many :posts, :dependent => :destroy
  has_many :subscribings, foreign_key: :subscriber_id, class_name: "Subscription", :dependent => :destroy
  has_many :subscribeds, foreign_key: :publisher_id, class_name: "Subscription", :dependent => :destroy
  has_many :comments, :dependent => :destroy

  validates :email, presence: true, uniqueness: true

end
