/* A function that takes in an array of strings
 returns the longest word/phrase from the array
	 Have to obtain length of each string
	 Print the string with the largest number of length
*/
function largestString(array)
{
	var arrayStrings = array;
	string= '';
	for (var i = 0; i<array.length; i++)
	{
		if (arrayStrings[i].length>string.length)
		{
			string=arrayStrings[i];
		}
	}
 	return string;
} 
/* For the key matcher, i can pass in 2 objects to the function.
First i can loop through the first object and check for its properties, and
then loop through the second seeing if there is a match. If they match properties,
then check if they match values for that properties (keys). If there is a match
of values, then the console will print a message indicating so, if no match
is present, then nothing will be displayed because there is no match
RIP HARAMBE*/
function keyMatcher(obj1, obj2) {

 	for (var prop in obj1) {
 		for (var prop2 in obj2) {
 			if (prop2 === prop) {
 				if (obj1[prop] === obj2[prop]) {
 					console.log('match on ' + prop);
 				}
 			}
 		}
 	}
}

/* Create an empty array for strings to be stored inside.
Use the letters of the alphabet as a variable to cycle through and
push the characters into the empty array. Control the length of 
each submission using a random number without going above 10
*/

function arrayCreator(n)
{
	var array = [];
	for (var i = 0; i < n; i++){
		 var letters = "";
   		 var alphabet = "abcdefghijklmnopqrstuvwxyz0123456789";

    	for( var j=0; j < Math.floor(Math.random()*10); j++ ){
       	    letters += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
    	}

		array.push(letters);
	}
	
	return array;
}

var object1 = {
	name: 'Travis', 
	age: 24 
};

var object2 = {
	name: 'Matt',
	age: 24
};

var array = ['hello', 'hi', 'rip harambe'];
console.log(largestString(array));

keyMatcher(object1, object2);

console.log(arrayCreator(10));


