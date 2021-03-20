# frozen_string_literal: true

require_relative "spree_csv_import/version"
require 'csv'
module SpreeCsvImport
  class ProductsImport
    def import(products_csv_file)
      csv_text = File.read(products_csv_file)
      csv = CSV.parse(csv_text, :headers => true)
      csv.each do |row|
        Spree::Product.create!(row) unless Spree::Product.find_by(id: row[0])
      end
    end
  end

  class OrdersImport
    def import(orders_csv_file)
      csv_text = File.read(orders_csv_file)
      csv = CSV.parse(csv_text, :headers => true)
      csv.each do |row|
        Spree::Order.create!(row) unless Spree::Order.find_by(id: row[0])
      end
    end
  end

  class CustomersImport
    def import(customers_csv_file)
      csv_text = File.read(customers_csv_file)
      csv = CSV.parse(csv_text, :headers => true)
      csv.each do |row|
        Spree::Customer.create!(row) unless Spree::Customer.find_by(id: row[0])
      end
    end
  end
end
