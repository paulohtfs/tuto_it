class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller: "login")
        "/main"(view: '/main')
        "/login/$action?"(controller: "login")
        "/logout/$action?"(controller: "logout")
		"500"(view:'/error')
	}
}
