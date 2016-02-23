# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.all.map &:destroy
Company.all.map &:destroy

super_corp = Company.create!(name: 'SuperCorp', zip_code: '90210')
CustomerTransaction.create!({
  amount: 12.21,
  transaction_time: DateTime.now,
  paid: true,
  refunded: false,
  customer_id: super_corp.id,
  customer_type: super_corp.class.to_s
})
CustomerTransaction.create!({
  amount: 1.00,
  transaction_time: DateTime.now,
  paid: true,
  refunded: false,
  customer_id: super_corp.id,
  customer_type: super_corp.class.to_s
})
CustomerTransaction.create!({
  amount: 12.7,
  transaction_time: DateTime.now,
  paid: true,
  refunded: false,
  customer_id: super_corp.id,
  customer_type: super_corp.class.to_s
})
CustomerTransaction.create!({
  amount: 0.08,
  transaction_time: DateTime.now,
  paid: true,
  refunded: false,
  customer_id: super_corp.id,
  customer_type: super_corp.class.to_s
})
CustomerTransaction.create!({
  amount: 66.66,
  transaction_time: DateTime.now,
  paid: true,
  refunded: false,
  customer_id: super_corp.id,
  customer_type: super_corp.class.to_s
})

jumbo_mart = Company.create!({name: 'JumboMart', zip_code: '10012'})
CustomerTransaction.create!({
  amount: 99.99,
  transaction_time: DateTime.now,
  paid: true,
  refunded: false,
  customer_id: jumbo_mart.id,
  customer_type: jumbo_mart.class.to_s
})
CustomerTransaction.create!({
  amount: 99.99,
  transaction_time: DateTime.now,
  paid: true,
  refunded: false,
  customer_id: jumbo_mart.id,
  customer_type: jumbo_mart.class.to_s
})
CustomerTransaction.create!({
  amount: 99.99,
  transaction_time: DateTime.now,
  paid: true,
  refunded: false,
  customer_id: jumbo_mart.id,
  customer_type: jumbo_mart.class.to_s
})
CustomerTransaction.create!({
  amount: 99.99,
  transaction_time: DateTime.now,
  paid: true,
  refunded: true,
  customer_id: jumbo_mart.id,
  customer_type: jumbo_mart.class.to_s
})
CustomerTransaction.create!({
  amount: 99.99,
  transaction_time: DateTime.now,
  paid: false,
  refunded: false,
  customer_id: jumbo_mart.id,
  customer_type: jumbo_mart.class.to_s
})


ringo = best_beatle = User.create!(first_name: 'Ringo', last_name: 'Starr')
CustomerTransaction.create!({
  amount: 99.99,
  transaction_time: DateTime.now,
  paid: true,
  refunded: false,
  customer_id: ringo.id,
  customer_type: ringo.class.to_s
})
john = User.create!(first_name: 'John', last_name: 'Lennon')
CustomerTransaction.create!({
  amount: 99.99,
  transaction_time: DateTime.now,
  paid: true,
  refunded: false,
  customer_id: john.id,
  customer_type: john.class.to_s
})

george = User.create!(first_name: 'George', last_name: 'Harrison')
CustomerTransaction.create!({
  amount: 99.99,
  transaction_time: DateTime.now,
  paid: true,
  refunded: false,
  customer_id: george.id,
  customer_type: george.class.to_s
})

paul = User.create!(first_name: 'Paul', last_name: 'McCartney')
CustomerTransaction.create!({
  amount: 99.99,
  transaction_time: DateTime.now,
  paid: true,
  refunded: false,
  customer_id: paul.id,
  customer_type: paul.class.to_s
})

brian = User.create!(first_name: 'Brian', last_name: 'Epstein')
CustomerTransaction.create!({
  amount: 99.99,
  transaction_time: DateTime.now,
  paid: true,
  refunded: false,
  customer_id: brian.id,
  customer_type: brian.class.to_s
})

rey = User.create!(first_name: 'Rey', last_name: 'Skywalker?')
CustomerTransaction.create!({
  amount: 99.99,
  transaction_time: DateTime.now,
  paid: true,
  refunded: true,
  customer_id: rey.id,
  customer_type: rey.class.to_s
})
CustomerTransaction.create!({
  amount: 99.99,
  transaction_time: DateTime.now,
  paid: true,
  refunded: true,
  customer_id: rey.id,
  customer_type: rey.class.to_s
})
CustomerTransaction.create!({
  amount: 99.99,
  transaction_time: DateTime.now,
  paid: false,
  refunded: false,
  customer_id: rey.id,
  customer_type: rey.class.to_s
})

alice = User.create!(first_name: 'Alice', last_name: 'In Chains')
CustomerTransaction.create!({
  amount: 99.99,
  transaction_time: DateTime.now,
  paid: false,
  refunded: false,
  customer_id: alice.id,
  customer_type: alice.class.to_s
})
CustomerTransaction.create!({
  amount: 99.99,
  transaction_time: DateTime.now,
  paid: false,
  refunded: false,
  customer_id: alice.id,
  customer_type: alice.class.to_s
})
CustomerTransaction.create!({
  amount: 99.99,
  transaction_time: DateTime.now,
  paid: false,
  refunded: false,
  customer_id: alice.id,
  customer_type: alice.class.to_s
})

