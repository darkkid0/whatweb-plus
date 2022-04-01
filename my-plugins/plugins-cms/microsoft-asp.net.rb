Plugin.define do
name "microsoft-asp.net"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<input[^>]+name="__VIEWSTATE/},
{:regexp=>/^ASP\.NET/, :search=>'headers[x-powered-by]'},
{:search=>"all", :text=>'Microsoft ASP.NET'},
]
end