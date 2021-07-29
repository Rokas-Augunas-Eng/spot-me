class CreateGyms < ActiveRecord::Migration[6.0]
  def change
    create_table :gyms do |t|
      t.text :equipment
      t.string :location
      t.string :availability
      t.string :type_of_gym
      t.integer :cost
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
