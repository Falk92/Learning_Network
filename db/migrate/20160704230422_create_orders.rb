class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :course_id
      t.float :total
    end
    add_index :orders, :user_id
    add_index :orders, :course_id
  end
end
