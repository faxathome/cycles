class ChangePathNumberToInteger < ActiveRecord::Migration[5.1]
  def change
    change_column :lifepaths, :path_number, :integer
  end
end
