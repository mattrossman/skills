---
name: me-twitter
description: Read and search public X/Twitter posts, threads, and profiles.
---

Use FxTwitter to read public X/Twitter content. Its API reference is https://docs.fxembed.com/api/introduction/.
This requires network access.

## Read posts and threads

Extract the post ID from the URL. Fetch `https://api.fxtwitter.com/2/status/{id}` for a post or `https://api.fxtwitter.com/2/thread/{id}` for thread context.

## Search and browse

Try `https://api.fxtwitter.com/2/search` with an encoded `q` parameter.

For a known account, fetch `https://api.fxtwitter.com/2/profile/{handle}/statuses` and filter the results. Follow cursors when needed. Check authors because timelines can include reposts. For broader discovery, try web search and verify candidates through FxTwitter.
