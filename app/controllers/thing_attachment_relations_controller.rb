class ThingAttachmentRelationsController < ApplicationController
  before_action :set_thing_attachment_relation, only: [:show, :edit, :update, :destroy] 

  def index
    @thing_attachment_relations = ThingAttachmentRelation.all
  end

  def show
  end

  def new
    @thing_attachment_relation = ThingAttachmentRelation.new
    @thing_attachment_relation.thing_id = params[:thing_id] if params[:thing_id]
    @thing_attachment_relation.attachment_id = params[:attachment_id] if params[:attachment_id]
  end

  def edit
  end

  def create
    @thing_attachment_relation = ThingAttachmentRelation.new(thing_attachment_relation_params)
    if @thing_attachment_relation.save
redirect_to thing_attachment_relations_path
    else
render :new
    end
  end

  def update
    if @thing_attachment_relation.update(thing_attachment_relation_params)
redirect_to thing_attachment_relations_path
    else
render :edit
    end
  end

  def destroy
    @thing_attachment_relation.destroy
    redirect_to thing_attachment_relations_path
  end

  private

  def set_thing_attachment_relation
    @thing_attachment_relation = ThingAttachmentRelation.find(params[:id])
  end

  def thing_attachment_relation_params
    params.require(:thing_attachment_relation).permit(:thing_id, :attachment_id, :active)
  end
end
