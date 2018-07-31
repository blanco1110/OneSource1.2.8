class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.search(params[:search])
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    @customer = Customer.new
    @customer.repair_orders.build.devices.build.repair_order_items.build
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:customer_fname, :customer_lname, :customer_email, :customer_phone, :customer_call, :customer_text, :customer_zip, :repair_orders_attributes => [:id, :repair_order_status_id, :repair_order_date, :repair_order_subtotal, :repair_order_tax, :repair_order_total, :repair_order_accessories, :repair_order_notes, :customer_id, :repair_order_status_date, :devices_attributes => [:id, :imei_number, :device_version_id, :device_type, :device_color, :device_notes, :repair_order_id, :device_pre_tests_attributes => [:id, :device_id, :test_id, :pre_test_condition], :device_post_tests_attributes => [:id, :device_id, :test_id, :post_test_condition],:repair_order_items_attributes => [:id, :device_component_id, :technician_id, :warranty_expire_date, :warranty_coverage_notes, :repaired_as_warranty, :warranty_repair_date, :price, :device_id]]])
    end
end
