class DeleteProblems < ActiveRecord::Migration
  def up
    drop_table :problems
  end

  def down
  end
end
