class AddFacultyToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :faculty, :string
  end
end
