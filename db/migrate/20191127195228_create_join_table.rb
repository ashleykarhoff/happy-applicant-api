class CreateJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :columns do |t|
      t.index :user_id
      t.index :column_id
      t.string :job_title
      t.string :company
      t.string :company_url
      t.string :company_logo
      t.string :location
      t.string :description
    end
  end
end
