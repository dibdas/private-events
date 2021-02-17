class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.string :description
      t.datetime :date

      t.timestamps
    end
  end
end
