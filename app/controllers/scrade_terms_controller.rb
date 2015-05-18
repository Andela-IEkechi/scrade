class ScradeTermsController < ApplicationController
  before_action :set_scrade_term, only: [:show, :edit, :update, :destroy]

  # GET /scrade_terms
  # GET /scrade_terms.json
  def index
    @scrade_terms = ScradeTerm.all
  end

  # GET /scrade_terms/1
  # GET /scrade_terms/1.json
  def show
  end

  # GET /scrade_terms/new
  def new
    @scrade_term = ScradeTerm.new
  end

  # GET /scrade_terms/1/edit
  def edit
  end

  # POST /scrade_terms
  # POST /scrade_terms.json
  def create
    @scrade_term = ScradeTerm.new(scrade_term_params)

    respond_to do |format|
      if @scrade_term.save
        format.html { redirect_to @scrade_term, notice: 'Scrade term was successfully created.' }
        format.json { render :show, status: :created, location: @scrade_term }
      else
        format.html { render :new }
        format.json { render json: @scrade_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scrade_terms/1
  # PATCH/PUT /scrade_terms/1.json
  def update
    respond_to do |format|
      if @scrade_term.update(scrade_term_params)
        format.html { redirect_to @scrade_term, notice: 'Scrade term was successfully updated.' }
        format.json { render :show, status: :ok, location: @scrade_term }
      else
        format.html { render :edit }
        format.json { render json: @scrade_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scrade_terms/1
  # DELETE /scrade_terms/1.json
  def destroy
    @scrade_term.destroy
    respond_to do |format|
      format.html { redirect_to scrade_terms_url, notice: 'Scrade term was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scrade_term
      @scrade_term = ScradeTerm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scrade_term_params
      params.require(:scrade_term).permit(:scrade_session_id, :title, :from, :to)
    end
end
