class ExamDatesController < ApplicationController
  require 'date'
  Time.zone = 'Singapore'
  before_action :set_exam_date, only: %i[ show edit update destroy ]


  # GET /exam_dates or /exam_dates.json
  def index
    @date_today = Date.current
    @exam_dates = ExamDate.order(date: :asc)

    if params[:sort] == "days_to"
     @exam_dates = ExamDate.all.sort_by{|exam_date| (exam_date.date - @date_today).to_i }
    end

    if params[:sort] == "school_name"
      @exam_dates = ExamDate.order(school_name: :asc)     
    end
    
  end

  # GET /exam_dates/1 or /exam_dates/1.json
  def show
  end

  # GET /exam_dates/new
  def new
    if params[:clone_id]
      @exam_date = ExamDate.new
      clone_exam = ExamDate.find(params[:clone_id])
      @exam_date.student_name = clone_exam.student_name
      @exam_date.school_name = clone_exam.school_name
      
    else
      @exam_date = ExamDate.new
    end
  end

  # GET /exam_dates/1/edit
  def edit
  end

  # POST /exam_dates or /exam_dates.json
  def create
    @exam_date = ExamDate.new(exam_date_params)

    respond_to do |format|
      if @exam_date.save
        format.html { redirect_to exam_date_url(@exam_date), notice: "Exam date was successfully created." }
        format.json { render :show, status: :created, location: @exam_date }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @exam_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exam_dates/1 or /exam_dates/1.json
  def update
    respond_to do |format|
      if @exam_date.update(exam_date_params)
        format.html { redirect_to exam_date_url(@exam_date), notice: "Exam date was successfully updated." }
        format.json { render :show, status: :ok, location: @exam_date }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @exam_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exam_dates/1 or /exam_dates/1.json
  def destroy
    @exam_date.destroy

    respond_to do |format|
      format.html { redirect_to exam_dates_url, notice: "Exam date was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def search
    @date_today = Date.current
    @exam_dates = ExamDate.where("student_name LIKE ?", "%" + params[:q] + "%")
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exam_date
      @exam_date = ExamDate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exam_date_params
      params.require(:exam_date).permit(:student_name, :school_name, :subject, :date, :additional_information, images:[])
    end
end
