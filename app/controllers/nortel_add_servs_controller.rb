class NortelAddServsController < ApplicationController
  before_filter :is_admin?, except: [:index]
  
  def new
    @nortel_add_serv = NortelAddServ.new
  end

  def create
    @nortel_add_serv = NortelAddServ.create!(add_serv_params)
    redirect_to admin_path
  end

  def edit
    @nortel_add_serv = NortelAddServ.find(params[:id])
  end

  def update
    @nortel_add_serv = NortelAddServ.find(params[:id])
    if @nortel_add_serv.update_attributes(add_serv_params)
      redirect_to admin_path
    else
      render :edit
    end
  end

  def destroy
    NortelAddServ.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to admin_path }
      format.js
    end
  end

  private

  def add_serv_params
    params.require(:nortel_add_servs).permit(:description)
  end

end 
