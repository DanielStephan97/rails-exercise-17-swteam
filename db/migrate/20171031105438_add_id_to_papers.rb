class AddIdToPapers < ActiveRecord::Migration
  def change
    add_column :papers, :paper_id, :integer
  end
end
