class CapturesController < ApplicationController
  def index
    @captures = Capture.all
  end

  def show
    @capture = Capture.find(params[:id])
  end

  def new
    @capture = Capture.new
  end

  def create
    @capture = Capture.new
    @capture.year = params[:year]
    @capture.month = params[:month]
    @capture.firm_name = params[:firm_name]
    @capture.captures = params[:captures]
    @capture.tiles = params[:tiles]

    if @capture.save
      redirect_to "/captures", :notice => "Capture created successfully."
    else
      render 'new'
    end
  end

  def edit
    @capture = Capture.find(params[:id])
  end

  def update
    @capture = Capture.find(params[:id])

    @capture.year = params[:year]
    @capture.month = params[:month]
    @capture.firm_name = params[:firm_name]
    @capture.captures = params[:captures]
    @capture.tiles = params[:tiles]

    if @capture.save
      redirect_to "/captures", :notice => "Capture updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @capture = Capture.find(params[:id])

    @capture.destroy

    redirect_to "/captures", :notice => "Capture deleted."
  end
end
