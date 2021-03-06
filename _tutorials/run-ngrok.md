---
title: How to run Ngrok
description: How to run Ngrok to test your application locally.
---

## How to run Ngrok

With the application's webhook URLs pointing to [Ngrok](https://ngrok.com/), Ngrok will redirect the webhooks to your local machine through a secure tunnel for testing purposes.

Make sure you have Ngrok running for testing locally. To start Ngrok type:

``` shell
ngrok http 3000
```

To generate a temporary Ngrok URL. If you are a paid subscriber you could type:

``` shell
ngrok http 3000 -subdomain=your_domain
```

> **NOTE:** In this example Ngrok will divert the Nexmo webhooks you specified when you created your Nexmo application to `localhost:3000`. Although port 3000 is shown here, you can use any free port that is convenient.
