//
//  WorldTravelTabView.swift
//  WorldTravelApp
//
//  Created by luane Niejelski.
//

import SwiftUI

struct WorldTravelTabView: View {
    
    var body: some View {
        TabView {
            NavigationView {
                ToDoListView()
            }
            .tabItem {
                VStack {
                    Image(systemName: "person.fill")
                    Text("Profile")
                        .background(Color.accentColor)
                }
            }
            
            LocationsView()
                .tabItem {
                    VStack{
                        Image(systemName: "map.fill")
                        Text("Navigate")
                        
                    }
                }
        }
    }
}

struct WorldTravelTabView_Previews: PreviewProvider {
    static var previews: some View {
        WorldTravelTabView()
    }
}
