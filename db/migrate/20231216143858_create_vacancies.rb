class CreateVacancies < ActiveRecord::Migration[7.0]
  def change
    create_table :vacancies do |t|
      t.string :position
      t.string :location
      t.string :description
      t.decimal :latitude
      t.decimal :longitude
      t.decimal :salary
      t.string :company_logo
      t.string :company
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
