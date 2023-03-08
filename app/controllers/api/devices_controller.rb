class Api::DevicesController < ApplicationController
  before_action :set_devices, only: %i[index]
  before_action :set_device, only: %i[update show]

  def create
    device = Device.new(location: params[:location])

    if device.save
      render json: device.adjust_json
    else
      render json: device.error
    end
  end

  def index
    render json: @set_devices.map(&:adjust_json)
  end

  def update
    @set_device.temperatures.build(temp: params[:temp])
    @set_device.water_temperatures.build(w_temp: params[:w_temp])
    @set_device.illuminations.build(illum: params[:illum])

    if @set_device.save
      render json: @set_device.adjust_json
    else
      render json: @set_device.error
    end
  end

  def show
    render json: @set_device.adjust_show_json
  end

  private

  def set_devices
    @set_devices = Device.all
  end

  def set_device
    @set_device = Device.find_by(id: params[:id])
  end
end
