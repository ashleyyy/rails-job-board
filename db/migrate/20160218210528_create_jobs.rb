class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :company
      t.string :location
      t.string :salary
      t.string :hours_per_week
      t.string :duration
      t.text :description
      t.text :qualifications

      t.timestamps null: false
    end
  end
end
