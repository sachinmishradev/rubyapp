class CreateAutos < ActiveRecord::Migration[5.2]
  def change
    create_table :autos do |t|
      t.integer :auto_no
      t.string :driver_name
      t.string :driver_mobile_no
      t.string :driver_address
      t.integer :daily_pay
      t.integer :balance

      t.timestamps
    end
  end
end
