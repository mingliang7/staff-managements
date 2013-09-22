class AddAddressToStaff < ActiveRecord::Migration
  def change
    add_column :staffs, :address, :text
  end
end
