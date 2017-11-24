require 'rails_helper'

  describe 'landing page' do
    it 'show the product with the most reviews' do
      product1 = Product.create(:name => 'Animal Farm', :cost => '12', :origin => 'USA')
      product2 = Product.create(:name => 'The Count of Monte Cristo', :cost => '13', :origin => 'France')
      product3 = Product.create(:name => 'Dorothy Must Die', :cost => '11', :origin => 'USA')
      visit '/'
      review1 = Review.create(:author => 'Gabi', :content_body => 'Gruesome', :rating => 3, :product_id => product3.id)
      expect(page).to have_content 'Dorothy Must Die';
  end

    it 'show the 3 most recent products' do
      product1 = Product.create(:name => 'Animal Farm', :cost => '12', :origin => 'USA')
      product2 = Product.create(:name => 'The Count of Monte Cristo', :cost => '13', :origin => 'France')
      product3 = Product.create(:name => 'Dorothy Must Die', :cost => '11', :origin => 'USA')
      product4 = Product.create(:name => 'The History of Jerusalem', :cost => '15', :origin => 'USA')
      visit '/'
      expect(page).to have_no_content product1.name;
   end

end
