class AddPatientIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :patient_id, :integer
  end
end
