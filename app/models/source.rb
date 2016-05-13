class Source < ActiveRecord::Base

  belongs_to :post
  belongs_to :dataset

end
