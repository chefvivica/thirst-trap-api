# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wa}, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'faker'

Drink.destroy_all 
User.destroy_all 
Review.destroy_all 

drinks =[
{ 
    name: 'Ice tea',
    img_url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2011/5/9/1/FNM_060111-HMSM-002_s4x3.jpg.rend.hgtvcom.826.620.suffix/1387306718549.jpeg",
    recipe: 'Take 5-7 grams of your favourite tea (or use two teabags) per liter of water, and let it sit overnight for the best result. 
    Add some sugar or agave syrup for additional sweetness!
    Are you in more of a hurry? Take a big can, and fill it 1/3 with boiling water. 
    Add your teabags and let it sit for 3 minutes. 
    Fill the rest of the can up with cold water and ice cubes. Again, you can add agave syrup or sugar for additional sweetness. A nice touch is also some sliced fruits or minty herbs!',
    likes: 59,
    comment: "I am from the south and a grew up making tea just like the reviewers did, and it makes a specific kind of very southern ice tea primed for sweetening!",
    rating: 5
},

{
    name: 'Lemonade ',
    img_url: "https://www.foodbusinessnews.net/ext/resources/2019/11/Lemonade_Lead.jpg?1574169318",
    recipe: 'Add one cup of sugar to one cup of water in a pan, and let it boil on a low heat. 
    Once all the sugar is dissolved, add one cup of lemon juice (4-6 lemons). This is your syrup!
    Take the syrup off the heat and put it in a big jug. 
    Add about 3-4 cups of sparkling water and let it cool in the fridge for at least 30 minutes.
    Add some fresh lemon slices and some mint for garnishing, et voila!',
    likes: 20,
    comment:"Lemonade is also prescribed by doctors to those who suffer from kidney stones. There is something in the lemon that dissolves existing stones and prevents new ones from forming. It works too. Ask me how I know.",
    rating: 5
},
{
    name: 'Champagne Punch III',
    img_url: "https://images.media-allrecipes.com/userphotos/560x315/7492146.jpg",
    recipe: 'In large punch bowl, combine the cranberry juice concentrate, pink lemonade concentrate, limeade concentrate, white wine, club  soda and champagne. Garnish with lemon slices and fresh mint leaves!',
    likes: 33,
    comment: "Wonderful! Served this at a bridal shower and it was a big hit. Only used one bottle of champagne so it wouldn't be so potent :) It turned out great.",
    rating: 3.5
},
{
    name: 'Iced Mochas',
    img_url: "https://bakingmischief.com/wp-content/uploads/2019/05/iced-mocha-image-square.jpg",
    recipe: 'Pour coffee into ice cube tray. Freeze until solid, or overnight.
    In a blender, combine coffee ice cubes, milk, chocolate syrup and sugar. Blend until smooth. Pour into glasses and serve.',
    likes: 195,
    comment: "Awesome icy treat! Perfect for when you want to have the coffeehouse experience right in your own house",
    rating: 5
},
{

    name: 'Almond Berry Smoothie', 
    img_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F5550584.jpg",
    recipe: 'Combine blueberries, banana, almond milk, and almond butter in a blender; blend until smooth, adding water for a thinner smoothie.',
    likes: 78,
    comment: "I wish there was an option for 6 stars! This is great",
    rating: 3.5
},
  
{
    name: 'Sangria! Sangria!', 
    img_url: "https://campbrighton.com/wp-content/uploads/2019/01/sangria-8.jpg",
    recipe: 'In a large pitcher or bowl, mix together the brandy, lemon juice, lemonade concentrate, orange juice, red wine, triple sec, and sugar. Float slices of lemon, orange and lime, and maraschino cherries in the mixture. Refrigerate overnight for best flavor. For a fizzy sangria, add club soda just before serving.',
    likes: 163,
    comment: "Before I was a nobody. Now I'm famous for my sangria.",
    rating: 5
    

},
{
    name: 'Strawberry Mojito!',
    img_url: "https://thecleaneatingcouple.com/wp-content/uploads/2018/08/healthy-strawberry-mojito-1.jpg", 
    recipe: 'Pour 1/4 to 1/2 inch of sugar onto a small, shallow plate. 
    Run one of the lime quarters around the rim of each cocktail glass, then dip the glasses into the sugar to rim; set aside.
    Squeeze all of the lime quarters into a sturdy glass pitcher. Toss the juiced limes into the pitcher along with the mint, strawberries, and 1 cup of sugar. Crush the fruits together with a muddler to release the juices from the strawberries and the oil from the mint leaves. Stir in the rum and club soda until the sugar has dissolved. Pour into the sugared glasses over ice cubes to serve.',
    likes: 386,
    comment: "Very delicious, and very much appreciated by friends at our backyard BBQ. I didn't measure out everything perfectly, but used this recipe as a guide for the ratios I should pour.",
    rating: 5
},
{
    name: 'Whipped Coffee Iced Latte',
    img_url: "https://globalassets.starbucks.com/assets/3dacf63a42ac40b4b6f6ed32f8422d0a.jpg?impolicy=1by1_wide_1242", 
    recipe: 'Combine boiling water, coffee granules, and sugar in a large mug and whip with an immersion blender until foamy, about 2 minutes. Set aside.
    Fill a large glass with ice cubes. Pour milk over ice cubes. Top with the coffee foam.',
    likes: 231,
    comment: "I love coffee and this was perfect!!",
    rating: 4.5
},
{
    name: 'Paloma Picante',
    img_url: "https://images.media-allrecipes.com/userphotos/560x315/4562205.jpg",
    recipe: 'Rim a highball glass with chili-lime seasoning and fill halfway with ice.
    Combine tequila, lime juice, and 1 cup ice in a cocktail shaker. Shake for 1 minute. Strain into the glass. Top with grapefruit soda.',
    likes: 38,
    comment: "pretty good!",
    rating: 3.5
},
{   
    name: 'Beer Floats',
    img_url: "https://sfbeerweek.org/upload/c2c9b1c955a8eac4/root-beer-float.jpg",
    recipe: 'Version 1: Pour stout into a British pint glass and scoop coffee ice cream on top. Garnish with a dusting of cocoa powder.
    Version 2: Pour raspberry beer into a pint glass; top with vanilla ice cream.
    Add a straw to each float and serve with spoons alongside.',
    likes: 500,
    comment: "This recipe came in my inbox last night (Friday) and it was perfect timing to try because a couple of friends were over for a movie ;-) I didn't have root beer and spiced rum on hand but did have cherry cola, Bacardi Gold and French vanilla ice cream so gave that a try. YUM!!",
    rating: 5
}
]


puts "creating all drinks"
drinks.each do |drink|
    Drink.create(drink)
  end

users = [
    { name: "Chef John", bio:Faker::Quote.famous_last_words},
    {name: "Adams Sneezy", bio:Faker::Quote.famous_last_words},
    {name: "Doc Hills", bio:Faker::Quote.famous_last_words},
    {name: "Klein Sleepy",bio:Faker::Quote.famous_last_words},
    {name: "Lopez doc", bio:Faker::Quote.famous_last_words},
    {name: "Xiang Grumpy", bio:Faker::Quote.famous_last_words},
    {name: "Reily Happy", bio:Faker::Quote.famous_last_words},
    {name: "Jones Bashful", bio:Faker::Quote.famous_last_words},

]

puts "creating all users"
users.each do |user|
    User.create(user)
end


reviews = [
    {
        user_id: User.all.sample.id, drink_id: Drink.all.sample.id},
    {
        user_id: User.all.sample.id, drink_id: Drink.all.sample.id},
    {
        user_id: User.all.sample.id, drink_id: Drink.all.sample.id},
    {
        user_id: User.all.sample.id, drink_id: Drink.all.sample.id},
    {
        user_id: User.all.sample.id, drink_id: Drink.all.sample.id},
    {
        user_id: User.all.sample.id, drink_id: Drink.all.sample.id},
    {
        user_id: User.all.sample.id, drink_id: Drink.all.sample.id},
    {
        user_id: User.all.sample.id, drink_id: Drink.all.sample.id},

]


puts "creating all reviews"
reviews.each do |review|
    Review.create(review)
end