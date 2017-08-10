class CompanyPersonRelationsController < ApplicationController
  before_action :set_company_person_relation, only: [:show, :edit, :update, :destroy] 

  def index
    @company_person_relations = CompanyPersonRelation.all
  end

  def show
  end

  def new
    @company_person_relation = CompanyPersonRelation.new
    @company_person_relation.company_id = params[:company_id] if params[:company_id]
    @company_person_relation.person_id = params[:person_id] if params[:person_id]
  end

  def edit
  end

  def create
    @company_person_relation = CompanyPersonRelation.new(company_person_relation_params)
    if @company_person_relation.save
redirect_to company_person_relations_path
    else
render :new
    end
  end

  def update
    if @company_person_relation.update(company_person_relation_params)
redirect_to company_person_relations_path
    else
render :edit
    end
  end

  def destroy
    @company_person_relation.destroy
    redirect_to company_person_relations_path
  end

  private

  def set_company_person_relation
    @company_person_relation = CompanyPersonRelation.find(params[:id])
  end

  def company_person_relation_params
    params.require(:company_person_relation).permit(:company_id, :person_id, :start_date, :end_date, :job_function, :active)
  end
end
