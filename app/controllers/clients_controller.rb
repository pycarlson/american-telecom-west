class ClientsController < ApplicationController
  
  def index 
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.create!(client_params)
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
  end

  def destroy
    Client.create!(params[:id])
    respond_to do |format|
      format.html { redirect_to clients_path }
      format.js
    end
  end

  private

  def client_params
    params.require(:clients).permit(:name, :logo_url, :tag)
  end

end 
