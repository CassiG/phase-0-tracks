#Nested Hash for animals at an animal shelter

animal_shelter {
	dogs: {
		sign_title: 'Dogs Available for Adoption',
		adoption_availablity: {
			dogs_available: 2, 
			pending_adoption: 1
			new_arrivals: 1
		}
		dog_info: {
			
			baxter: {
				name: 'Baxter'
				availability: 'Pending Adoption'
				breed: 'Border Collie'
				age: 3
			} 

			leia: {
				name: 'Leia'
				availability: 'Available for Adoption'
				breed: 'American Pit Bull Terrier'
				age: 1
			}

			luke: {
				name: 'Luke'
				availability: 'Available for Adoption'
				breed: 'American Pit Bull Terrier'
				age: 1
			}

			hero:  {
				name: 'Hero'
				availability: 'New Arrival'
				breed: 'Chihuahua'
				age: 7
			}
		}
	}
	
	cats: 
	other: 
}