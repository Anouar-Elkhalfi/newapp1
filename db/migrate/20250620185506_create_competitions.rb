class CreateCompetitions < ActiveRecord::Migration[7.1]
  def change
    create_table :competitions do |t|
      t.string :name
      t.string :kind
      t.references :season, null: false, foreign_key: true

      t.timestamps
    end
  end
end
