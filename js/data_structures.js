// Release 0 | Create an array of horse colors and horse names

var colors = ["blue", "green", "red", "purple"];
var horse = ["jeff", "ted", "first", "last"];

horse.push("josh");
colors.push("gold");

// Release 1 | Create a function to add arrays to a hash

var horses = {};

function toObject(names, values) {
  var result = {};
  for (var i = 0; i < names.length; i++)
       result[names[i]] = values[i];
  return result;
}

console.log(toObject(horse, colors));

// Release 2 | Create a Construct function

function Car(color, type, fast) {
  this.color = color;
  this.type = type; 
  this.fast = fast; 
  this.burnout = function() {console.log("burning rubber!!!"); }; 

}
