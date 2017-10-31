class ChangeIdsToId < ActiveRecord::Migration
  def change
	rename_column :authors, :papers_id, :paper_id
	rename_column :papers, :authors_id, :author_id
  end
end
