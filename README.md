# vCardKit for Swift

[![Linux](https://github.com/swift-calendar/vcardkit/workflows/Linux/badge.svg)](https://github.com/swift-calendar/vcardkit/actions)
[![macOS](https://github.com/swift-calendar/vcardkit/workflows/macOS/badge.svg)](https://github.com/swift-calendar/vcardkit/actions)

A lightweight vCard (RFC 6350, `.vcf`) encoder for Swift.

## Example

```swift
import Foundation
import VCardKit

let card = VCard(
    fn: [.just("John Doe")],
    n: VCardName(
        surname: "Doe",
        given: "John"
    ),
    nickname: [.home("Joe")],
    gender: .male,
    tel: [
        .work(.voice("+31987654321")),
        .home(.text("+31123456789"))
    ],
    email: [.home("johndoe@example.com")]
)

// TODO
```

> Hint: Run `swift run --repl` to run an interactive Swift shell with access to the library
