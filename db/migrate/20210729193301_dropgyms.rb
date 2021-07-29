class Dropgyms < ActiveRecord::Migration[6.0]
  def change
    drop_table :gyms
  end
end
