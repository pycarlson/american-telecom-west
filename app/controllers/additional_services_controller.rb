class AdditionalServicesController < ApplicationController

  def new
    @additional_service = AdditionalService.new
  end

  def create
    @additional_service = AdditionalService.create!(additional_service_params)
    redirect_to services_path
  end

  def edit
    @additional_service = AdditionalService.find(params[:id])
  end

  def update
    @additional_service = AdditionalService.find(params[:id])
    if @additional_service.update_attributes(additional_service_params)
      redirect_to services_path
    else
      render :edit
    end
  end

  def destroy
    AdditionalService.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to additional_services_path }
      format.js
    end
  end

  private

  def additional_service_params
    params.require(:additional_service).permit(:description)
  end

end 
