var colors = ["blue", "green", "red", "purple"];
var horse = ["jeff", "ted", "first", "last"];

horse.push("josh");
colors.push("gold");

var horses = {};

function toObject(names, values) {
  var result = {};
  for (var i = 0; i < names.length; i++)
       result[names[i]] = values[i];
  return result;
}

console.log(toObject(horse, colors));