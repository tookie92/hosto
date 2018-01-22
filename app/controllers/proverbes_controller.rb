class ProverbesController < ApplicationController
  before_action :set_proverbe, only: [:show, :edit, :update, :destroy]

  # GET /proverbes
  # GET /proverbes.json
  def index
    @proverbes = Proverbe.all
  end

  # GET /proverbes/1
  # GET /proverbes/1.json
  def show
  end

  # GET /proverbes/new
  def new
    @proverbe = Proverbe.new
  end

  # GET /proverbes/1/edit
  def edit
  end

  # POST /proverbes
  # POST /proverbes.json
  def create
    @proverbe = Proverbe.new(proverbe_params)

    respond_to do |format|
      if @proverbe.save
        format.html { redirect_to @proverbe, notice: 'Proverbe was successfully created.' }
        format.json { render :show, status: :created, location: @proverbe }
      else
        format.html { render :new }
        format.json { render json: @proverbe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proverbes/1
  # PATCH/PUT /proverbes/1.json
  def update
    respond_to do |format|
      if @proverbe.update(proverbe_params)
        format.html { redirect_to @proverbe, notice: 'Proverbe was successfully updated.' }
        format.json { render :show, status: :ok, location: @proverbe }
      else
        format.html { render :edit }
        format.json { render json: @proverbe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proverbes/1
  # DELETE /proverbes/1.json
  def destroy
    @proverbe.destroy
    respond_to do |format|
      format.html { redirect_to proverbes_url, notice: 'Proverbe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proverbe
      @proverbe = Proverbe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proverbe_params
      params.require(:proverbe).permit(:citation, :auteur)
    end
end
