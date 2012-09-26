class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description
      t.integer :itemtype_id
      t.time :happened_at
      t.time :noted_at

      t.timestamps
    end
  end
end
