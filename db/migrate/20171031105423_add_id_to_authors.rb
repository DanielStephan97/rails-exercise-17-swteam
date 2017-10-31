class AddIdToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :author_id, :integer
  end
end
