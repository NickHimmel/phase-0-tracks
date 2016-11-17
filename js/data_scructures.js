// 7.2 Mandatory Pairing with Vilde Vevatne
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

function Car(color, make, engine, wheels) {

	console.log("It is a brand new car:", this);
	this.color = color;
	this.make = make;
	this.engine = engine;
	this.wheels = wheels;

	this.has_engine = function() { 
		if (engine == true){
			console.log("whroom, whroom");
		}
		else {
			console.log("sputter");
		}
	};

}

var newCar = new Car('grey', 'Mercedes', true, 4);
var anotherCar = new Car('orange', 'Volvo', true, 4);
newCar.has_engine();
anotherCar.has_engine();

