//
//  ListRowView.swift
//  WorldTravelApp
//
//  Created by luane Niejelski.
//

import SwiftUI

struct ToDoListRowView: View {
    
    let item: ItemListModel
    
    var body: some View {
        
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical,8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemListModel(title: "First item!", isCompleted: false)
    static var item2 = ItemListModel(title: " Second item!", isCompleted: true)
    
    
    static var previews: some View {
        Group {
            ToDoListRowView( item: item1)
            ToDoListRowView( item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
