class CoursesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /courses
  # GET /courses.json


  def index
    if params[:q]
      search_term = params[:q]
      @courses = Course.where("title LIKE ?", "%#{search_term}%")
    else
      @courses = Course.all
    end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @comments = @course.comments.order("created_at DESC")
  end

  # GET /courses/new
  def new
    @course = Course.new
    @course.author ||= current_user.email #default value for course author
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Veranstaltung wurde erfolgreich erstellt.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Veranstaltung wurde erfolgreich bearbeitet.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Veranstaltung wurde erfolgreich gelöscht.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:title, :time, :place, :description, :imageurl, :fromtime, :totime, :material, :author)
    end


end
