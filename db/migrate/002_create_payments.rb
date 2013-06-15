migration 2, :create_payments do
  up do
    create_table :payments do
      column :id, Integer, :serial => true
      column :name, String, :length => 255
      column :amount, Integer
      column :pay_date, DateTime
      column :periodicity, Integer
      column :description, String, :length => 255
      column :account_id, Integer
    end
  end

  down do
    drop_table :payments
  end
end
