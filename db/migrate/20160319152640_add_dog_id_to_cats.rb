class AddDogIdToCats < ActiveRecord::Migration
  def change
    add_column :cats, :dog_id, :integer
  end
end
