class AddTotimeToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :totime, :string
  end
end
