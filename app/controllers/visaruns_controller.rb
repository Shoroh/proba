class VisarunsController < ApplicationController
  before_action :set_visarun, only: [:show, :edit, :update, :destroy]

  # GET /visaruns
  # GET /visaruns.json
  def index
    @visaruns = Visarun.all
  end

  # GET /visaruns/1
  # GET /visaruns/1.json
  def show
  end

  # GET /visaruns/new
  def new
    @visarun = Visarun.new
  end

  # GET /visaruns/1/edit
  def edit
  end

  # POST /visaruns
  # POST /visaruns.json
  def create
    @visarun = Visarun.new(visarun_params)

    respond_to do |format|
      if @visarun.save
        format.html { redirect_to @visarun, notice: 'Visarun was successfully created.' }
        format.json { render :show, status: :created, location: @visarun }
      else
        format.html { render :new }
        format.json { render json: @visarun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visaruns/1
  # PATCH/PUT /visaruns/1.json
  def update
    respond_to do |format|
      if @visarun.update(visarun_params)
        format.html { redirect_to @visarun, notice: 'Visarun was successfully updated.' }
        format.json { render :show, status: :ok, location: @visarun }
      else
        format.html { render :edit }
        format.json { render json: @visarun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visaruns/1
  # DELETE /visaruns/1.json
  def destroy
    @visarun.destroy
    respond_to do |format|
      format.html { redirect_to visaruns_url, notice: 'Visarun was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visarun
      @visarun = Visarun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visarun_params
      params[:visarun]
    end
end
