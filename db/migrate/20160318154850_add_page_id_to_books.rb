class AddPageIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :page_id, :integer
  end
end
