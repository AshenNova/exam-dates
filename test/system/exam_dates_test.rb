require "application_system_test_case"

class ExamDatesTest < ApplicationSystemTestCase
  setup do
    @exam_date = exam_dates(:one)
  end

  test "visiting the index" do
    visit exam_dates_url
    assert_selector "h1", text: "Exam Dates"
  end

  test "creating a Exam date" do
    visit exam_dates_url
    click_on "New Exam Date"

    fill_in "Additional information", with: @exam_date.additional_information
    fill_in "Date", with: @exam_date.date
    fill_in "School name", with: @exam_date.school_name
    fill_in "String", with: @exam_date.string
    fill_in "Student name", with: @exam_date.student_name
    fill_in "Subject", with: @exam_date.subject
    click_on "Create Exam date"

    assert_text "Exam date was successfully created"
    click_on "Back"
  end

  test "updating a Exam date" do
    visit exam_dates_url
    click_on "Edit", match: :first

    fill_in "Additional information", with: @exam_date.additional_information
    fill_in "Date", with: @exam_date.date
    fill_in "School name", with: @exam_date.school_name
    fill_in "String", with: @exam_date.string
    fill_in "Student name", with: @exam_date.student_name
    fill_in "Subject", with: @exam_date.subject
    click_on "Update Exam date"

    assert_text "Exam date was successfully updated"
    click_on "Back"
  end

  test "destroying a Exam date" do
    visit exam_dates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exam date was successfully destroyed"
  end
end
