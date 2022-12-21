resource "local_file" "animal" {
 filename = var.filename
 content = "my frv animal is ${random_pet.my-pet.id}"
}

resource "random_pet" "my-pet" {
 prefix = var.prefix
 separator = var.separator
 length = var.length
}

output pet-name {
 value = random_pet.my-pet.id
 description = "this is ahpet name"
}

