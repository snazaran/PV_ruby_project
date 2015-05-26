class SalespeopleController < ApplicationController
  def index
    @salespeople = Salesperson.all


  end

  def show
    @salesperson = Salesperson.find(params[:id])
  end

  def new
    @salesperson = Salesperson.new
  end

  def create
    @salesperson = Salesperson.new
    @salesperson.first_name = params[:first_name]
    @salesperson.last_name = params[:last_name]

    if @salesperson.save
      redirect_to "/salespeople", :notice => "Salesperson created successfully."
    else
      render 'new'
    end
  end

  def edit
    @salesperson = Salesperson.find(params[:id])
  end

  def update
    @salesperson = Salesperson.find(params[:id])

    @salesperson.first_name = params[:first_name]
    @salesperson.last_name = params[:last_name]

    if @salesperson.save
      redirect_to "/salespeople", :notice => "Salesperson updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @salesperson = Salesperson.find(params[:id])

    @salesperson.destroy

    redirect_to "/salespeople", :notice => "Salesperson deleted."
  end
end
