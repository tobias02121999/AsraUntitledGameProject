// Customize the player character

// Customize the player gender
if (obj_manager.iGender)
{
	if (gender == "MALE")
		gender = "FEMALE";
	else
		gender = "MALE";
}

// Customize the player body type
if (obj_manager.iBodyType)
{
	if (bodyType == 0)
		bodyType = 1;
	else
		bodyType = 0;
}

// Customize the player skin tone
if (obj_manager.iSkinTone)
{
	if ((skinTone + 1) <= 3)
		skinTone++;
	else
		skinTone = 0;
}
