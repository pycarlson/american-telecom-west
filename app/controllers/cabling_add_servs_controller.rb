class CablingAddServsController < ApplicationController
  before_filter :is_admin?, except: [:index]
  
  def new
    @additional_service = CablingAddServ.new
  end

  def create
    @additional_service = CablingAddServ.create!(add_serv_params)
    redirect_to admin_path
  end

  def edit
    @additional_service = CablingAddServ.find(params[:id])
  end

  def update
    @additional_service = CablingAddServ.find(params[:id])
    if @additional_service.update_attributes(add_serv_params)
      redirect_to admin_path
    else
      render :edit
    end
  end

  def destroy
    CablingAddServ.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to admin_path }
      format.js
    end
  end

  private

  def add_serv_params
    params.require(:cabling_add_servs).permit(:description)
  end

end 
