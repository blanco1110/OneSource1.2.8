class DeviceColorsController < ApplicationController
  before_action :set_device_color, only: [:show, :edit, :update, :destroy]

  # GET /device_colors
  # GET /device_colors.json
  def index
    @device_colors = DeviceColor.all
  end

  # GET /device_colors/1
  # GET /device_colors/1.json
  def show
  end

  # GET /device_colors/new
  def new
    @device_color = DeviceColor.new
  end

  # GET /device_colors/1/edit
  def edit
  end

  # POST /device_colors
  # POST /device_colors.json
  def create
    @device_color = DeviceColor.new(device_color_params)

    respond_to do |format|
      if @device_color.save
        format.html { redirect_to @device_color, notice: 'Device color was successfully created.' }
        format.json { render :show, status: :created, location: @device_color }
      else
        format.html { render :new }
        format.json { render json: @device_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device_colors/1
  # PATCH/PUT /device_colors/1.json
  def update
    respond_to do |format|
      if @device_color.update(device_color_params)
        format.html { redirect_to @device_color, notice: 'Device color was successfully updated.' }
        format.json { render :show, status: :ok, location: @device_color }
      else
        format.html { render :edit }
        format.json { render json: @device_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device_colors/1
  # DELETE /device_colors/1.json
  def destroy
    @device_color.destroy
    respond_to do |format|
      format.html { redirect_to device_colors_url, notice: 'Device color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_color
      @device_color = DeviceColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_color_params
      params.require(:device_color).permit(:color_name)
    end
end
