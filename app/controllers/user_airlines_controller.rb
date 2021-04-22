class UserAirlinesController < ApplicationController
  before_action :set_user_airline, only: %i[ show edit update destroy ]

  # GET /user_airlines or /user_airlines.json
  def index
    @user_airlines = UserAirline.all
  end

  # GET /user_airlines/1 or /user_airlines/1.json
  def show
  end

  # GET /user_airlines/new
  def new
    @user_airline = UserAirline.new
  end

  # GET /user_airlines/1/edit
  def edit
  end

  # POST /user_airlines or /user_airlines.json
  def create
    @user_airline = UserAirline.new(user_airline_params)

    respond_to do |format|
      if @user_airline.save
        format.html { redirect_to @user_airline, notice: "User airline was successfully created." }
        format.json { render :show, status: :created, location: @user_airline }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_airline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_airlines/1 or /user_airlines/1.json
  def update
    respond_to do |format|
      if @user_airline.update(user_airline_params)
        format.html { redirect_to @user_airline, notice: "User airline was successfully updated." }
        format.json { render :show, status: :ok, location: @user_airline }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_airline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_airlines/1 or /user_airlines/1.json
  def destroy
    @user_airline.destroy
    respond_to do |format|
      format.html { redirect_to user_airlines_url, notice: "User airline was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_airline
      @user_airline = UserAirline.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_airline_params
      params.fetch(:user_airline, {})
    end
end
