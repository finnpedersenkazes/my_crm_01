class CompanyAttachmentRelationsController < ApplicationController
  before_action :set_company_attachment_relation, only: [:show, :edit, :update, :destroy] 

  def index
    @company_attachment_relations = CompanyAttachmentRelation.all
  end

  def show
  end

  def new
    @company_attachment_relation = CompanyAttachmentRelation.new
    @company_attachment_relation.company_id = params[:company_id] if params[:company_id]
    @company_attachment_relation.attachment_id = params[:attachment_id] if params[:attachment_id]
  end

  def edit
  end

  def create
    @company_attachment_relation = CompanyAttachmentRelation.new(company_attachment_relation_params)
    if @company_attachment_relation.save
redirect_to company_attachment_relations_path
    else
render :new
    end
  end

  def update
    if @company_attachment_relation.update(company_attachment_relation_params)
redirect_to company_attachment_relations_path
    else
render :edit
    end
  end

  def destroy
    @company_attachment_relation.destroy
    redirect_to company_attachment_relations_path
  end

  private

  def set_company_attachment_relation
    @company_attachment_relation = CompanyAttachmentRelation.find(params[:id])
  end

  def company_attachment_relation_params
    params.require(:company_attachment_relation).permit(:company_id, :attachment_id, :active)
  end
end
