console.log("The script is working!");

function switchPicture() {
	var photo = document.getElementById("Photo1")
	photo.src = "file:///C:/Users/Bman1592/Desktop/githubprac/phase-0-tracks/web_dev/client_side_js/IMG_2481.JPG"
}

var photo = document.getElementById("Photo1");
photo.addEventListener("click", switchPicture);

var image = document.getElementById("Photo1"),
    imageWidth = image.width,
    imageHeight = image.height;
image.onmouseover = function() {
  image.width = .1 * imageWidth;
  image.height = .1 * imageHeight;
}
image.onmouseout = function() {
  image.width = imageWidth;
  image.height = imageHeight;
}