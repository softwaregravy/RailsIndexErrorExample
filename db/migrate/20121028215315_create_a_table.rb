class CreateATable < ActiveRecord::Migration
  def up
    create_table :some_table do |t|
      t.string :column1
    end 
    add_index :some_table, :column1, :name => "this_is_a_really_long_name_which_is_just_an_example_little_longe"
  end

  def down
    drop_table :some_table
  end
end
