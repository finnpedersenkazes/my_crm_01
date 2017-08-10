class ThingsController < ApplicationController
  before_action :set_thing, only: [:show, :edit, :update, :destroy] 

  def index
    @things = Thing.all
  end

  def show
  end

  def new
    @thing = Thing.new
  end

  def edit
  end

  def create
    @thing = Thing.new(thing_params)
    if @thing.save
      redirect_to things_path
    else
      render :new
    end
  end

  def update
    if @thing.update(thing_params)
      redirect_to things_path
    else
      render :edit
    end
  end

  def destroy
    @thing.destroy
    redirect_to things_path
  end

  private

  def set_thing
    @thing = Thing.find(params[:id])
  end

  def thing_params
    params.require(:thing).permit(:name,:description,:active)
  end
end
