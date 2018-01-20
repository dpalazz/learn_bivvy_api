class LessonsController < ApplicationController

  def index
    lessons = Lesson.all
    render json: {status: 200, lessons: lessons}
  end

  def show
    lesson = Lesson.find(params[:id])
    render json: {status: 200, lesson: lesson}
  end

end
