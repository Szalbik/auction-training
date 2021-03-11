# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
adminAccount = Account.create!(email: 'admin@example.com', password: 'foobar')
sellerAccount = Account.create!(email: 'seller@example.com', password: 'foobar')
buyerAccount = Account.create!(email: 'buyer@example.com', password: 'foobar')
admin = AdminUser.create(account_id: adminAccount.id)
seller = Seller.create(account_id: sellerAccount.id)
buyer = Buyer.create(account_id: buyerAccount.id)
product = seller.products.create(name: "Prod 1", description: "Opis productu 1")
auction = seller.user_auctions.create(name: 'Akucja sprzedającego', description: 'Opis aukcji', minimal_price: 12, finished_at: Time.zone.now + 2.days, product_id: product.id)
auction.bids.create(amount: 5, buyer: buyer)
