#Nested Hash for animals at an animal shelter

animal_shelter = {
	dogs: {
		sign_title: 'Dogs for Adoption',
		adoption_availablity: {
			dogs_available: 2, 
			pending_adoption: 0
		},
		dog_info: {

			room_1: {
				name: 'Leia',
				availability: 'Available for Adoption',
				breed: 'American Pit Bull Terrier',
				age: 1
			},

			room_2: {
				name: 'Luke',
				availability: 'Available for Adoption',
				breed: 'American Pit Bull Terrier',
				age: 1
			}
		}
	},

	cats: {
		sign_title: 'Cats for Adoption',
		adoption_availablity: {
			cats_available: 1, 
			pending_adoption: 1
		},
		cat_info: {

			room_3: {
				name: 'Prancer',
				availability: 'Pending Adoption',
				breed: 'Rag Doll',
				age: 7
			},

			room_4: {
				name: 'Milo',
				availability: 'Available for Adoption',
				breed: 'Shorthair',
				age: 3
			}
		}
	},

	other: {
		sign_title: "Other Animals Available",
		adoption_availablity: {
			types: [
				'Rabbit', 
				'Turtle'
			],
			available_animals: {
				animals_available: 2, 
				pending_adoption: 0
			}	
		},
		animal_info:  {
			room_5: {
				name: 'Joey',
				availability: 'Available for Adoption',
				breed: 'Box Turtle',
				age: 2
			},

			room_6: {
				name: 'Max',
				availability: 'Available for Adoption',
				breed: 'Mini Rex Rabbit',
				age: 5
			}
		}
	}
}

#Print peices of data from the nested array to show understanding

	#Retrieve info about the second cat:
		puts "#{animal_shelter[:cats][:cat_info][:room_4][:name]}, our second cat in the animal shelter is #{animal_shelter[:cats][:cat_info][:room_4][:age]} years old\n\n"

	#Retrieve info about dogs available: 
		puts "Currently we have #{animal_shelter[:dogs][:adoption_availablity][:dogs_available]} dogs available for adoption\n\n"

	#Retrieve info about other animals that are available
		puts "We also have other types of animals. We currently have a #{animal_shelter[:other][:adoption_availablity][:types][1]} available. He is a #{animal_shelter[:other][:animal_info][:room_5][:breed]} and he is #{animal_shelter[:other][:animal_info][:room_5][:availability]}\n\n"

	#Retrieve all animal types
		puts "We currently have #{animal_shelter[:dogs][:sign_title]}, #{animal_shelter[:cats][:sign_title]}, and #{animal_shelter[:other][:sign_title]} such as a #{animal_shelter[:other][:adoption_availablity][:types][0]} and a #{animal_shelter[:other][:adoption_availablity][:types][1]}\n\n"

	#Retrieve all info for first dog 
		puts "Here is inforamtion on our first dog: #{animal_shelter[:dogs][:dog_info][:room_1]}"
	
