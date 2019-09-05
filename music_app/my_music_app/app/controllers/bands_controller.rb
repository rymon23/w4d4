class BandsController < ApplicationController
  def index
    @bands = Band.all 
    render :index
  end

  def show
    @band = Band.find(params[:id])
    if @band 
      render :show
    else
      render :new
    end
  end

  def new
    @band = Band.new
    render :new 
  end
  
  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end