class CreateErrors < ActiveRecord::Migration[5.0]
  def change
    create_table :errors do |t|
      t.string :name
      t.string :params
      t.string :stack_trace
    end
  end
end
