var listItems = ["Go out", "Come back" , "Buy food" , "Eat food"];
function addListItem(value) {
	var newItem = document.createElement("li");
	newItem.innerHTML = value;
	document.getElementById('list').appendChild(newItem);
}
for (var i = 0; i < listItems.length; i++) {
	addListItem(listItems[i]);
}
var allItems = document.getElementsByTagName("li");
for(var j = 0; j < allItems.length; j++){
	if(Number.isInteger((j+1)/2)){
		allItems[j].className = "even";
	}
}
document.getElementById("count").innerHTML = allItems.length;


// write append loop here


// write the class loop here

// Getting elements and changing them in the DOM

// var wrapperDiv = document.getElementById("wrapper");
// console.log(wrapperDiv);
// wrapperDiv.style.backgroundColor = "blue";

// var lis = document.getElementsByTagName("li");
// console.log(lis);
// lis[1].innerHTML = "Check it out, I've only gone and bloody changed!";

// var selected = document.querySelectorAll("li.selected");
// for(var i = 0; i < selected.length; i++){
// 	selected[i].style.color = "purple";
// }

// // Putting brand new things onto the page

// var ptag = document.createElement("p");
// ptag.innerHTML = "Brand new p tag";
// document.body.appendChild(ptag);





















