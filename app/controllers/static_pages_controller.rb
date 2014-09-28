class StaticPagesController < ApplicationController
  before_filter :is_admin?, only: [:admin]
  
  def home
  end

  def tmetrics
  end

  def nortel
  end

  def structuredcabling
  end

  def admin
    @faqs = Faq.all
    @nortel_services = NortelService.all
    @cabling_services = CablingService.all
    @nortel_add_servs = NortelAddServ.all
    @cabling_add_servs = CablingAddServ.all
    @clients = Client.all
  end

end 
