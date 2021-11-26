class RemoveAbsenceIdFromBooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :absence_id, :integer
  end
end
