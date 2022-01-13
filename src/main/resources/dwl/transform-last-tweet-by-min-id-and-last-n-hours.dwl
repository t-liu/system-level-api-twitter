%dw 2.0
output application/json
---
payload.statuses filter ($.created_at as DateTime {format: "E MMM dd HH:mm:ss Z yyyy"} as DateTime {format: "yyyy-MM-dd HH:mm:ss"}) >= vars.twitter.since minBy $.id