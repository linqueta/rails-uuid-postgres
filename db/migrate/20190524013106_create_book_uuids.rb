class CreateBookUuids < ActiveRecord::Migration[5.2]
  def change
    create_table :book_uuids, id: :uuid do |t|
      t.string :title
      t.references :author_uuid, foreign_key: true, index: true, type: :uuid

      t.timestamps
    end
  end
end
