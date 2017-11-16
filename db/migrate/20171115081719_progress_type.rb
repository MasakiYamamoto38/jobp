class ProgressType < ActiveRecord::Migration[5.1]
  def change
    create_table :progress_types do |t|
#      t.integer :id
      t.string    :name ,:null => false
    end
  end
end
