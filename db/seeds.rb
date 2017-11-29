Product.destroy_all
Review.destroy_all

50.times do
  Product.create!( name: Faker::Book.title,
                   cost: Faker::Commerce.price,
                   origin: Faker::Address.country
                   )
end
p "Created #{Product.count} products"
250.times do
  Review.create!( author: Faker::HarryPotter.character,
                  content_body: Faker::HarryPotter.quote,
                  rating: Faker::Number.between(1,5),
                  product_id: Faker::Number.between(Product.first.id, Product.last.id)
                  )
end
p "Created #{Review.count} reviews"
