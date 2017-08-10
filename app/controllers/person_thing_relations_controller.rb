class PersonThingRelationsController < ApplicationController
  before_action :set_person_thing_relation, only: [:show, :edit, :update, :destroy] 

  def index
    @person_thing_relations = PersonThingRelation.all
  end

  def show
  end

  def new
    @person_thing_relation = PersonThingRelation.new
    @person_thing_relation.person_id = params[:person_id] if params[:person_id]
    @person_thing_relation.thing_id = params[:thing_id] if params[:thing_id]
  end

  def edit
  end

  def create
    @person_thing_relation = PersonThingRelation.new(person_thing_relation_params)
    if @person_thing_relation.save
redirect_to person_thing_relations_path
    else
render :new
    end
  end

  def update
    if @person_thing_relation.update(person_thing_relation_params)
redirect_to person_thing_relations_path
    else
render :edit
    end
  end

  def destroy
    @person_thing_relation.destroy
    redirect_to person_thing_relations_path
  end

  private

  def set_person_thing_relation
    @person_thing_relation = PersonThingRelation.find(params[:id])
  end

  def person_thing_relation_params
    params.require(:person_thing_relation).permit(:person_id, :thing_id, :active)
  end
end
