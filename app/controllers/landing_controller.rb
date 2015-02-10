class LandingController < ApplicationController
  def home
    @prospect = Prospect.new
  end

  def create_prospect
    @prospect = Prospect.create(prospect_params)
    @prospect.update_attributes(campaign: 'MVP#1')
    redirect_to pricing_survey_path(@prospect.id)
  end

  def step
    @prospect = Prospect.find(params[:prospect_id])
  end

  private

  def prospect_params
    params.require(:prospect).permit(:email)
  end
end
