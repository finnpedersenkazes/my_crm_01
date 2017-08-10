class CompanyEventRelationsController < ApplicationController
  before_action :set_company_event_relation, only: [:show, :edit, :update, :destroy] 

  def index
    @company_event_relations = CompanyEventRelation.all
  end

  def show
  end

  def new
    @company_event_relation = CompanyEventRelation.new
    @company_event_relation.company_id = params[:company_id] if params[:company_id]
    @company_event_relation.event_id = params[:event_id] if params[:event_id]
  end

  def edit
  end

  def create
    @company_event_relation = CompanyEventRelation.new(company_event_relation_params)
    if @company_event_relation.save
redirect_to company_event_relations_path
    else
render :new
    end
  end

  def update
    if @company_event_relation.update(company_event_relation_params)
redirect_to company_event_relations_path
    else
render :edit
    end
  end

  def destroy
    @company_event_relation.destroy
    redirect_to company_event_relations_path
  end

  private

  def set_company_event_relation
    @company_event_relation = CompanyEventRelation.find(params[:id])
  end

  def company_event_relation_params
    params.require(:company_event_relation).permit(:company_id, :event_id, :active)
  end
end
