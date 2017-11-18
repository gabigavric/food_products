Product.destroy_all
Review.destroy_all

50.times do
  product = Product.create!(
  name: Faker::Commerce.name,
  cost: Faker::Commerce.price,
  origin: Faker::Address.country
 )
end

250.times do
  review = Review.create!(
    author: Faker::HarryPotter.character,
    content_body: Faker::HarryPotter.quote,
    rating: Faker::Number.between(1,5),
    product_id: product_id
end

  p "Created #{Product.count} products"
  p "Created #{Review.count} reviews"
