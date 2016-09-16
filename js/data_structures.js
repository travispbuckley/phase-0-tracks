var colors = ["blue", "yellow", "aqua purple", "red"];

var names = ["Jon", "ed", "nancy", "black beauty"]

names.push("secretariat");

colors.push("egg shell white");

console.log(colors,names);


var stable = {};

for (var i=0; i<names.length; i++)
{
	stable [names[i]] =colors [i];

}

console.log(stable);

function Car (make, model, year, color, isUsed, features) {
	this.make=make;
	this.model=model;
	this.year=year;
	this.color=color;
	this.isUsed=isUsed;
	this.features=features;
	this.describe= function() 
	{ 
		console.log("I am a " + this.isUsed + " " + this.color + " " + this.year + " " + this.make + " " + this.model) 
		console.log("My features are: " + this.features.toString());
		console.log("Drive safe!")};
	};

var Ruby = new Car ("Lexus", "RX350", "2009", "red", "previously owned", ["navigation system, broken charger ports, stained carpets and cracked leather interior!"]);
Ruby.describe()

var Barney = new Car ("Chrysler", "PT Cruiser", "2001", "purple", "previously owned", ["failing engine, dead battery, missing windshield wipers, and unsturdy floorboards...but the radio still works!"]);
Barney.describe()
