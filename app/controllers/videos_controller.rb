class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :destroy]

  def index
    @videos = Video.all
  end

  def show

  end

  def new
    @video = Video.new
  end

  def create
    if @video.update(video_params)
      redirect_to root_path, notice: "Video created."
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
    def set_video
      @video = Video.find(params[:id])
    end
    
    def video_params
      params.require(:video).permit(:title, :url)
    end

end
