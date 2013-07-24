class Notes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title, :content, :author
      
      t.timestamps
    end
  end
end
