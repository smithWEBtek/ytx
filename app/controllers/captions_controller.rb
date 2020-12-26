class CaptionsController < ApplicationController
  before_action :set_caption, only: [:show, :edit, :destroy]

  def index
    @captions = Caption.all
  end

  def show

  end

  def new
    @caption = Caption.new
  end

  def create
    if @caption.update(caption_params)
      redirect_to root_path, notice: "Caption created."
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
    def set_caption
      @caption = Caption.find(params[:id])
    end
    
    def caption_params
      params.require(:caption).permit(:video_id, :url, :timedtext_code, :cctext)
    end

end
