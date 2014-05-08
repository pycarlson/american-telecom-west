class AdditionalServicesController < ApplicationController

  def new
    @additional_service = AdditionalService.new
  end

  def create
    @additional_service = AdditionalService.create!(additional_service_params)
  end

  def edit
    @additional_service = AdditionalService.find(params[:id])
  end

  def update
    @additional_service = AdditionalService.find(params[:id])
    respond_to do |format|
      if @additional_service.update_attributes(additional_service_params)
        format.html { redirect_to additional_service_path, notice: 'additional service was successfully updated.' }
        format.js
      else
        format.html { render action: "edit" }
        format.js
      end
    end
  end

  def destroy
    AdditionalService.create!(params[:id])
    respond_to do |format|
      format.html { redirect_to additional_services_path }
      format.js
    end
  end

  private

  def additional_services_params
    params.require(:additional_services).permit(:description)
  end

end 
