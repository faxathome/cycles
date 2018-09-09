class LifepathsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_lifepath, only: [:show, :edit, :update, :destroy]

  # GET /lifepaths
  # GET /lifepaths.json
  def index
    @lifepaths = Lifepath.all
  end

  # GET /lifepaths/1
  # GET /lifepaths/1.json
  def show
  end

  # GET /lifepaths/new
  def new
    @lifepath = Lifepath.new
  end

  # GET /lifepaths/1/edit
  def edit
  end

  # POST /lifepaths
  # POST /lifepaths.json
  def create
    @lifepath = Lifepath.new(lifepath_params)

    respond_to do |format|
      if @lifepath.save
        format.html { redirect_to @lifepath, notice: 'Lifepath was successfully created.' }
        format.json { render :show, status: :created, location: @lifepath }
      else
        format.html { render :new }
        format.json { render json: @lifepath.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lifepaths/1
  # PATCH/PUT /lifepaths/1.json
  def update
    respond_to do |format|
      if @lifepath.update(lifepath_params)
        format.html { redirect_to @lifepath, notice: 'Lifepath was successfully updated.' }
        format.json { render :show, status: :ok, location: @lifepath }
      else
        format.html { render :edit }
        format.json { render json: @lifepath.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lifepaths/1
  # DELETE /lifepaths/1.json
  def destroy
    @lifepath.destroy
    respond_to do |format|
      format.html { redirect_to lifepaths_url, notice: 'Lifepath was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lifepath
      @lifepath = Lifepath.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lifepath_params
      params.require(:lifepath).permit(:path_number, :body)
    end
end
