require 'faker'

#I'm the admin
me = User.new(
  :name     => "Stephen", # One's own name is easier to remember :email    => "stephen.m.cabrera@gmail.com", # One's own email is easier to remember
  :password => "password", # Easy to remember password
)

me.skip_confirmation! # Necessary becuase we're using the devise confirmable module
me.save

5.times do
  user = User.new(
    :name => Faker::Name.name,
    :email => Faker::Internet.email,
    :password => Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save
end

ground_beef = Ingredient.create(
  :name => "Ground Beef",
  :cost_cents => 380,
  :cost_currency => 'PEN',
)

tomato = Ingredient.create(
  :name => "Tomato",
  :cost_cents => 50,
  :cost_currency => "PEN"
)

onion = Ingredient.create(
  :name => "Onion",
  :cost_cents => 60,
  :cost_currency => "PEN"
)

chili = Recipe.new(:name => "Chili", :instructions => "I'll put up some instructions eventually...")
chili.save

RecipeIngredient.create(
  :recipe_id => chili.id,
  :ingredient_id => ground_beef.id,
  :ingredient_amount => 0.5
)

RecipeIngredient.create(
  :recipe_id => chili.id,
  :ingredient_id => tomato.id,
  :ingredient_amount => 3
)

RecipeIngredient.create(
  :recipe_id => chili.id,
  :ingredient_id => onion.id,
  :ingredient_amount => 1
)

chili.save

puts "Seed finished"
puts "#{User.all.count} users created"
puts "#{Recipe.all.count} recipes created"


