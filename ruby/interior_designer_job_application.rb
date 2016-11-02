job_application = {
	"name" => "J'onn J'onzz",
	"address" => "Syrtis Major Mars",
	"email" => "manhunter@green.com",
	"phone" => "111 2222",
	"fave shade of blue" => "cerulean",
	"wallpaper preferences" => ["Paisley", "Abstract woodsy scenes (no squirrels)"],
	"ombre" => "Practically medieval in its appalling irrelevance",
}

p job_application
p job_application["ombre"]
job_application["ombre"] = "Fierce"
p job_application["ombre"]
job_application["hired"] = true

email_address = "email"
p email_address
p job_application[email_address]
job_application["name"] + job_application["address"]
p job_application