require 'rails_helper'

describe "add a product" do

  it "adds a new product" do
    visit root_path
    click_link 'All Books'
    click_link 'Add New'
    fill_in 'Name', :with => 'Harry Potter'
    fill_in 'Cost', :with => '40'
    fill_in 'Origin', :with => 'England'
    click_on 'Create Product'
    expect(page).to have_content 'Harry Potter'
  end


end
