class AddPlaceToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :place, foreign_key: true
  end
end
