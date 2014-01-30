class MusicvideosController < ApplicationController
  before_action :set_musicvideo, only: [:show, :edit, :update, :destroy]

  # GET /musicvideos
  # GET /musicvideos.json
  def index
    @musicvideos = Musicvideo.all
  end

  # GET /musicvideos/1
  # GET /musicvideos/1.json
  def show
  end

  # GET /musicvideos/new
  def new
    @musicvideo = Musicvideo.new
  end

  # GET /musicvideos/1/edit
  def edit
  end

  # POST /musicvideos
  # POST /musicvideos.json
  def create
    @musicvideo = Musicvideo.new(musicvideo_params)

    respond_to do |format|
      if @musicvideo.save
        format.html { redirect_to @musicvideo, notice: 'Musicvideo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @musicvideo }
      else
        format.html { render action: 'new' }
        format.json { render json: @musicvideo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musicvideos/1
  # PATCH/PUT /musicvideos/1.json
  def update
    respond_to do |format|
      if @musicvideo.update(musicvideo_params)
        format.html { redirect_to @musicvideo, notice: 'Musicvideo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @musicvideo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musicvideos/1
  # DELETE /musicvideos/1.json
  def destroy
    @musicvideo.destroy
    respond_to do |format|
      format.html { redirect_to musicvideos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musicvideo
      @musicvideo = Musicvideo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def musicvideo_params
      params.require(:musicvideo).permit(:title, :artist)
    end
end
