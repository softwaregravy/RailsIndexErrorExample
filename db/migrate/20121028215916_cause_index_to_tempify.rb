class CauseIndexToTempify < ActiveRecord::Migration
  def up
    rename_column :some_table, :column1, :column2
  end

  def down
  end
end
