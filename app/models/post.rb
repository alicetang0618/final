class Post < ActiveRecord::Base

  belongs_to :user
  has_many :comments
  has_many :sources
  has_many :datasets, :through => :sources

end
