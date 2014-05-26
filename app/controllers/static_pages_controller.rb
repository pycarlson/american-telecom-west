class StaticPagesController < ApplicationController
  before_filter :is_admin?, except: [:home]
  
  def home
  end

  def admin
    @faqs = Faq.all
    @services = Service.all
    @additional_services = AdditionalService.all
    @clients = Client.all
  end

end 
