class OrderDetalisController < ApplicationController
  before_action :set_order_detali, only: [:show, :edit, :update, :destroy]

  # GET /order_detalis
  # GET /order_detalis.json
  def index
    @order_detalis = OrderDetali.all
  end

  # GET /order_detalis/1
  # GET /order_detalis/1.json
  def show
  end

  # GET /order_detalis/new
  def new
    @order_detali = OrderDetali.new
  end

  # GET /order_detalis/1/edit
  def edit
  end

  # POST /order_detalis
  # POST /order_detalis.json
  def create
    @order_detali = OrderDetali.new(order_detali_params)

    respond_to do |format|
      if @order_detali.save
        format.html { redirect_to @order_detali, notice: 'Order detali was successfully created.' }
        format.json { render :show, status: :created, location: @order_detali }
      else
        format.html { render :new }
        format.json { render json: @order_detali.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_detalis/1
  # PATCH/PUT /order_detalis/1.json
  def update
    respond_to do |format|
      if @order_detali.update(order_detali_params)
        format.html { redirect_to @order_detali, notice: 'Order detali was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_detali }
      else
        format.html { render :edit }
        format.json { render json: @order_detali.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_detalis/1
  # DELETE /order_detalis/1.json
  def destroy
    @order_detali.destroy
    respond_to do |format|
      format.html { redirect_to order_detalis_url, notice: 'Order detali was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_detali
      @order_detali = OrderDetali.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_detali_params
      params.require(:order_detali).permit(:order_id, :book_id, :price)
    end
end
