class FaqsController < ApplicationController
  
  def index 
    @faqs = Faq.all
  end

  def new
    @faq = Faq.new
  end

  def create
    @faq = Faq.create!(faq_params)
    redirect_to faqs_path
  end

  def edit
    @faq = Faq.find(params[:id])
  end

  def update
    @faq = Faq.find(params[:id])
    if @faq.update_attributes(faq_params)
      redirect_to faqs_path
    else
      render :edit
    end
  end

  def destroy
    Faq.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to faqs_path }
      format.js
    end
  end

  private

  def faq_params
    params.require(:faq).permit(:question, :answer)
  end

end 
