class ThingEventRelationsController < ApplicationController
  before_action :set_thing_event_relation, only: [:show, :edit, :update, :destroy] 

  def index
    @thing_event_relations = ThingEventRelation.all
  end

  def show
  end

  def new
    @thing_event_relation = ThingEventRelation.new
    @thing_event_relation.thing_id = params[:thing_id] if params[:thing_id]
    @thing_event_relation.event_id = params[:event_id] if params[:event_id]
  end

  def edit
  end

  def create
    @thing_event_relation = ThingEventRelation.new(thing_event_relation_params)
    if @thing_event_relation.save
redirect_to thing_event_relations_path
    else
render :new
    end
  end

  def update
    if @thing_event_relation.update(thing_event_relation_params)
redirect_to thing_event_relations_path
    else
render :edit
    end
  end

  def destroy
    @thing_event_relation.destroy
    redirect_to thing_event_relations_path
  end

  private

  def set_thing_event_relation
    @thing_event_relation = ThingEventRelation.find(params[:id])
  end

  def thing_event_relation_params
    params.require(:thing_event_relation).permit(:thing_id, :event_id, :active)
  end
end
