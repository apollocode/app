class LandingController < ApplicationController
  def home
    @prospect = Prospect.new
  end

  def save_prospect
    raise
  end

  def step
  end
end
