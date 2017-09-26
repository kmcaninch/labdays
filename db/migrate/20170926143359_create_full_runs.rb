class CreateFullRuns < ActiveRecord::Migration[5.1]
  def change
    change_table :full_runs do |t|
      # t.integer :id
      # t.string :application
      # t.string :environment
      # t.string :datetimestamp
      # t.integer :duration
      # t.integer :example_count
      # t.integer :failure_count
      # t.string :created_at
      # t.string :updated_at
    end
  end
end
