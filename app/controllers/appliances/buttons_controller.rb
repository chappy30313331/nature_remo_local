class Appliances::ButtonsController < ApplicationController
  def new
    @button = Appliance.find(params[:appliance_id]).buttons.new
  end

  def create
    button = Appliance.find(params[:appliance_id]).buttons.new(button_params)
    button.save!
    redirect_to button.appliance
  end

  private

  def button_params
    params.require(:button).permit(:name, :signal)
  end
end
