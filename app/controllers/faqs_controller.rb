class FaqsController < ApplicationController
  
 def index 
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def faqs_params
    params.require(:faqs).permit(:question, :answer)
  end

end 
