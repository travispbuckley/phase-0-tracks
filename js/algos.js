/* A function that takes in an array of strings
 returns the longest word/phrase from the array
	 Have to obtain length of each string
	 Print the string with the largest number of length

	 Established an array with varying lengths of each
 now need a function to loop through the array, and find
 the longest one */
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
	
function keyMatcher(object1, object2)
{
	if (object1.age === object2.age){
		return true;
	}
	else {
		return false;
	}
}

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

console.log(keyMatcher(object1, object2));

console.log(arrayCreator(10));


