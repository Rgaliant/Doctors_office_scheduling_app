class RemoveDateFromAppointments < ActiveRecord::Migration[5.2]
  def change
    remove_column :appointments, :Date, :string
  end
end
