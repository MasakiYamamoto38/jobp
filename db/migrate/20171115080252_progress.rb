class Progress < ActiveRecord::Migration[5.1]
  def change
    create_table :progresses do |t|
#      t.integer   :id
      t.integer   :com_id ,:null => false
      t.integer   :type   ,:null => false
      t.string    :name
      t.integer   :history_num  ,:null => false
      t.boolean   :is_compleate ,:null => false
    end
  end
end
