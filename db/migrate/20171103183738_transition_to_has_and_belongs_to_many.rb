class TransitionToHasAndBelongsToMany < ActiveRecord::Migration
	def change
		remove_column :authors, :papers_id
		remove_column :papers, :authors_id
		create_join_table :Authors, :Papers do |t|
			t.index [:author_id, :paper_id]
			t.index [:paper_id, :author_id]
		end
	end
end
