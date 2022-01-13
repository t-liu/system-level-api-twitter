%dw 2.0
output application/json
---
payload.statuses filter not isEmpty($.entities.hashtags) flatMap ( tweet , tweetIndex ) -> (
    tweet.entities.hashtags.*text
)