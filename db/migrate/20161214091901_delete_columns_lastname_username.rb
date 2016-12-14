class DeleteColumnsLastnameUsername < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :lastname
    remove_column :users, :username
  end
end
