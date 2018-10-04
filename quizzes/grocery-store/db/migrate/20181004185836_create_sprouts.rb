class CreateSprouts < ActiveRecord::Migration[5.2]
  def change
    create_table :sprouts do |t|
      t.string :store
      t.string :department
      t.string :employee

      t.timestamps
    end
  end
end
