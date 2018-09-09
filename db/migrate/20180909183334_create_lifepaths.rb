class CreateLifepaths < ActiveRecord::Migration[5.1]
  def change
    create_table :lifepaths do |t|
      t.decimal :path_number
      t.text :body

      t.timestamps
    end
  end
end
