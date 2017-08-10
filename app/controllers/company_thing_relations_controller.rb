class CompanyThingRelationsController < ApplicationController
  before_action :set_company_thing_relation, only: [:show, :edit, :update, :destroy] 

  def index
    @company_thing_relations = CompanyThingRelation.all
  end

  def show
  end

  def new
    @company_thing_relation = CompanyThingRelation.new
    @company_thing_relation.company_id = params[:company_id] if params[:company_id]
    @company_thing_relation.thing_id = params[:thing_id] if params[:thing_id]
  end

  def edit
  end

  def create
    @company_thing_relation = CompanyThingRelation.new(company_thing_relation_params)
    if @company_thing_relation.save
      redirect_to company_thing_relations_path
    else
      render :new
    end
  end

  def update
    if @company_thing_relation.update(company_thing_relation_params)
      redirect_to company_thing_relations_path
    else
      render :edit
    end
  end

  def destroy
    @company_thing_relation.destroy
    redirect_to company_thing_relations_path
  end

  private

  def set_company_thing_relation
    @company_thing_relation = CompanyThingRelation.find(params[:id])
  end

  def company_thing_relation_params
    params.require(:company_thing_relation).permit(:company_id, :thing_id, :acquired_date, :disposed_date, :active)
  end
end
