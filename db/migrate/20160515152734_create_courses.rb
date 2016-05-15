class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :time
      t.string :place
      t.text :description
      t.string :image_url

      t.timestamps null: false
    end
  end
end
