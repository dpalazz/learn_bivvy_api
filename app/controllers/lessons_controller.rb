class LessonsController < ApplicationController

  def index
    lessons = Lesson.order(:id)
    render json: lessons.to_json(include: :services)
  end

  def show
    lesson = Lesson.find(params[:id])
    render json: lesson.to_json(include: :services)
  end

  def create
    lesson = Lesson.new(lesson_params)
    if lesson.save
      render json: {status: 201, lesson: lesson}
    else
      render json: {status: 422, lessson: lesson}
    end
  end

  def update
    lesson = Lesson.find(params[:id])
    lesson.update(lesson_params)
    if lesson.save
      render json: {status: 204, lesson: lesson}
    else
      render json: {status: 422, lesson: lesson}
    end
  end

  def destroy
    lesson = Lesson.destroy(params[:id])
    render status: 204
  end

  # ****************
  private
  # ****************

  def lesson_params
    params.required(:lesson).permit(:title, :description, :video_url)
  end

end
