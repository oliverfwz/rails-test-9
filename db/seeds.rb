Brand.destroy_all
new_balance = Brand.create!(name: 'New Balance')
nike        = Brand.create!(name: 'Nike')
adidas      = Brand.create!(name: 'Adidas')
puma        = Brand.create!(name: 'Puma')
fila        = Brand.create!(name: 'Fila')
asics       = Brand.create!(name: 'ASICS')

img_shoe_1 = "#{Rails.root}/app/assets/images/shoes/shoe-1.png"
img_shoe_2 = "#{Rails.root}/app/assets/images/shoes/shoe-2.png"
img_shoe_3 = "#{Rails.root}/app/assets/images/shoes/shoe-3.png"
img_shoe_4 = "#{Rails.root}/app/assets/images/shoes/shoe-4.png"
img_shoe_5 = "#{Rails.root}/app/assets/images/shoes/shoe-5.png"
img_shoe_6 = "#{Rails.root}/app/assets/images/shoes/shoe-6.png"
img_shoe_7 = "#{Rails.root}/app/assets/images/shoes/shoe-7.png"
img_shoe_8 = "#{Rails.root}/app/assets/images/shoes/shoe-8.png"
img_shoe_9 = "#{Rails.root}/app/assets/images/shoes/shoe-9.png"
img_shoe_10 = "#{Rails.root}/app/assets/images/shoes/shoe-10.png"
img_shoe_11 = "#{Rails.root}/app/assets/images/shoes/shoe-11.png"
img_shoe_12 = "#{Rails.root}/app/assets/images/shoes/shoe-12.png"

Product.destroy_all
Product.create!(name: 'New Balance 1', price: 10.5, sku: 'MX608V4', brand: new_balance, picture: File.open(img_shoe_1))
Product.create!(name: 'New Balance 2', price: 12.5, sku: 'MX608V4', brand: new_balance, picture: File.open(img_shoe_2))
Product.create!(name: 'New Balance 3', price: 14.5, sku: 'MX608V4', brand: new_balance, picture: File.open(img_shoe_3))
Product.create!(name: 'New Balance 4', price: 16.5, sku: 'MX608V4', brand: new_balance, picture: File.open(img_shoe_4))
Product.create!(name: 'New Balance 5', price: 18.5, sku: 'MX608V4', brand: new_balance, picture: File.open(img_shoe_5))
Product.create!(name: 'Nike 1',        price: 20.5, sku: 'MX608V4', brand: nike, picture: File.open(img_shoe_6))
Product.create!(name: 'Nike 2',        price: 22.5, sku: 'MX608V4', brand: nike, picture: File.open(img_shoe_7))
Product.create!(name: 'Nike 3',        price: 24.5, sku: 'MX608V4', brand: nike, picture: File.open(img_shoe_8))
Product.create!(name: 'Nike 4',        price: 26.5, sku: 'MX608V4', brand: nike, picture: File.open(img_shoe_9))
Product.create!(name: 'Nike 5',        price: 28.5, sku: 'MX608V4', brand: nike, picture: File.open(img_shoe_10))
Product.create!(name: 'Adidas 1',      price: 30.5, sku: 'MX608V4', brand: adidas, picture: File.open(img_shoe_1))
Product.create!(name: 'Adidas 2',      price: 32.5, sku: 'MX608V4', brand: adidas, picture: File.open(img_shoe_2))
Product.create!(name: 'Adidas 3',      price: 34.5, sku: 'MX608V4', brand: adidas, picture: File.open(img_shoe_3))
Product.create!(name: 'Adidas 4',      price: 36.5, sku: 'MX608V4', brand: adidas, picture: File.open(img_shoe_4))
Product.create!(name: 'Adidas 5',      price: 38.5, sku: 'MX608V4', brand: adidas, picture: File.open(img_shoe_5))
Product.create!(name: 'Puma 1',        price: 40.5, sku: 'MX608V4', brand: puma, picture: File.open(img_shoe_6))
Product.create!(name: 'Puma 2',        price: 39.5, sku: 'MX608V4', brand: puma, picture: File.open(img_shoe_7))
Product.create!(name: 'Puma 3',        price: 37.5, sku: 'MX608V4', brand: puma, picture: File.open(img_shoe_8))
Product.create!(name: 'Puma 4',        price: 35.5, sku: 'MX608V4', brand: puma, picture: File.open(img_shoe_9))
Product.create!(name: 'Puma 5',        price: 33.5, sku: 'MX608V4', brand: puma, picture: File.open(img_shoe_10))
Product.create!(name: 'Fila 1',        price: 31.5, sku: 'MX608V4', brand: fila, picture: File.open(img_shoe_1))
Product.create!(name: 'Fila 2',        price: 29.5, sku: 'MX608V4', brand: fila, picture: File.open(img_shoe_2))
Product.create!(name: 'Fila 3',        price: 28.5, sku: 'MX608V4', brand: fila, picture: File.open(img_shoe_3))
Product.create!(name: 'Fila 4',        price: 27.5, sku: 'MX608V4', brand: fila, picture: File.open(img_shoe_4))
Product.create!(name: 'Fila 5',        price: 25.5, sku: 'MX608V4', brand: fila, picture: File.open(img_shoe_5))
Product.create!(name: 'ASICS 1',       price: 23.5, sku: 'MX608V4', brand: asics, picture: File.open(img_shoe_6))
Product.create!(name: 'ASICS 2',       price: 21.5, sku: 'MX608V4', brand: asics, picture: File.open(img_shoe_7))
Product.create!(name: 'ASICS 3',       price: 19.5, sku: 'MX608V4', brand: asics, picture: File.open(img_shoe_8))
Product.create!(name: 'ASICS 4',       price: 17.5, sku: 'MX608V4', brand: asics, picture: File.open(img_shoe_9))
Product.create!(name: 'ASICS 5',       price: 15.5, sku: 'MX608V4', brand: asics, picture: File.open(img_shoe_10))