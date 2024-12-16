//
//  KickKartApp.swift
//  KickKart
//
//  Created by Dinesh Dev on 03/07/24.
//

import SwiftUI

@main
struct KickKartApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            AppTabView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
