//
//  NoItemsListView.swift
//  WorldTravelApp
//
//  Created by luane Niejelski.
//

import SwiftUI

struct NoItemsListView: View {
    
    @State var animate: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you looking for a place to set up your travel notes? Our ToDo list is a perfect spot for you!")
                    .padding(.bottom, 20)
                NavigationLink(
                    destination: AddViewList(),
                    label: {
                        Text("Add Something 😎! ")
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height: 55)
                            .frame(maxWidth:.infinity)
                            .background(Color(hue: 0.599, saturation: 1.0, brightness: 1.0, opacity: 0.968))
                            .cornerRadius(10)
                    })
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    func addAnimation() {
        guard !animate else {return}
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(.easeInOut) {
                animate.toggle()
            }
        }
    }
}

struct NoItemsListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NoItemsListView()
                .navigationTitle("Title")
        }
    }
}
