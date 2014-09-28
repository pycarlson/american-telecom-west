class NortelServicesController < ApplicationController
  before_filter :is_admin?, except: [:index]
  
  def index 
    @nortel_services = NortelService.all
    @additional_services = NortelAddServ.all
  end

  def new
    @nortel_service = NortelService.new
  end

  def create
    @nortel_service = NortelService.create!(nortel_services_params)
    redirect_to admin_path
  end

  def edit
    @nortel_service = NortelService.find(params[:id])
  end

  def update
    @nortel_service = NortelService.find(params[:id])
    if @nortel_service.update_attributes(nortel_services_params)
      redirect_to admin_path
    else
      render :edit
    end
  end

  def destroy
    nortel_service = NortelService.find(params[:id])
    nortel_service.destroy
    respond_to do |format|
      format.html { redirect_to admin_path }
      format.js
    end
  end

  private

  def nortel_services_params
    params.require(:nortel_service).permit(:description)
  end
end 
