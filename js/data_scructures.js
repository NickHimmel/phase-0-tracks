var colors = ["blue", "red", "yellow", "orange"];
var horses = ["Dan", "Steve", "Alex", "Mary" ];
var horse_color = {};

console.log(colors);
console.log(horses);

colors.push("grey");
horses.push("Sue");

console.log(colors);
console.log(horses);

for(var i = 0; i < colors.length; i++) {
	horse_color[horses[i]] = colors[i];
}

console.log(horse_color);