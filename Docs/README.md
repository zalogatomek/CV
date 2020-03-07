# CV

This project is my personal CV - literally and figuratively. It's some small showcase of my personal skills and preferences.

My goal is to write a CV app, that would work as an iOS app and a website, all writen in Swift.

## Technological stack

This might change in future, but in time of wirtting I plan to use:
- Swift
- SwiftUI for UI of iOS App
- Vapor for a website
- Fireabse as shared database for both apps
- DDD aproach, to share Domain between both apps

## High level architecture

Diagram shows very high level architecture.

![HighLevelArchitecture](https://raw.githubusercontent.com/zalogatomek/CV/master/Docs/Diagrams/HighLevelArchitecture.png)

Each element on a diagram is a separate framework or app. Two lines is a layer boundary. Elements in same layer are different implementation of same thing. Elements will be aslo splited on smaller sublayers.

### Domain

Domain is where business rules lives. Those are very high level rules, that are not dependent on a platform.

### Infrastructure

By infrastructure I mean outsdie-world for apps. Infrastructure implements domain, by hidding details such as database or networking. Apps should not know anything about infrastruture. Only except is module Main/DependencyContainer/CompositionRoot that provides concrete implementation to whole app.

I plan to use Firebase for iOS and Web in future, but starting point will be some simple JSON-based infrastructure.
