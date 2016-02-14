class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]
  before_action :set_kid, only: [:index, :new]

  # GET /assignments
  # GET /assignments.json
  def index
    if not @kid.nil?
      @assignments = @kid.assignments
    else
      @assignments = current_user.assignments
    end
  end

  # GET /assignments/1
  # GET /assignments/1.json
  def show
  end

  # GET /assignments/new
  def new
    @assignment = Assignment.new
    @assignment.kid = @kid
  end

  # GET /assignments/1/edit
  def edit
  end

  # POST /assignments
  # POST /assignments.json
  def create
    @assignment = Assignment.new(assignment_params)
    @assignment.user = current_user

    respond_to do |format|
      if @assignment.save
        format.html { redirect_to @assignment, notice: 'Assignment was successfully created.' }
        format.json { render :show, status: :created, location: @assignment }
      else
        format.html { render :new }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignments/1
  # PATCH/PUT /assignments/1.json
  def update
    data = (Hash[%w(sun mon tue wed thu fri sat).map { |k| [k, false]}]).merge(assignment_params)
    respond_to do |format|
      if @assignment.update(data)
        format.html { redirect_to @assignment, notice: 'Assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignment }
      else
        format.html { render :edit }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignments/1
  # DELETE /assignments/1.json
  def destroy
    @assignment.destroy
    respond_to do |format|
      format.html { redirect_to assignments_url, notice: 'Assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end

    def set_kid
      if params.has_key? :kid_id
        @kid = Kid.find(params[:kid_id])
      else
        @kid = nil
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_params
      params.require(:assignment).permit(:kid_id, :user_id, :name, :description, :approval_required, :sort_order, :show, :cash_reward, :point_reward, :frequency, :sun, :mon, :tue, :wed, :thu, :fri, :sat, :start_on, :icon)
    end
end
