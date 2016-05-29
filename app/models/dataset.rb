class Dataset < ActiveRecord::Base

  has_many :sources, :dependent => :destroy
  has_many :posts, :through => :sources, :dependent => :destroy

  validates :database, presence: true
  validates :table, presence: true

end
