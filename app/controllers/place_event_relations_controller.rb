class PlaceEventRelationsController < ApplicationController
  before_action :set_place_event_relation, only: [:show, :edit, :update, :destroy] 

  def index
    @place_event_relations = PlaceEventRelation.all
  end

  def show
  end

  def new
    @place_event_relation = PlaceEventRelation.new
    @place_event_relation.place_id = params[:place_id] if params[:place_id]
    @place_event_relation.event_id = params[:event_id] if params[:event_id]
  end

  def edit
  end

  def create
    @place_event_relation = PlaceEventRelation.new(place_event_relation_params)
    if @place_event_relation.save
redirect_to place_event_relations_path
    else
render :new
    end
  end

  def update
    if @place_event_relation.update(place_event_relation_params)
redirect_to place_event_relations_path
    else
render :edit
    end
  end

  def destroy
    @place_event_relation.destroy
    redirect_to place_event_relations_path
  end

  private

  def set_place_event_relation
    @place_event_relation = PlaceEventRelation.find(params[:id])
  end

  def place_event_relation_params
    params.require(:place_event_relation).permit(:place_id, :event_id, :active)
  end
end
