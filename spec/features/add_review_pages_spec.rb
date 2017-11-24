require 'rails_helper'

describe 'adding a review' do
  it 'will add a review to a product' do
    product = Product.create(:name => 'Harry Potter', :cost => '15', :origin => 'England')
    visit product_path(product)
    click_link 'Add Review'
    fill_in 'Author', :with => 'JK Rowling'
    fill_in 'Content body', :with => 'Always'
    choose 'review_rating_2'
    click_on 'Create Review'
    expect(page).to have_content 'Reviews'
  end
end
