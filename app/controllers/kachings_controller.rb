class KachingsController < ApplicationController
  before_action :set_kaching, only: [:show, :edit, :update, :destroy]

  # GET /kachings
  # GET /kachings.json
  def index
    @kachings = Kaching.all
  end

  # GET /kachings/1
  # GET /kachings/1.json
  def show
  end

  # GET /kachings/new
  def new
    @kaching = Kaching.new
  end

  # GET /kachings/1/edit
  def edit
  end

  # POST /kachings
  # POST /kachings.json
  def create
    @kaching = Kaching.new(kaching_params)
    @kaching.user = current_user

    respond_to do |format|
      if @kaching.save
        format.html { redirect_to @kaching, notice: 'Kaching was successfully created.' }
        format.json { render :show, status: :created, location: @kaching }
      else
        format.html { render :new }
        format.json { render json: @kaching.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kachings/1
  # PATCH/PUT /kachings/1.json
  def update
    respond_to do |format|
      if @kaching.update(kaching_params)
        format.html { redirect_to @kaching, notice: 'Kaching was successfully updated.' }
        format.json { render :show, status: :ok, location: @kaching }
      else
        format.html { render :edit }
        format.json { render json: @kaching.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kachings/1
  # DELETE /kachings/1.json
  def destroy
    @kaching.destroy
    respond_to do |format|
      format.html { redirect_to kachings_url, notice: 'Kaching was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kaching
      @kaching = Kaching.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kaching_params
      params.require(:kaching).permit(:assignment_id, :kid_id, :user_id, :completed_on, :approved, :cash_reward, :point_reward)
    end
end
