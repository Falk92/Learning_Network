class AddAuthorToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :author, :string
  end
end
