// Move the projectile

// Move the projectile with its current speed towards its current direction
var lenX = lengthdir_x(movementSpeed, movementDirection);
var lenY = lengthdir_y(movementSpeed, movementDirection);

x += lenX;
y += lenY;
