class CreateExamDates < ActiveRecord::Migration[6.1]
  def change
    create_table :exam_dates do |t|
      t.string :student_name
      t.string :school_name
      t.string :subject
      t.date :date
      t.string :additional_information
      t.string :string

      t.timestamps
    end
  end
end
