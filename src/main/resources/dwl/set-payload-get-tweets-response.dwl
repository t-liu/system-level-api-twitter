%dw 2.0
output application/json
---
payload.statuses map ( tweet , tweetIndex ) -> {
    author: tweet.user.screen_name,
    url: if(tweet.entities.urls[0].url != null) tweet.entities.urls[0].url else tweet.retweeted_status.entities.urls[0].url,
    text: tweet.text
}