puts "🌱 Seeding spices..."

# Seed your database here
names = ["Lauren", "Kyle", "Hayden", "Greg", "Anne"]
rev_ex = ["Great product", "Would buy again", "Worked like a charm", "Best purchase all year", "My best purchase of 2023", "Would recommend", "Better than it's competitors"]

Item.create(item_name: "TC Futuras", item_type: "Shoes")
Item.create(item_name: "TC Pros", item_type: "Shoes")
Item.create(item_name: "BD Backpack", item_type: "Outerwear")
Item.create(item_name: "Prana Pants", item_type: "Clothing")
Item.create(item_name: "BD Cam #4", item_type: "Hardwear")

Item.all.each do |item|
    rand(2..8).times do
        Review.create(review: rev_ex.sample, item_id: item.id, item_rating: rand(6..10), reviewer_name: names.sample)
    end
end

puts "✅ Done seeding!"
