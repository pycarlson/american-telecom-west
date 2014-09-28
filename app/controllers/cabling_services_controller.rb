class CablingServicesController < ApplicationController
  before_filter :is_admin?, except: [:index]
  
  def index 
    @cabling_services = CablingService.all
    @additional_services = CablingAddServ.all
  end

  def new
    @cabling_service = CablingService.new
  end

  def create
    @cabling_service = CablingService.create!(cabling_service_params)
    redirect_to admin_path
  end

  def edit
    @cabling_service = CablingService.find(params[:id])
  end

  def update
    @cabling_service = CablingService.find(params[:id])
    if @cabling_service.update_attributes(cabling_service_params)
      redirect_to admin_path
    else
      render :edit
    end
  end

  def destroy
    cabling_service = CablingService.find(params[:id])
    cabling_service.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to admin_path }
      format.js
    end
  end

  private

  def cabling_service_params
    params.require(:cabling_services).permit(:description)
  end
end 
