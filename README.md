# BaseColors

[![Swift](https://img.shields.io/badge/Swift-5.9+-orange.svg)](https://swift.org)
[![Platforms](https://img.shields.io/badge/Platforms-iOS%20|%20macOS%20|%20tvOS%20|%20watchOS-blue.svg)](https://developer.apple.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

A lightweight Swift package providing a standardized, dynamic SwiftUI color palette designed for unified styling across Apple platforms.

---

## Features

- **Cross-Platform**: Supports iOS 13+, macOS 11+, tvOS 13+, and watchOS 6+.
- **Light & Dark Mode Aware**: Backed by system asset catalogs for seamless dynamic appearance switching.
- **Drop-In SwiftUI Extensions**: Access palette colors directly through `Color` static members.

---

## Color Palette

`BaseColors` defines a consistent set of semantic design tokens:

| Token | Description |
|---|---|
| `Color.bg` | Primary background surface |
| `Color.main` | Primary branding / accent color |
| `Color.mainOpp` | Inverse contrast color for `main` |
| `Color.sub` | Secondary accent / tint |
| `Color.subTwo` | Tertiary accent tint |
| `Color.subThree` | Quaternary accent tint |
| `Color.subFour` | Quinary accent tint |
| `Color.subOpp` | Inverse contrast color for `sub` |

---

## Installation

### Swift Package Manager

In Xcode, select **File → Add Package Dependencies...** and enter the repository URL:

```text
https://github.com/GarrettButchko/base-colors.git
```

Or add it to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/GarrettButchko/base-colors.git", from: "1.0.0")
]
```

---

## Usage

Import `BaseColors` wherever you build SwiftUI views:

```swift
import SwiftUI
import BaseColors

struct ExampleView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Welcome")
                .font(.title)
                .foregroundStyle(Color.main)

            Text("Subtitle content here")
                .font(.body)
                .foregroundStyle(Color.sub)

            Button("Action") {
                // handle action
            }
            .padding()
            .background(Color.main)
            .foregroundStyle(Color.mainOpp)
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .padding()
        .background(Color.bg)
    }
}
```

---

## License

`BaseColors` is available under the [MIT License](LICENSE).
