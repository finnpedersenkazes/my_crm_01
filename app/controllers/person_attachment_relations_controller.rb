class PersonAttachmentRelationsController < ApplicationController
  before_action :set_person_attachment_relation, only: [:show, :edit, :update, :destroy] 

  def index
    @person_attachment_relations = PersonAttachmentRelation.all
  end

  def show
  end

  def new
    @person_attachment_relation = PersonAttachmentRelation.new
    @person_attachment_relation.person_id = params[:person_id] if params[:person_id]
    @person_attachment_relation.attachment_id = params[:attachment_id] if params[:attachment_id]
  end

  def edit
  end

  def create
    @person_attachment_relation = PersonAttachmentRelation.new(person_attachment_relation_params)
    if @person_attachment_relation.save
      redirect_to person_attachment_relations_path
    else
      render :new
    end
  end

  def update
    if @person_attachment_relation.update(person_attachment_relation_params)
      redirect_to person_attachment_relations_path
    else
      render :edit
    end
  end

  def destroy
    @person_attachment_relation.destroy
    redirect_to person_attachment_relations_path
  end

  private

  def set_person_attachment_relation
    @person_attachment_relation = PersonAttachmentRelation.find(params[:id])
  end

  def person_attachment_relation_params
    params.require(:person_attachment_relation).permit(:person_id, :attachment_id, :active)
  end
end
