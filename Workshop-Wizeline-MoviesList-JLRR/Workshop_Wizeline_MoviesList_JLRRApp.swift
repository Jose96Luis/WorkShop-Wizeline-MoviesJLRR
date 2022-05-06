//
//  Workshop_Wizeline_MoviesList_JLRRApp.swift
//  Workshop-Wizeline-MoviesList-JLRR
//
//  Created by Jose Luis Rodriguez on 06/05/22.
//

import SwiftUI

@main
struct Workshop_Wizeline_MoviesList_JLRRApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
