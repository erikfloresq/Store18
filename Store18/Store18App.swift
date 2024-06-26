//
//  Store18App.swift
//  Store18
//
//  Created by Erik Flores on 12/06/24.
//

import SwiftUI
import SwiftData

@main
struct Store18App: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            StoreView()
        }
        .modelContainer(sharedModelContainer)
    }
}
