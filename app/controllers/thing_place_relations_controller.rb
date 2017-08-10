class ThingPlaceRelationsController < ApplicationController
  before_action :set_thing_place_relation, only: [:show, :edit, :update, :destroy] 

  def index
    @thing_place_relations = ThingPlaceRelation.all
  end

  def show
  end

  def new
    @thing_place_relation = ThingPlaceRelation.new
    @thing_place_relation.thing_id = params[:thing_id] if params[:thing_id]
    @thing_place_relation.place_id = params[:place_id] if params[:place_id]
  end

  def edit
  end

  def create
    @thing_place_relation = ThingPlaceRelation.new(thing_place_relation_params)
    if @thing_place_relation.save
redirect_to thing_place_relations_path
    else
render :new
    end
  end

  def update
    if @thing_place_relation.update(thing_place_relation_params)
redirect_to thing_place_relations_path
    else
render :edit
    end
  end

  def destroy
    @thing_place_relation.destroy
    redirect_to thing_place_relations_path
  end

  private

  def set_thing_place_relation
    @thing_place_relation = ThingPlaceRelation.find(params[:id])
  end

  def thing_place_relation_params
    params.require(:thing_place_relation).permit(:thing_id, :place_id, :active)
  end
end
