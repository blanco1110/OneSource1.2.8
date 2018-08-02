class RepairOrdersController < ApplicationController
  before_action :set_repair_order, only: [:show, :edit, :update, :destroy]

  # GET /repair_orders
  # GET /repair_orders.json
  def index
    @repair_orders = RepairOrder.search(params[:search])
  end

  # GET /repair_orders/1
  # GET /repair_orders/1.json
  def show
  end

  # GET /repair_orders/new
  def new
    @repair_order = RepairOrder.new
    @repair_order.build_customer

  end

  # GET /repair_orders/1/edit
  def edit
  end

  # POST /repair_orders
  # POST /repair_orders.json
  def create
    @repair_order = RepairOrder.new(repair_order_params)

    respond_to do |format|
      if @repair_order.save
        @customer = @repair_order.customer
        format.html { redirect_to @repair_order, notice: 'Repair order was successfully created.' }
        format.json { render :show, status: :created, location: @repair_order }
      else
        format.html { render :new }
        format.json { render json: @repair_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repair_orders/1
  # PATCH/PUT /repair_orders/1.json
  def update
    respond_to do |format|
      if @repair_order.update(repair_order_params)
        format.html { redirect_to @repair_order, notice: 'Repair order was successfully updated.' }
        format.json { render :show, status: :ok, location: @repair_order }
      else
        format.html { render :edit }
        format.json { render json: @repair_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repair_orders/1
  # DELETE /repair_orders/1.json
  def destroy
    @repair_order.destroy
    respond_to do |format|
      format.html { redirect_to repair_orders_url, notice: 'Repair order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repair_order
      @repair_order = RepairOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repair_order_params
      params.require(:repair_order).permit(:repair_order_status_id, :repair_order_date, :repair_order_subtotal, :repair_order_tax, :repair_order_total, :repair_order_accessories, :repair_order_notes,:repair_order_status_date, :customer_id, customer_attributes: [:id, :customer_fname, :customer_lname, :customer_email, :customer_phone, :customer_call, :customer_text, :customer_zip,],:devices_attributes => [:id, :_destroy, :imei_number, :device_version_id, :device_color_id, :device_notes, :repair_order_id, :device_pre_tests_attributes => [:id, :_destroy, :device_id, :test_id, :pre_test_condition], :device_post_tests_attributes => [:id, :_destroy, :device_id, :test_id, :post_test_condition],:repair_order_items_attributes => [:id, :_destroy, :repair_order_status_id, :device_component_id, :technician_id, :warranty_expire_date, :warranty_coverage_notes, :repaired_as_warranty, :warranty_repair_date, :price, :device_id]])
    end
end
