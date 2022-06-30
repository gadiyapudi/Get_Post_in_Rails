class CreateActions < ActiveRecord::Migration[6.1]
  def change
    create_table :actions do |t|
      t.string :VendorName
      t.integer :InvoiceNumber
      t.text :PurchaseOrder
      t.date :InvoiceDate
      t.date :PayementDueDate
      t.float :Amount
      t.float :Tax
      t.float :TotalAmount

      t.timestamps
    end
  end
end
