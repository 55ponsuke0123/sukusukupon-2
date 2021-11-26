class AddPresenceIdToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :presence_id, :integer
  end
end
