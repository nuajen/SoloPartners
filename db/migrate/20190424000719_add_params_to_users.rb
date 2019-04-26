class AddParamsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :age, :integer
    add_column :users, :lenght_of_stay, :integer
    add_column :users, :about_me, :string
    add_column :users, :name, :string
  end
end
