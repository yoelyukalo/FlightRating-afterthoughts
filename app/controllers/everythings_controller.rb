class EverythingsController < ApplicationController
  before_action :set_everything, only: %i[ show edit update destroy ]

  # GET /everythings or /everythings.json
  def index
    @everythings = Everything.all
  end

  # GET /everythings/1 or /everythings/1.json
  def show
  end

  # GET /everythings/new
  def new
    @everything = Everything.new
  end

  # GET /everythings/1/edit
  def edit
  end

  # POST /everythings or /everythings.json
  def create
    @everything = Everything.new(everything_params)

    respond_to do |format|
      if @everything.save
        format.html { redirect_to @everything, notice: "Everything was successfully created." }
        format.json { render :show, status: :created, location: @everything }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @everything.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /everythings/1 or /everythings/1.json
  def update
    respond_to do |format|
      if @everything.update(everything_params)
        format.html { redirect_to @everything, notice: "Everything was successfully updated." }
        format.json { render :show, status: :ok, location: @everything }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @everything.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /everythings/1 or /everythings/1.json
  def destroy
    @everything.destroy
    respond_to do |format|
      format.html { redirect_to everythings_url, notice: "Everything was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_everything
      @everything = Everything.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def everything_params
      params.fetch(:everything, {})
    end
end
