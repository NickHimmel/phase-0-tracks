// console.log("hello world");

var game_cards = {
	cards: [
		{
			id: 1,
			img: "back_of_card_"
		},{
			id: 2,
			img: "back_of_card_"
		},{
			id: 3,
			img: "back_of_card_"
		},{
			id: 4,
			img: "back_of_card_"
		},{
			id: 5,
			img: "back_of_card_"
		},{
			id: 6,
			img: "back_of_card_"
		}
	]
}

// console.log(game_cards.cards[0].img);

var controller = {

	card_link: function () {
		var img_link = "<img src=\"" + game_cards.cards[0].img +  "\" alt=\"Memory Card\">"
		return img_link
	}

}

var view = {

	display_cards: function () {
		for (var i = Things.length - 1; i >= 0; i++) {
			Things[i]
		}
	}

}
