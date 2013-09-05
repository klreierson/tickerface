Tickerface::Application.routes.draw do

get  "/"                => "main#index"
get  "/profile"         => "main#profile"
post "/profile"         => "main#profile_post"
get  "/company/:symbol" => "main#company"

post "/company"  		=> "main#company_post"





end
