class CreatePersonnals < ActiveRecord::Migration[5.2]
  def change
    create_table :personnals do |t|
      t.belongs_to :cv
      t.string :name
      t.string :title
      t.string :telephone
      t.string :siteweb
      t.text :presentation
      t.timestamps
    end
  end
end
