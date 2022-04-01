Plugin.define do
name "isaserver-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'ISASERVER'},
]
end