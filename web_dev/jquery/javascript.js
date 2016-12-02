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
	}

}

console.log(view.display_cards())
