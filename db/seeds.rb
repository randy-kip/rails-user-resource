# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# Clear existing records
puts "Destroying existing records..."
Company.destroy_all
StockPrice.destroy_all

# Seed data
puts "Seeding data..."

# Create some companies
Company.create(name: 'TechCorp', ticker_symbol: 'TC')
Company.create(name: 'FinanceCo', ticker_symbol: 'FC')
Company.create(name: 'HealthCareInc', ticker_symbol: 'HCI')

# Create stock prices for each company
techcorp = Company.find_by(ticker_symbol: 'TC')
financeco = Company.find_by(ticker_symbol: 'FC')
healthcareinc = Company.find_by(ticker_symbol: 'HCI')

# Create stock prices for each company
StockPrice.create(price: 150.75, captured_at: Date.today, company: techcorp)
StockPrice.create(price: 65.20, captured_at: Date.today, company: financeco)
StockPrice.create(price: 120.50, captured_at: Date.today, company: healthcareinc)

puts "Seed data successfully created!"
