// Triangles
// The program should return whether it a triangle is equilateral, isosceles or scalene. The program should also raise an error if the triangle cannot exist.

// Extensions:

// Return the area and diameter as well
// Hint

// The sum of the lengths of any two sides of a triangle always exceeds the length of the third side, a principle known as the triangle inequality.

var Triangle = function ( l1, l2, l3 ) {
	this.l1 = l1;
	this.l2 = l2;
	this.l3 = l3;

	this.type = function ( l1, l2, l3) {
		if (this.l1 + this.l2 > this.l3 && this.l2 + this.l3 > this.l1 && this.l3 + this.l1 > this.l2) {

			if (this.l1 == this.l2 && this.l2 == this.l3) {
				return this.type = "Equilateral"
			}
			else if (this.l1 == this.l2 || this.l2 == this.l3 || this.l1 == this.l3) {
				return this.type = "Isosceles"
			}
			else {
				return this.type = "Scalene"
			}
		}

		else {
			return this.type = "Not a triangle"
		}
}	
};


var t = new Triangle (3,3,2);
t.type();
var q = new Triangle (4,5,6);
q.type();
var r = new Triangle (3,3,3);
r.type();
var s = new Triangle (3,3,2);
s.type();
var u = new Triangle (4,3,10);
u.type();

