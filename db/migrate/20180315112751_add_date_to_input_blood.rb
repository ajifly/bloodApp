class AddDateToInputBlood < ActiveRecord::Migration[5.1]
  def change
    add_column :input_bloods, :date, :date
  end
end
