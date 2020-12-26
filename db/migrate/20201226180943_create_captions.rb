class CreateCaptions < ActiveRecord::Migration[6.0]
  def change
    create_table :captions do |t|
      t.string :url
      t.string :video_id
      t.string :timedtext_code
      t.text :cctext

      t.timestamps
    end
  end
end
