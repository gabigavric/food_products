class Review < ActiveRecord::Base
  belongs_to :prodcut
  validates :author, :presence => true
  # validates :content_body, {:presence => true, :length => { :minimum => 50, :maximum => 250 }}
  # validates :rating, :presence => true
end
