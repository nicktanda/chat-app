class CreateUserChannels < ActiveRecord::Migration[7.0]
  def change
    create_table :user_channels, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :channel, null: false, foreign_key: true, type: :uuid

      t.index [:user_id, :channel_id], unique: true
    end
  end
end
