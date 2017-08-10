class PersonPlaceRelationsController < ApplicationController
  before_action :set_person_place_relation, only: [:show, :edit, :update, :destroy] 

  def index
    @person_place_relations = PersonPlaceRelation.all
  end

  def show
  end

  def new
    @person_place_relation = PersonPlaceRelation.new
    @person_place_relation.person_id = params[:person_id] if params[:person_id]
    @person_place_relation.place_id = params[:place_id] if params[:place_id]
  end

  def edit
  end

  def create
    @person_place_relation = PersonPlaceRelation.new(person_place_relation_params)
    if @person_place_relation.save
redirect_to person_place_relations_path
    else
render :new
    end
  end

  def update
    if @person_place_relation.update(person_place_relation_params)
redirect_to person_place_relations_path
    else
render :edit
    end
  end

  def destroy
    @person_place_relation.destroy
    redirect_to person_place_relations_path
  end

  private

  def set_person_place_relation
    @person_place_relation = PersonPlaceRelation.find(params[:id])
  end

  def person_place_relation_params
    params.require(:person_place_relation).permit(:person_id, :place_id, :active)
  end
end
