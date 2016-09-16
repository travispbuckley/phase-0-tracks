// take a word
// use the length of the word -1 
// create empty string to add the new characters to
// iterate backwards (use a loop)
// return the new, backwards string

function reverse(x) {
  var o = '';
  for (var i = x.length - 1; i >= 0; i--)
    o += x[i];
  console.log(o);
}

var result=reverse("hello");

var one=1;

if (one==1)
{
	console.log("1 does equal 1! :)");
}