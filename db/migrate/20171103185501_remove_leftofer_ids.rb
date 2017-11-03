class RemoveLeftoferIds < ActiveRecord::Migration
  def change
	remove_column :authors, :papers_id
	remove_column :papers, :authors_id
  end
end
