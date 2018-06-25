class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.date :start_time
      t.date :end_time
      t.boolean :all_day

      t.timestamps
    end
  end
end
