class ExamDate < ApplicationRecord
        has_many_attached :images
        validates :student_name, presence: true
        validates :school_name, presence: true
        validates :subject, presence: true
        validates :date, presence: true
end
