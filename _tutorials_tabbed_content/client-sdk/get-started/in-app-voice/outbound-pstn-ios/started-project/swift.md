---
title: Swift
language: swift
menu_weight: 1
---


Clone this [Github project](https://github.com/Nexmo/ClientSDK-Get-Started-Voice-Swift).

Using the Github project you cloned, in the Start folder, open `GettingStarted.xcworkspace`. Then, within XCode:

    
1. Open `Constants.swift` file and add a jwt for `Jane`:

```swift
    var jwt: String {
        switch self {
        case .jane:
            return "" //TODO: swap with a token for Jane
        ...
```

as well as a  phone number to call:

```swift
    static let calleePhoneNumber = "" //TODO: swap with a phone number to call
```


2. From the `Make-phone-call` group, open `MakePhoneCallViewController.swift` file and make sure the following lines exist:

* `import NexmoClient` - imports the sdk
* `let user = User.jane` - sets the user that places the call
* `var client: NXMClient?` - property for the client instance
* `var call: NXMCall?` - property for the call instance
