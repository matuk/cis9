class ChangeItems < ActiveRecord::Migration
  def up
    change_table :items do |t|
      t.remove :happened_at, :noted_at, :description
      t.text :description
      t.datetime :occured_at
      t.datetime :recorded_at
    end
  end

  def down
  end
end
