class EventAttachmentRelationsController < ApplicationController
  before_action :set_event_attachment_relation, only: [:show, :edit, :update, :destroy] 

  def index
    @event_attachment_relations = EventAttachmentRelation.all
  end

  def show
  end

  def new
    @event_attachment_relation = EventAttachmentRelation.new
    @event_attachment_relation.event_id = params[:event_id] if params[:event_id]
    @event_attachment_relation.attachment_id = params[:attachment_id] if params[:attachment_id]
  end

  def edit
  end

  def create
    @event_attachment_relation = EventAttachmentRelation.new(event_attachment_relation_params)
    if @event_attachment_relation.save
redirect_to event_attachment_relations_path
    else
render :new
    end
  end

  def update
    if @event_attachment_relation.update(event_attachment_relation_params)
redirect_to event_attachment_relations_path
    else
render :edit
    end
  end

  def destroy
    @event_attachment_relation.destroy
    redirect_to event_attachment_relations_path
  end

  private

  def set_event_attachment_relation
    @event_attachment_relation = EventAttachmentRelation.find(params[:id])
  end

  def event_attachment_relation_params
    params.require(:event_attachment_relation).permit(:event_id, :attachment_id, :active)
  end
end
