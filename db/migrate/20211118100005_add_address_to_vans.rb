class AddAddressToVans < ActiveRecord::Migration[6.0]
  def change
    add_column :vans, :address, :string
  end
end
