class CreateDistributor < ActiveRecord::Migration[6.1]
  def up
    create_table :distributors do |t|
      t.string :zipcode

      t.timestamps
    end

    # add a CHECK constraint
    # execute <<-SQL
    #   ALTER TABLE distributors
    #     ADD CONSTRAINT zipchk
    #     CHECK (char_length(zipcode) = 5);
    # SQL

    add_column :products, :home_page_url, :string
    rename_column :products, :name, :p_name
  end

  def down
    rename_column :products, :p_name, :name
    remove_column :products, :home_page_url

    # execute <<-SQL
    #   ALTER TABLE distributors
    #     DROP CONSTRAINT zipchk
    # SQL

    drop_table :distributors
  end
end
