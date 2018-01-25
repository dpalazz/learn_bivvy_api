class ServicesController < ApplicationController

  def index
    services = Service.order(:id)
    render json: services.to_json(include: :lessons)
  end

  def show
    service = Service.find(params[:id])
    render json: service.to_json(include: :lessons)
  end

  def create
    service = Service.new(service_params)
    if service.save
      render json: {status: 201, service: service}
    else
      render json: {status: 422, service: service}
    end
  end

  def update
    service = Service.find(params[:id])
    service.update(service_params)
    if service.save
      render json: {status: 204, service: service}
    else
      render json: {status: 422, service: service}
    end
  end

  def destroy
    service = Service.destroy(params[:id])
    render status: 204
  end

  # ****************
  private
  # ****************

  def service_params
    params.required(:service).permit(:name)
  end

end
