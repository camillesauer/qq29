class AddColumnAvatars < ActiveRecord::Migration[6.0]
  def change
    add_column :avatars, :img_url, :text
    add_column :avatars, :nom, :string
    add_column :avatars, :prenom, :string
    add_column :avatars, :bio_url, :string
    add_column :avatars, :role, :string
    add_column :avatars, :category_id, :string
  end
end
