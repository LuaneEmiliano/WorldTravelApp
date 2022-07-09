//
//  WorldTravelApp.swift
//  WorldTravelApp
//
//  Created by luane Niejelski.
//

import SwiftUI

@main
struct WorldTravelAppApp: App {
    
@StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
