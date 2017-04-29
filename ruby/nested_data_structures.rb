#Nested Hash for animals at an animal shelter

animal_shelter = {
	dogs: {
		sign_title: 'Dogs for Adoption',
		adoption_availablity: {
			dogs_available: 2, 
			pending_adoption: 1
		},
		dog_info: {
			
			room_1: {
				name: 'Baxter',
				availability: 'Pending Adoption',
				breed: 'Border Collie',
				age: 7
			}, 

			room_2: {
				name: 'Leia',
				availability: 'Available for Adoption',
				breed: 'American Pit Bull Terrier',
				age: 1
			},

			room_3: {
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
			pending_adoption: 2
		},
		cat_info: {
			
			room_4: {
				name: 'Apollo',
				availability: 'Pending Adoption',
				breed: 'Siamese',
				age: 1
			},

			room_5: {
				name: 'Prancer',
				availability: 'Pending Adoption',
				breed: 'Rag Doll',
				age: 7,
			},

			room_6: {
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
			room_7: {
				name: 'Joey',
				availability: 'Available for Adoption',
				breed: 'Box Turtle',
				age: 2
			},

			room_8: {
				name: 'Max',
				availability: 'Available for Adoption',
				breed: 'Mini Rex Rabbit',
				age: 5
			}
		}
	}
}

p animal_shelter