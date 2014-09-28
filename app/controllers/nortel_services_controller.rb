class NortelServicesController < ApplicationController
  before_filter :is_admin?, except: [:index]
  
  def index 
    @nortel_services = NortelService.all
    @additional_services = NortelAddServ.all
  end

  def new
    @service = NortelService.new
  end

  def create
    @nortel_services = NortelService.create!(nortel_services_params)
    redirect_to admin_path
  end

  def edit
    @nortel_services = NortelService.find(params[:id])
  end

  def update
    @nortel_services = NortelService.find(params[:id])
    if @nortel_services.update_attributes(nortel_services_params)
      redirect_to admin_path
    else
      render :edit
    end
  end

  def destroy
    nortel_services.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to admin_path }
      format.js
    end
  end

  private

  def nortel_services_params
    params.require(:nortel_services).permit(:description)
  end
end 
