class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :avatar, :string
    add_column :users, :pseudo, :string
  end
end
