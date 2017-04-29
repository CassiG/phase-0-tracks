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

p animal_shelter