class PlaceAttachmentRelationsController < ApplicationController
  before_action :set_place_attachment_relation, only: [:show, :edit, :update, :destroy] 

  def index
    @place_attachment_relations = PlaceAttachmentRelation.all
  end

  def show
  end

  def new
    @place_attachment_relation = PlaceAttachmentRelation.new
    @place_attachment_relation.place_id = params[:place_id] if params[:place_id]
    @place_attachment_relation.attachment_id = params[:attachment_id] if params[:attachment_id]
  end

  def edit
  end

  def create
    @place_attachment_relation = PlaceAttachmentRelation.new(place_attachment_relation_params)
    if @place_attachment_relation.save
redirect_to place_attachment_relations_path
    else
render :new
    end
  end

  def update
    if @place_attachment_relation.update(place_attachment_relation_params)
redirect_to place_attachment_relations_path
    else
render :edit
    end
  end

  def destroy
    @place_attachment_relation.destroy
    redirect_to place_attachment_relations_path
  end

  private

  def set_place_attachment_relation
    @place_attachment_relation = PlaceAttachmentRelation.find(params[:id])
  end

  def place_attachment_relation_params
    params.require(:place_attachment_relation).permit(:place_id, :attachment_id, :active)
  end
end
