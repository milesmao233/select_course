class TeachersController < ApplicationController


  def index
    @teachers = Teacher.all
    render json: @teachers.to_json(:include => ( :courses))
  end

  def destory
    @teacher = Teacher.find(params[:id])
    @teacher.destroy

    render :json => { :message => "已删除老师与课程信息"}
  end

end
