class AddAddressToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :address, null: false, foreign_key: true
  end
end
