class AppliancesController < ApplicationController
  def index
    @appliances = Appliance.all.order(id: :asc)
  end

  def new
    @appliance = Appliance.new
  end

  def create
    @appliance = Appliance.new(appliance_params)
    @appliance.save!
    redirect_to root_path
  end

  def show
    @appliance = Appliance.find(params[:id])
  end

  def edit
    @appliance = Appliance.find(params[:id])
  end

  def update
    @appliance = Appliance.find(params[:id])
    @appliance.update!(appliance_params)
    redirect_to @appliance
  end

  def destroy
    @appliance = Appliance.find(params[:id])
    @appliance.destroy!
    redirect_to root_path
  end

  private

  def appliance_params
    params.require(:appliance).permit(:name)
  end
end
