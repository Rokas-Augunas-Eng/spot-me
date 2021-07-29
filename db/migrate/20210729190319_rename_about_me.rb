class RenameAboutMe < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :aboutme, :about_me
  end
end
