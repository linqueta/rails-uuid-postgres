class CreateAuthorSequencialIds < ActiveRecord::Migration[5.2]
  def change
    create_table :author_sequencial_ids do |t|
      t.string :name

      t.timestamps
    end
  end
end
