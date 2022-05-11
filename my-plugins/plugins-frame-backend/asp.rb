Plugin.define do
name "asp" 
authors [
"winezero",
]
version "0.2"

matches [
{:search=>"headers", :regexp=>/X-Powered-By: ASP$/},
]
end