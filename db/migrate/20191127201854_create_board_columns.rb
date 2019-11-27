class CreateBoardColumns < ActiveRecord::Migration[6.0]
  def change
    create_table :board_columns do |t|
      t.references :applicant, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
