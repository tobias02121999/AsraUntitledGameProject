// Toggle sprinting

// Enhance movement speeds while sprinting
if (iSprint)
{
	movementSpeed = movementSpeedRunning;
	maxVelocity = maxVelocityRunning;
	
	isSprinting = true;	
}
else
{
	movementSpeed = movementSpeedWalking;
	maxVelocity = maxVelocityWalking;
	
	isSprinting = false;
}
