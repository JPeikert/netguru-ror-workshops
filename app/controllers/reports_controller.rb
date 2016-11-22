class ReportsController < ApplicationController
  expose(:subject_items) { SubjectItem.includes(:teacher, :students) }
  expose(:tuitions) { Tuition.includes(:students, :payments) }
end
