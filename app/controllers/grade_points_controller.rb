class GradePointsController < ApplicationController
  before_action :set_grade_point, only: [:show, :edit, :update, :destroy]

  # GET /grade_points
  # GET /grade_points.json
  def index
    @grade_points = GradePoint.all
  end

  # GET /grade_points/1
  # GET /grade_points/1.json
  def show
  end

  # GET /grade_points/new
  def new
    @grade_point = GradePoint.new
  end

  # GET /grade_points/1/edit
  def edit
  end

  # POST /grade_points
  # POST /grade_points.json
  def create
    @grade_point = GradePoint.new(grade_point_params)

    respond_to do |format|
      if @grade_point.save
        format.html { redirect_to @grade_point, notice: 'Grade point was successfully created.' }
        format.json { render :show, status: :created, location: @grade_point }
      else
        format.html { render :new }
        format.json { render json: @grade_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grade_points/1
  # PATCH/PUT /grade_points/1.json
  def update
    respond_to do |format|
      if @grade_point.update(grade_point_params)
        format.html { redirect_to @grade_point, notice: 'Grade point was successfully updated.' }
        format.json { render :show, status: :ok, location: @grade_point }
      else
        format.html { render :edit }
        format.json { render json: @grade_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grade_points/1
  # DELETE /grade_points/1.json
  def destroy
    @grade_point.destroy
    respond_to do |format|
      format.html { redirect_to grade_points_url, notice: 'Grade point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade_point
      @grade_point = GradePoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grade_point_params
      params[:grade_point][:user_id] = current_user.id
      params.require(:grade_point).permit(:title, :content, :user_id)
    end
end
