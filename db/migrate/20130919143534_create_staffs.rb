class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :sex
      t.string :role
      t.date :dob
      t.string :salary
      t.references :department

      t.timestamps
    end
    add_index :staffs, :department_id
  end
end
