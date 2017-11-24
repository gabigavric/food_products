class LandingPageController < ApplicationController
  def index
    @most_reviewed = Product.most_reviewed
    @most_recent = Product.most_recent
  end
end
