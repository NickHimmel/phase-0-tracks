// console.log("hello world");

var game_cards = {
	cards: [
		{
			id: 1,
			img: "back_of_card_1.png"
		},{
			id: 1,
			img: "back_of_card_1.png"
		},{
			id: 2,
			img: "back_of_card_2.png"
		},{
			id: 2,
			img: "back_of_card_2.png"
		},{
			id: 3,
			img: "back_of_card_3.png"
		},{
			id: 3,
			img: "back_of_card_3.png"
		},{
			id: 4,
			img: "back_of_card_4.png"
		},{
			id: 4,
			img: "back_of_card_4.png"
		},{
			id: 5,
			img: "back_of_card_5.png"
		},{
			id: 5,
			img: "back_of_card_5.png"
		},{
			id: 6,
			img: "back_of_card_6.png"
		},{
			id: 6,
			img: "back_of_card_6.png"
		}
	]
}

// console.log(game_cards.cards[0].img);

var controller = {

	card_link: function (i) {
		 
		var img_link = "<img src=\"img/" + game_cards.cards[i-1].img + "\" alt=\"memory card\">";
		return img_link;
	}

}

var view = {

	display_cards: function () {
		for (var i = 1; i <= 12; i++) {
			var card_spot = "#card_" + i;
			console.log(card_spot)
			// console.log(controller.card_link(i));
			$(card_spot).append(controller.card_link(i));
		}
	},

	//  Fisher-Yates (aka Knuth) Shuffle algorithm
	//  https://github.com/coolaj86/knuth-shuffle

	shuffle: function(array){
		var currentIndex = array.length, temporaryValue, randomIndex;

	  // While there remain elements to shuffle...
		while (0 !== currentIndex) {

	    // Pick a remaining element...
	    	randomIndex = Math.floor(Math.random() * currentIndex);
			currentIndex -= 1;

	    // And swap it with the current element.
			temporaryValue = array[currentIndex];
			array[currentIndex] = array[randomIndex];
	    	array[randomIndex] = temporaryValue;
	  }

	  return array;
	}

	randomize: function(array){
		$("#randomize")
	}

}

console.log(view.display_cards())
var arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
arr = view.shuffle(arr);
console.log(arr);
