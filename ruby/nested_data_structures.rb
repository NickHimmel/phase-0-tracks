met_museum = {
	painting: {
		artist: "John Singer Sargent",
		title: "Madame X",
		info: ["1883–84", "Oil on canvas", "located in gallery 771"]
	},
	sculpture: {
		artist: "Cornelia Parker",
		title: "Transitional Object (PsychoBarn)",
		info: ["2016", "Wood", "located on the roof"]
	},
	photography: {
		artist: "André Kertész",
		title: "Chez Mondrian",
		info: ["1926", "Gelatin silver print", "not on view"]
	}
}

p met_museum

p met_museum[:painting]
p met_museum[:painting][:artist]
p met_museum[:sculpture][:title]
p met_museum[:painting][:info][2]
p met_museum[:photography][:info][0]
p met_museum[:sculpture][:info].push("temporary installation")