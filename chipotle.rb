#The menu board at Chipotle Reads: 
main = {
	style: ["burrito", "bowl", "crispy corn tacos", "soft corn tacos", "soft flour tacos", "salad"],
	meat: ["steak", "carnitas", "chicken", "barbacoa", "sofritas"],
	rice_bean_veg: ["cilantro-lime brown rice", "cilantro-lime white rice", "black beans", "pinto beans", "fajita veggies"],
	toppings: ["sour cream", "guacamole", "cheese", "romaine lettuce", "roasted chili-corn salsa", "tomatillo green-chilli salsa (medium hot)", "tomatillo red-chilli salsa (hot)", "fresh tomato salsa (mild)"]
}

#This line should not be changed, it is the starting hash for your order! 
my_order = {}


####### INSTRUCTIONS: ###########
	#Use methods to add create your order, you can only call items from the main hash to them to the my_order hash- You should not be writing any strings unless you do the bonus. 

	#By end it should look something like: 
		#my_order = { style: "burrito", meat: "chicken", rice_bean_veg: ["cilantro-lime brown rice", "black beans"], toppings: ["guacamole", "cheese", "romaine lettuce"]}


#########  LETS GO!  ##########

#STEP ONE:
	#you are in line at chipotle and what to know what different styles they have
	#Display all the options available for style 
puts main[:style]


#STEP TWO:
	#Using the empty my_order hash, 
	#Chose your style from the available options and add a new key value pair to that hash
my_order[:style] = main[:style] [0]

#STEP THREE:
	#Chose what meat you want & add it to your my_order hash
my_order[:meat] = main[:meat] [2]

#STEP FOUR:
	#Chose what rice, bean or veggies you want and it it as a new key value pair to my_order. 
		#HINT: You may want to chose more than one option, how will you store multiples in your order?
my_order[:rice_bean_veg] = main[:rice_bean_veg] [1,2]

#or
my_order[:toppings] = main[:toppings].select {|topping| topping == "romaine lettuce" || "guacamole"}

#STEP FIVE
	#Check to see if your favorite topping is included in the available options
puts main.assoc(:toppings)

#STEP SIX
	#Chose at least 3 toppings to add to your order
my_order[:toppings] = Array.new
my_order[:toppings] << main[:toppings] [0]
my_order[:toppings] << main[:toppings] [1]
my_order[:toppings] << main[:toppings] [2]
#STEP SEVEN
	#Oops! You didn't want one of those toppings! How do you remove the second one you put in there?
my_order[:toppings].delete ("guacamole") 

#STEP EIGHT
	#Print your hash and see if your order was made correctly! Bon Appetit! 





#### BONUS 1 #######
	#Display your order in a sentence
		#This will be challenging when it comes to working with your multiple choices for toppings

	#Example: "Can I please have a burrito. For meat, I would like chicken with cilantro-lime white rice and black beans. Then I would like sour cream, cheese and roasted-corn salsa as my toppings. Thank you!"



#### BONUS 2 #####
	#Make this into a command line application that allows the user to input their order 


#### BONUS 3 ######
	#Experiment with more ways of nesting data structures by having my_order contain both the main, sides, a drink and dessert. How would you restructure my_order to accomodate for that? 


	