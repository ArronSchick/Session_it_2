class BookedsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_booked, only: [:show, :edit, :update, :destroy]
  before_action :booked_params, only: [ :new, :create ]
  before_action :set_lesson, only: [ :new, :create ]
  # GET /bookeds
  # GET /bookeds.json
  def index
  #************************************************************
  # All bookings in the database
  #************************************************************
    @bookeds = Booked.all
  end

  # GET /bookeds/1
  # GET /bookeds/1.json
  def show
  end

  # GET /bookeds/new
  def new
    @booked = Booked.new(booked_params)
    
  end

  # GET /bookeds/1/edit
  def edit
  end

  # POST /bookeds
  # POST /bookeds.json
  def create
  #************************************************************
  # looking for the current users profile id
  #************************************************************
    @booked = Booked.new(booked_params)
    @booked.profile_id = current_user.profile.id
    @booked.lesson_id = @lesson.id
    
    @booked.save!

    respond_to do |format|
      if @booked.save
        format.html { redirect_to profiles_path, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booked }
      else
        format.html { render :new }
        format.json { render json: @booked.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookeds/1
  # PATCH/PUT /bookeds/1.json
  def update
    respond_to do |format|
      if @booked.update(booked_params)
        format.html { redirect_to @booked, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booked }
      else
        format.html { render :edit }
        format.json { render json: @booked.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookeds/1
  # DELETE /bookeds/1.json
  def destroy
    @booked.destroy
    respond_to do |format|
      format.html { redirect_to bookeds_url, notice: 'Booking was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booked
      @booked = Booked.find(params[:id])
    end

    def set_lesson
        @lesson = Lesson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booked_params
      params.fetch(:booked, {}).permit(:lesson_id)
    end
end
