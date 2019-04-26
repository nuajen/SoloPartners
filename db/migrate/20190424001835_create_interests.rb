class CreateInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :interests do |t|
      t.references :subcategory, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
