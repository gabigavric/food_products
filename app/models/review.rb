class Review < ActiveRecord::Base
  belongs_to :product
  validates :product_id, :presence => true
  validates :author, :presence => true
  validates :content_body, :presence => true {:presence => true, :length => { :minimum => 50, :maximum => 250 }}
  validates :rating, :presence => true
end
