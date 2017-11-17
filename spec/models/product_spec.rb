require 'rails_helper'

describe Product do
  it { should have_many :reviews }
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :origin }
end

describe '#most_reviewed' do
    it "should return the product with the most reviews" do
      Product.create(name: "name", cost: 1, origin: "origin")
      product = Product.create(name: "First Series Harry Potter Book", cost: 10, origin: "England")
      4.times do
        product.reviews.create(author: "author", content_body: "review", rating: 5)
      end
      most_popular_product = Product.most_reviewed
      expect(most_popular_product[0].name).to eq product.name
    end
end

describe '#most_recent' do
   it "should return the 3 most recent products" do
     4.times do
       Product.create(name: "name", cost: 1, origin: "origin")
     end
     most_recent_products = Product.most_recent
     expect(most_recent_products.length).to eq 3
   end
end
