class AddPercentCompleteToCollege < ActiveRecord::Migration
  def change
    add_column :colleges, :percent_complete, :float
  end
end
