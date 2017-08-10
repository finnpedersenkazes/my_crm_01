class CompanyPlaceRelationsController < ApplicationController
  before_action :set_company_place_relation, only: [:show, :edit, :update, :destroy] 

  def index
    @company_place_relations = CompanyPlaceRelation.all
  end

  def show
  end

  def new
    @company_place_relation = CompanyPlaceRelation.new
    @company_place_relation.company_id = params[:company_id] if params[:company_id]
    @company_place_relation.place_id = params[:place_id] if params[:place_id]
  end

  def edit
  end

  def create
    @company_place_relation = CompanyPlaceRelation.new(company_place_relation_params)
    if @company_place_relation.save
      redirect_to company_place_relations_path
    else
      render :new
    end
  end

  def update
    if @company_place_relation.update(company_place_relation_params)
      redirect_to company_place_relations_path
    else
      render :edit
    end
  end

  def destroy
    @company_place_relation.destroy
    redirect_to company_place_relations_path
  end

  private

  def set_company_place_relation
    @company_place_relation = CompanyPlaceRelation.find(params[:id])
  end

  def company_place_relation_params
    params.require(:company_place_relation).permit(:company_id, :place_id, :active)
  end
end
