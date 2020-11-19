class ClassroomsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_classroom, only: [:show, :edit, :update, :destroy]

  # GET /classrooms
  # GET /classrooms.json
  
  #************************************************************
  # Queries for all classrooms in the database and for the 
  # classrooms belonging to the current user
  #************************************************************
  def index
  
    @classrooms = Classroom.all
    @user = current_user
    @profile_exists = current_user.profile
    @classroom_view = current_user.profile.classroom
    @classroom_id = current_user.profile.classroom
    @lessons = Lesson.all
  end

  # GET /classrooms/1
  # GET /classrooms/1.json
  def show
  end

  # GET /classrooms/new
  def new
    @classroom = Classroom.new
  end

  # GET /classrooms/1/edit
  def edit
    @classroom_view = current_user.profile.classroom
  end

  # POST /classrooms
  # POST /classrooms.json
  def create
    @classroom = Classroom.new(classroom_params)
  #************************************************************
  # finding the profile id of the current user
  #************************************************************
    @classroom.profile_id = current_user.profile.id
    

    respond_to do |format|
      if @classroom.save
        format.html { redirect_to classrooms_path, notice: 'Classroom was successfully created.' }
        format.json { render :show, status: :created, location: @classroom }
      else
        format.html { render :new }
        format.json { render json: @classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classrooms/1
  # PATCH/PUT /classrooms/1.json
  def update
    respond_to do |format|
      if @classroom.update(classroom_params)
        format.html { redirect_to classrooms_path, notice: 'Classroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @classroom }
      else
        format.html { render :edit }
        format.json { render json: @classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classrooms/1
  # DELETE /classrooms/1.json
  def destroy
      @classroom.destroy
      respond_to do |format|
        format.html { redirect_to classrooms_path, notice: 'Classroom was successfully Deleted.' }
        format.json { head :no_content }
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classroom
      @classroom = Classroom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def classroom_params
      params.require(:classroom).permit(:description, :picture, :banner_image)
    end
end
