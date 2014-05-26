class ServicesController < ApplicationController
  before_filter :is_admin?, except: [:index]
  
  def index 
    @services = Service.all
    @additional_services = AdditionalService.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.create!(service_params)
    redirect_to admin_path
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    if @service.update_attributes(service_params)
      redirect_to admin_path
    else
      render :edit
    end
  end

  def destroy
    Service.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to admin_path }
      format.js
    end
  end

  private

  def service_params
    params.require(:service).permit(:description)
  end
end 
