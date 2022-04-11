20.times {|i| 
Category.create(name: "Category #{i + 1}")
Product.create!(name: "Product #{i + 1}", category_id: i + 1, price: i + 1)
}  