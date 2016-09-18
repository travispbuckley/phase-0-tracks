// A function that takes in an array of strings
// returns the longest word/phrase from the array
	// Have to obtain length of each string
	// Print the string with the largest number of length
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
	
// Established an array with varying lengths of each
// now need a function to loop through the array, and find
// the longest one


var array = ['hello', 'hi', 'rip harambe'];
console.log(largestString(array));
