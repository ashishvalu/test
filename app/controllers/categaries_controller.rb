class CategariesController < ApplicationController
  before_action :set_categary, only: [:show, :edit, :update, :destroy]

  # GET /categaries
  # GET /categaries.json
  def index
    @categaries = Categary.all
  end

  # GET /categaries/1
  # GET /categaries/1.json
  def show
  end

  # GET /categaries/new
  def new
    @categary = Categary.new
  end

  # GET /categaries/1/edit
  def edit
  end

  # POST /categaries
  # POST /categaries.json
  def create
    @categary = Categary.new(categary_params)

    respond_to do |format|
      if @categary.save
        format.html { redirect_to @categary, notice: 'Categary was successfully created.' }
        format.json { render :show, status: :created, location: @categary }
      else
        format.html { render :new }
        format.json { render json: @categary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categaries/1
  # PATCH/PUT /categaries/1.json
  def update
    respond_to do |format|
      if @categary.update(categary_params)
        format.html { redirect_to @categary, notice: 'Categary was successfully updated.' }
        format.json { render :show, status: :ok, location: @categary }
      else
        format.html { render :edit }
        format.json { render json: @categary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categaries/1
  # DELETE /categaries/1.json
  def destroy
    @categary.destroy
    respond_to do |format|
      format.html { redirect_to categaries_url, notice: 'Categary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categary
      @categary = Categary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categary_params
      params.require(:categary).permit(:name)
    end
end
