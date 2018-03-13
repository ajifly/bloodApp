class CreateInputBloods < ActiveRecord::Migration[5.1]
  def change
    create_table :input_bloods do |t|
      t.string :leukocyte
      t.string :seg

      t.timestamps
    end
  end
end
