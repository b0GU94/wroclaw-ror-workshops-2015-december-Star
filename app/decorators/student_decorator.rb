class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

	def avg_notes(subject_item)
	unless subject_item_notes.where(student_id: id).where(subject_item_id: subject_item.id).present?
		'0.00'
	else
		sprintf('%.2f', subject_item_notes.where(student_id: id).where(subject_item_id: subject_item.id).average(:value).round(2)).to_s
	end
end
end
