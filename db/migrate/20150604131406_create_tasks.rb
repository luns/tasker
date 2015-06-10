class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :subject
      t.text :description
      t.date :StartDate
      t.date :EndDate
      t.boolean :complete

      t.timestamps
    end
  end
end
