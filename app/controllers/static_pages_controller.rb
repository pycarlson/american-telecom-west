class StaticPagesController < ApplicationController
  before_filter :is_admin?, only: [:admin]
  
  def home
  end

  def tmetrics
  end

  def structuredcabling
  end

  def admin
    @faqs = Faq.all
    @services = Service.all
    @additional_services = AdditionalService.all
    @clients = Client.all
  end

end 
