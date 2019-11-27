class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.references :board_column, null: false, foreign_key: true
      t.string :job_title
      t.string :company
      t.string :company_url
      t.string :company_logo
      t.string :url
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
