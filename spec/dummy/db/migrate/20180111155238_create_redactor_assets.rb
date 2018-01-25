class CreateRedactorAssets < ActiveRecord::Migration
  def up
    create_table :redactor_assets do |t|
      t.integer :donor_id
      t.string  :data_file_name, :null => false
      t.string  :data_content_type
      t.integer :data_file_size

      t.integer :assetable_id
      t.string  :assetable_type, :limit => 30
      t.string  :type, :limit => 30

      # Uncomment it to save images dimensions, if your need it
      t.integer :width
      t.integer :height

      t.timestamps
    end

  end

  def down
    drop_table :redactor_assets
  end
end
