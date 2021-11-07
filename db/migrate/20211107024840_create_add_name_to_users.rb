class CreateAddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :add_name_to_users do |t|
      add_column :users, :name, :string
      add_column :users, :admin, :boolean
    end
  end
end
