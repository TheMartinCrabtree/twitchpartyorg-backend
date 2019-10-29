class GameserverinfosController < ApplicationController
  before_action :set_gameserverinfo, only: [:show, :update, :destroy]

  # GET /gameserverinfos
  def index
    @gameserverinfos = Gameserverinfo.all

    render json: @gameserverinfos
  end

  # GET /gameserverinfos/1
  def show
    render json: @gameserverinfo
  end

  # POST /gameserverinfos
  def create
    @gameserverinfo = Gameserverinfo.new(gameserverinfo_params)

    if @gameserverinfo.save
      render json: @gameserverinfo, status: :created, location: @gameserverinfo
    else
      render json: @gameserverinfo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gameserverinfos/1
  def update
    if @gameserverinfo.update(gameserverinfo_params)
      render json: @gameserverinfo
    else
      render json: @gameserverinfo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gameserverinfos/1
  def destroy
    @gameserverinfo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gameserverinfo
      @gameserverinfo = Gameserverinfo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gameserverinfo_params
      params.require(:gameserverinfo).permit(:servername, :serveraddress)
    end
end
