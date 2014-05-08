class ServicesController < ApplicationController
  
  def index 
    @services = Service.all
    @additional_services = AdditionalService.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.create!(service_params)
    redirect_to services_path
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    respond_to do |format|
      if @service.update_attributes(service_params)
        format.html { redirect_to service_path, notice: 'additional service was successfully updated.' }
        format.js
      else
        format.html { render action: "edit" }
        format.js
      end
    end
  end

  def destroy
    Service.destroy(params[:id])
    puts "#{params[:id]}"
    p "*" * 100
    respond_to do |format|
      format.html { redirect_to services_path }
      format.js
    end
  end

  private

  def service_params
    params.require(:service).permit(:description)
  end
end 
