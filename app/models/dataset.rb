class Dataset < ActiveRecord::Base

  has_many :sources
  has_many :posts, :through => :sources

end
