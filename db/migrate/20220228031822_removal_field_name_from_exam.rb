class RemovalFieldNameFromExam < ActiveRecord::Migration[6.1]
  def change
    remove_column :exam_dates, :string
  end
end
