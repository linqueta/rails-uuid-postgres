class CreateAuthorUuids < ActiveRecord::Migration[5.2]
  def change
    create_table :author_uuids, id: :uuid do |t|
      t.string :name

      t.timestamps
    end
  end
end
