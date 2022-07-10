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
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ToDoListView()
            }
            .environmentObject(listViewModel)
               LocationsView()
            .environmentObject(vm)
            
            }
        }
    }

