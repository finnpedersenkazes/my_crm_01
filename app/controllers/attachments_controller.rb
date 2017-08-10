class AttachmentsController < ApplicationController
  before_action :set_attachment, only: [:show, :edit, :update, :destroy] 

  def index
    @attachments = Attachment.all
  end

  def show
  end

  def new
    @attachment = Attachment.new
  end

  def edit
  end

  def create
    @attachment = Attachment.new(attachment_params)
    if @attachment.save
      redirect_to attachments_path
    else
      render :new
    end
  end

  def update
    if @attachment.update(attachment_params)
      redirect_to attachments_path
    else
      render :edit
    end
  end

  def destroy
    @attachment.destroy
    redirect_to attachments_path
  end

  private

  def set_attachment
    @attachment = Attachment.find(params[:id])
  end

  def attachment_params
    params.require(:attachment).permit(:name,:description,:active)
  end
end
