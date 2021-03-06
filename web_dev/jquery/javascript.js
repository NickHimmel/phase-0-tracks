
// // console.log("hello world");

var game_cards = {
	cards: [
		{
			id: 1,
			img: "back_of_card_1.png"
		},{
			id: 1,
			img: "back_of_card_2.png"
		},{
			id: 2,
			img: "back_of_card_3.png"
		},{
			id: 2,
			img: "back_of_card_4.png"
		},{
			id: 3,
			img: "back_of_card_5.png"
		},{
			id: 3,
			img: "back_of_card_6.png"
		},{
			id: 4,
			img: "back_of_card_7.png"
		},{
			id: 4,
			img: "back_of_card_8.png"
		},{
			id: 5,
			img: "back_of_card_9.png"
		},{
			id: 5,
			img: "back_of_card_10.png"
		},{
			id: 6,
			img: "back_of_card_11.png"
		},{
			id: 6,
			img: "back_of_card_12.png"
		}
	]
}


var controller = {

	card_link: function (i) {
		console.log(i);
		var img_link = "<img src=\"img/" + game_cards.cards[i].img + "\" alt=\"memory card\">";
		// console.log(img_link)
		return img_link;
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

}

var view = {

	display_cards: function () {
		$('.cards').html('');
		for (var i = 1; i <= game_cards.cards.length; i++) {
			var card_spot = "#card_" + i;
			// console.log(card_spot)
			// console.log(controller.card_link(i));
			$(card_spot).append(controller.card_link(i-1));
		}
	},

	random_cards: function () {
		$('.cards').html('');
		var random_index = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
		random_index = controller.shuffle(random_index);

		for (var i = 0; i < 12; i++) {
			var card_spot = "#card_" + random_index[i];
			// console.log(card_spot)
			// console.log(controller.card_link(i));
			$(card_spot).append(controller.card_link(i));
		}
	},

	random_button: function(array){
		$("#randomize").click(function(){
			// console.log("hello world")
			view.random_cards();
		});
	},

	hide_card: function(){
		$(".cards").click(function(){
			$(this).hide();
			$(this).siblings().show();
			view.hide_card();
		});
		$(".front").click(function(){
			$(".cards").show();
			$(this).hide();
			view.hide_card();
		});
	},

	init: function(){
		view.display_cards();
		view.hide_card();
		view.random_button();
	}
}


// var arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
// arr = controller.shuffle(arr);
// console.log(arr);
view.init();

