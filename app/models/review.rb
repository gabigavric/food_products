class Review < ActiveRecord::Base
  belongs_to :prodcut
  validates :author, :presence => true
end
