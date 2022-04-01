Plugin.define do
name "asp.net-requestvalidationmode-microsoft"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'X-Powered-By: ASP.NET'},
]
end