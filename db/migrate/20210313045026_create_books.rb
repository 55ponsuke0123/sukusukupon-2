class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
    t.integer :attendance_id
    t.integer :absence_id
    t.references :user,           null: false, foreign_key: true 
      t.timestamps
    end
  end
end
