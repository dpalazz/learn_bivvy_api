class LessonplansController < ApplicationController
  before_action :set_lessonplan, only: [:show, :update, :destroy]

  # GET /lessonplans
  def index
    @lessonplans = Lessonplan.all

    render json: @lessonplans
  end

  # GET /lessonplans/1
  def show
    render json: @lessonplan
  end

  # POST /lessonplans
  def create
    @lessonplan = Lessonplan.new(lessonplan_params)

    if @lessonplan.save
      render json: @lessonplan, status: :created, location: @lessonplan
    else
      render json: @lessonplan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lessonplans/1
  def update
    if @lessonplan.update(lessonplan_params)
      render json: @lessonplan
    else
      render json: @lessonplan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lessonplans/1
  def destroy
    @lessonplan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lessonplan
      @lessonplan = Lessonplan.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lessonplan_params
      params.require(:lessonplan).permit(:service_id, :lesson_id)
    end
end
