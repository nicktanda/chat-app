class CreateChannels < ActiveRecord::Migration[7.0]
  def change
    create_table :channels, id: :uuid do |t|
      t.string :name, null: false, limit: 50

      t.timestamps
      t.index :created_at
    end
  end
end
