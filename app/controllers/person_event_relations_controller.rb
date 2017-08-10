class PersonEventRelationsController < ApplicationController
  before_action :set_person_event_relation, only: [:show, :edit, :update, :destroy] 

  def index
    @person_event_relations = PersonEventRelation.all
  end

  def show
  end

  def new
    @person_event_relation = PersonEventRelation.new
    @person_event_relation.person_id = params[:person_id] if params[:person_id]
    @person_event_relation.event_id = params[:event_id] if params[:event_id]
  end

  def edit
  end

  def create
    @person_event_relation = PersonEventRelation.new(person_event_relation_params)
    if @person_event_relation.save
redirect_to person_event_relations_path
    else
render :new
    end
  end

  def update
    if @person_event_relation.update(person_event_relation_params)
redirect_to person_event_relations_path
    else
render :edit
    end
  end

  def destroy
    @person_event_relation.destroy
    redirect_to person_event_relations_path
  end

  private

  def set_person_event_relation
    @person_event_relation = PersonEventRelation.find(params[:id])
  end

  def person_event_relation_params
    params.require(:person_event_relation).permit(:person_id, :event_id, :active)
  end
end
