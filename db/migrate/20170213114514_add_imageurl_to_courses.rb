class AddImageurlToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :imageurl, :string
  end
end
