# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140320035240) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.string   "account_no"
  end

  create_table "employees", force: true do |t|
    t.string   "first_name", null: false
    t.string   "last_name",  null: false
    t.string   "email",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", force: true do |t|
    t.integer  "invoice_no",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "amount_due"
    t.string   "sales_table_id"
  end

  create_table "product_sales", force: true do |t|
    t.integer  "product_id",    null: false
    t.integer  "sold_price",    null: false
    t.integer  "quantity",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sale_table_id"
  end

  create_table "products", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", force: true do |t|
    t.string   "employee"
    t.string   "customer_and_account_no"
    t.string   "product_name"
    t.date     "sale_date"
    t.decimal  "sale_amount"
    t.integer  "units_sold"
    t.string   "invoice_no"
    t.string   "invoice_frequency"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales_tables", force: true do |t|
    t.date     "sale_date",         null: false
    t.decimal  "sale_amount",       null: false
    t.integer  "units_sold",        null: false
    t.string   "invoice_frequency", null: false
    t.integer  "employee_id",       null: false
    t.integer  "customer_id",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
