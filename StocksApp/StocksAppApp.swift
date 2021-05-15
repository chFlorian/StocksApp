//
//  StocksAppApp.swift
//  StocksApp
//
//  Created by florian schweizer on 30.04.21.
//

import SwiftUI

@main
struct StocksAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
