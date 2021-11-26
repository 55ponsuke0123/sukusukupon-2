class RemoveAttendanceIdFromBooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :attendance_id, :integer
  end
end
