class RemoveClassFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :class, :string
  end
end
