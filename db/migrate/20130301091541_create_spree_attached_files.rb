class CreateSpreeAttachedFiles < ActiveRecord::Migration
  def up
    create_table :spree_attached_files do |t|
      t.string :name
      t.string :attachment_file_name
      t.integer :attachment_file_size
      t.string :attachment_content_type
      t.datetime :attachment_updated_at

      t.timestamps
    end
  end

  def down
    drop_table :spree_attached_files
  end
end
