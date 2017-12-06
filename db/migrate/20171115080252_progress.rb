class Progress < ActiveRecord::Migration[5.1]
  def change
    create_table :progresses do |t|
      t.integer   :company_id ,:null => false
      t.string    :name
      t.boolean   :is_compleate ,:null => false
      t.timestamps
    end
  end
end
