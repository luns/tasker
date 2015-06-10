class CreateConfigFiles < ActiveRecord::Migration
  def change
    create_table :config_files do |t|
      t.string 		:config
      t.string 		:name
      t.string :object_type
      t.string 		:full_name
      t.datetime 	:date
      t.text 		:text
      t.timestamps
    end
  end
end
