class AddFromToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :fromtime, :string
  end
end
