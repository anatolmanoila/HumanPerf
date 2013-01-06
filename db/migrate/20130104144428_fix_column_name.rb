class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :programs, :type, :of_type
  end
end
