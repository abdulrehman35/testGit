require_relative "20210322110644_create_distributor"
class ExampleRevert < ActiveRecord::Migration[6.1]
  def change
  	revert CreateDistributor

  	create_table(:apples) do |t|
      t.string :variety
    end
  end
end
