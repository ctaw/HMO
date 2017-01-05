class CreateTables < ActiveRecord::Migration

  def change
    create_table :hmo_providers do |t|
      t.string :name
      t.text :description
      t.string :contact_number
      t.string :link_url
      t.string :address
      t.datetime :date_enrolled
    end

    create_table :hmo_types do |t|
      t.string :name
      t.text :description
      t.decimal :amount
      t.decimal :deduction_per_month
    end

    create_table :clients do |t|
      t.string :name
      t.integer :shift_id
    end

    create_table :employees do |t|
      t.string :employee_code
      t.integer :client_id
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.integer :hmo_type_id
      t.datetime :birth_date
      t.datetime :date_enrolled
      t.integer :no_of_dependent
      t.integer :gender
      t.integer :civil_status
      t.integer :employment_type
      t.integer :status
    end

    create_table :dependents do |t|
      t.integer :employee_id
      t.string :employee_code
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.integer :hmo_type_id
      t.datetime :birth_date
      t.datetime :date_enrolled
      t.integer :gender
      t.integer :civil_status
      t.string :relationship
    end

  end
end
