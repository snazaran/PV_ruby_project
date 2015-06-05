class InstancesController < ApplicationController
  def index
    @instances = Instance.all
  end

  def show
    @instance = Instance.find(params[:id])
  end

  def new
    @instance = Instance.new
  end

  def create
    @instance = Instance.new
    @instance.login = params[:login]
    @instance.pw = params[:pw]
    @instance.account_id = params[:account_id]

    if @instance.save
      redirect_to "/instances", :notice => "Instance created successfully."
    else
      render 'new'
    end
  end

  def edit
    @instance = Instance.find(params[:id])
  end

  def update
    @instance = Instance.find(params[:id])

    @instance.login = params[:login]
    @instance.pw = params[:pw]
    @instance.account_id = params[:account_id]

    if @instance.save
      redirect_to "/instances", :notice => "Instance updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @instance = Instance.find(params[:id])

    @instance.destroy

    redirect_to "/instances", :notice => "Instance deleted."
  end
end
