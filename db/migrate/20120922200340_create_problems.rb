class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.text :description
      t.integer :patient_id

      t.timestamps
    end
  end
end
