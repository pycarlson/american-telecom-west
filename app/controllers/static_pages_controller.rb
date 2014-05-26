class StaticPagesController < ApplicationController
  
  def home
  end

  def admin
    @faqs = Faq.all
    @services = Service.all
    @additional_services = AdditionalService.all
    @clients = Client.all
  end

end 
