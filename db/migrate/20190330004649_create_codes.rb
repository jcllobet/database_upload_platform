class CreateCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :codes do |t|
      t.string :generator
      t.boolean :allocated

      t.timestamps
    end
  end
end
