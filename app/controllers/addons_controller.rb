class AddonsController < ApplicationController
  before_filter :is_admin?, except: [:index]
  
  def new
    @addon = Addon.new
  end

  def create
    @addon = Addon.create!(addon_params)
    redirect_to admin_path
  end

  def edit
    @addon = Addon.find(params[:id])
  end

  def update
    p params
    @addon = Addon.find(params[:id])
    if @addon.update_attributes(addon_params)
      redirect_to admin_path
    else
      render :edit
    end
  end

  def destroy
    Addon.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to admin_path }
      format.js
    end
  end

  private

  def addon_params
    params.require(:addon).permit(:nortel_intro, :nortel_conclusion, :cabling_intro, :cabling_conclusion)
  end

end 
