class CreateFormations < ActiveRecord::Migration[5.2]
  def change
    create_table :formations do |t|
      t.belongs_to :cv
      t.text :content
      t.timestamps
    end
  end
end
