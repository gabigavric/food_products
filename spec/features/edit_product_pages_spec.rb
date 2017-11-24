require 'rails_helper'

describe "editing a product" do
  it "edits a product" do
    product = Product.create(:name => 'Harry Potter', :cost => '15', :origin => 'England')
    visit product_path(product)
    click_link 'Edit Product'
    fill_in 'Name', :with => 'Enders Game'
    click_on 'Update Product'
    visit product_path(product)
    expect(page).to have_content 'Enders Game'
  end


  it "gives error when no description is entered" do
    product = Product.create(:name => 'Harry Potter', :cost => '15', :origin => 'England')
    visit product_path(product)
    click_link 'Edit Product'
    fill_in 'Name', :with => ''
    click_on 'Update Product'
    expect(page).to have_content 'errors'
  end

end
