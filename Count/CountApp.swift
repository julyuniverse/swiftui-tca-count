//
//  CountApp.swift
//  Count
//
//  Created by July universe on 2023/01/10.
//

import SwiftUI
import ComposableArchitecture

@main
struct CountApp: App {
    var body: some Scene {
        WindowGroup {
            CountView(store: Store(initialState: Count.State(), reducer: Count()._printChanges()))
        }
    }
}
