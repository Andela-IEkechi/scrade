class ScradeSessionsController < ApplicationController
  before_action :set_scrade_session, only: [:show, :edit, :update, :destroy]

  # GET /scrade_sessions
  # GET /scrade_sessions.json
  def index
    @scrade_sessions = ScradeSession.all
  end

  # GET /scrade_sessions/1
  # GET /scrade_sessions/1.json
  def show
  end

  # GET /scrade_sessions/new
  def new
    @scrade_session = ScradeSession.new
  end

  # GET /scrade_sessions/1/edit
  def edit
  end

  # POST /scrade_sessions
  # POST /scrade_sessions.json
  def create
    @scrade_session = ScradeSession.new(scrade_session_params)

    respond_to do |format|
      if @scrade_session.save
        format.html { redirect_to @scrade_session, notice: 'Scrade session was successfully created.' }
        format.json { render :show, status: :created, location: @scrade_session }
      else
        format.html { render :new }
        format.json { render json: @scrade_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scrade_sessions/1
  # PATCH/PUT /scrade_sessions/1.json
  def update
    respond_to do |format|
      if @scrade_session.update(scrade_session_params)
        format.html { redirect_to @scrade_session, notice: 'Scrade session was successfully updated.' }
        format.json { render :show, status: :ok, location: @scrade_session }
      else
        format.html { render :edit }
        format.json { render json: @scrade_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scrade_sessions/1
  # DELETE /scrade_sessions/1.json
  def destroy
    @scrade_session.destroy
    respond_to do |format|
      format.html { redirect_to scrade_sessions_url, notice: 'Scrade session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scrade_session
      @scrade_session = ScradeSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scrade_session_params
      params.require(:scrade_session).permit(:title, :description, :from, :to)
    end
end
