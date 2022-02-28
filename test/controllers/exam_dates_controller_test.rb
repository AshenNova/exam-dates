require "test_helper"

class ExamDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exam_date = exam_dates(:one)
  end

  test "should get index" do
    get exam_dates_url
    assert_response :success
  end

  test "should get new" do
    get new_exam_date_url
    assert_response :success
  end

  test "should create exam_date" do
    assert_difference('ExamDate.count') do
      post exam_dates_url, params: { exam_date: { additional_information: @exam_date.additional_information, date: @exam_date.date, school_name: @exam_date.school_name, string: @exam_date.string, student_name: @exam_date.student_name, subject: @exam_date.subject } }
    end

    assert_redirected_to exam_date_url(ExamDate.last)
  end

  test "should show exam_date" do
    get exam_date_url(@exam_date)
    assert_response :success
  end

  test "should get edit" do
    get edit_exam_date_url(@exam_date)
    assert_response :success
  end

  test "should update exam_date" do
    patch exam_date_url(@exam_date), params: { exam_date: { additional_information: @exam_date.additional_information, date: @exam_date.date, school_name: @exam_date.school_name, string: @exam_date.string, student_name: @exam_date.student_name, subject: @exam_date.subject } }
    assert_redirected_to exam_date_url(@exam_date)
  end

  test "should destroy exam_date" do
    assert_difference('ExamDate.count', -1) do
      delete exam_date_url(@exam_date)
    end

    assert_redirected_to exam_dates_url
  end
end
