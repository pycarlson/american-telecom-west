class FaqsController < ApplicationController
  
  def index 
    @faqs = Faq.all
  end

  def new
    @faq = Faq.new
  end

  def create
    @faq = Faq.create!(faq_params)
  end

  def edit
    @faq = Faq.find(params[:id])
  end

  def update

  end

  def destroy
    Faq.find(params[:id])
    respond_to do |format|
      format.html { redirect_to faqs_path }
      format.js
    end
  end

  private

  def faq_params
    params.require(:faqs).permit(:question, :answer)
  end

end 
