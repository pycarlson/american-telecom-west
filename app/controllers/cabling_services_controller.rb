class CablingServicesController < ApplicationController
  before_filter :is_admin?, except: [:index]
  
  def index 
    @cabling_services = CablingService.all
    @additional_services = CablingAddServ.all
  end

  def new
    @service = CablingService.new
  end

  def create
    @cabling_services = CablingService.create!(cabling_services_params)
    redirect_to admin_path
  end

  def edit
    @cabling_services = CablingService.find(params[:id])
  end

  def update
    @cabling_services = CablingService.find(params[:id])
    if @cabling_services.update_attributes(cabling_services_params)
      redirect_to admin_path
    else
      render :edit
    end
  end

  def destroy
    cabling_services.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to admin_path }
      format.js
    end
  end

  private

  def cabling_services_params
    params.require(:cabling_services).permit(:description)
  end
end 
