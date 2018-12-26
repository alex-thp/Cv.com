class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.belongs_to :cv
      t.text :content
      t.timestamps
    end
  end
end
