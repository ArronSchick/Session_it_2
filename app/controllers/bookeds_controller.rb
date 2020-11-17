class BookedsController < ApplicationController
  before_action :set_booked, only: [:show, :edit, :update, :destroy]

  # GET /bookeds
  # GET /bookeds.json
  def index
    @bookeds = Booked.all
  end

  # GET /bookeds/1
  # GET /bookeds/1.json
  def show
  end

  # GET /bookeds/new
  def new
    @booked = Booked.new
  end

  # GET /bookeds/1/edit
  def edit
  end

  # POST /bookeds
  # POST /bookeds.json
  def create
    @booked = Booked.new(booked_params)

    respond_to do |format|
      if @booked.save
        format.html { redirect_to @booked, notice: 'Booked was successfully created.' }
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
        format.html { redirect_to @booked, notice: 'Booked was successfully updated.' }
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
      format.html { redirect_to bookeds_url, notice: 'Booked was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booked
      @booked = Booked.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booked_params
      params.fetch(:booked, {})
    end
end