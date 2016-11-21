class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    notes = subject_item_notes.where(subject_item_id: subject_item.id).collect(&:value)
    notes.empty? ? "0.00" : "%.2f" % (notes.inject(:+).to_f/notes.size)
  end

  def birth_date
    birthdate.strftime("%Y-%m_%d") if birthdate
  end
end