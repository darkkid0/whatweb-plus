Plugin.define do
name "asp.net-version"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'X-Aspnet-Version'},
]
end