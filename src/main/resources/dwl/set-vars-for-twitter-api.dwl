%dw 2.0
output application/java
var lessHoursPeriod = "PT" ++ attributes.queryParams.num_of_hours ++ "H"
---
{
	bearerToken: p('twitter.api.token'),
	count: p('twitter.api.maxListings'),
	since: ((now() - (lessHoursPeriod as Period)) as DateTime {format: "yyyy-MM-dd HH:mm:ss"})
}