
import Foundation

enum Item: Hashable {
    case app(App)
    case category(StoreCategory)
    
    var app: App? {
        if case .app(let app) = self {
            return app
        } else {
            return nil
        }
    }
    
    var category: StoreCategory? {
        if case .category(let category) = self {
            return category
        } else {
            return nil
        }
    }
    
    static let promotedApps: [Item] = [
        .app(App(promotedHeadline: "Now Trending", title: "FIFA 20", subtitle: "Game Description", price: 3.99)),
        .app(App(promotedHeadline: "Limited Time", title: "MORTAR COMBAT", subtitle: "Game Description", price: nil)),
        .app(App(promotedHeadline: "New Update", title: "ROAD RUSH", subtitle: "Game Description", price: nil)),
        .app(App(promotedHeadline: "Just Released", title: "INSIDE", subtitle: "Game Description", price: nil))
    ]
    
    static let popularApps: [Item] = [
        .app(App(promotedHeadline: nil, title: "FaceBook", subtitle: "Game Description", price: nil)),
        .app(App(promotedHeadline: nil, title: "Twitter", subtitle: "Game Description", price: 2.99)),
        .app(App(promotedHeadline: nil, title: "Snapchat", subtitle: "Game Description", price: nil)),
        .app(App(promotedHeadline: nil, title: "Shazam", subtitle: "Game Description", price: 9.99)),
        .app(App(promotedHeadline: nil, title: "Chrome browser", subtitle: "Game Description", price: nil)),
        .app(App(promotedHeadline: nil, title: "Slack", subtitle: "Game Description", price: nil)),
        .app(App(promotedHeadline: nil, title: "Spotify", subtitle: "Game Description", price: 6.99)),
        .app(App(promotedHeadline: nil, title: "Cursor", subtitle: "Game Description", price: nil)),
    ]
    
    static let essentialApps: [Item] = [
        .app(App(promotedHeadline: nil, title: "Reminder", subtitle: "Game Description", price: 0.99)),
        .app(App(promotedHeadline: nil, title: "Sleep Wave", subtitle: "Game Description", price: nil)),
        .app(App(promotedHeadline: nil, title: "Fury Frenzy", subtitle: "Game Description", price: 3.99)),
        .app(App(promotedHeadline: nil, title: "Firefox", subtitle: "Game Description", price: 0.99)),
        .app(App(promotedHeadline: nil, title: "Flycut", subtitle: "Game Description", price: 4.99)),
        .app(App(promotedHeadline: nil, title: "Notion", subtitle: "Game Description", price: 0.99)),
        .app(App(promotedHeadline: nil, title: "Photopea", subtitle: "Game Description", price: 0.99)),
    ]

    static let categories: [Item] = [
        .category(StoreCategory(name: "AR Games")),
        .category(StoreCategory(name: "Indie")),
        .category(StoreCategory(name: "Strategy")),
        .category(StoreCategory(name: "Racing")),
        .category(StoreCategory(name: "Puzzle")),
        .category(StoreCategory(name: "Board")),
        .category(StoreCategory(name: "Family")),
    ]
}
