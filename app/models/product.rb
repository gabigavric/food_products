class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :cost, :presence => true
  validates :origin, :presence => true

  scope :most_recent, -> { order(created_at: :desc).limit(3) }

end
