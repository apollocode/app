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
  rescue
    flash[:danger] = "Une erreur s'est produite, veuillez ressaisir votre adresse email."
    redirect_to root_path
  end

  def update_prospect
    @prospect = Prospect.find(params[:prospect_id])
    @prospect.update_attributes(prospect_params)

    flash[:warning] = "Merci d'avoir rempli notre questionnaire. Nous vous avertirons du lancement de la plateforme! A bientôt"
    redirect_to root_path
  end

  private

  def prospect_params
    params.require(:prospect).permit(:email, :campaign, :plan, :comment)
  end
end
