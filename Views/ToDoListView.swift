//
//  ToDoListView.swift
//  WorldTravelApp
//
//  Created by luane Niejelski.
//

import SwiftUI
/*
 CRUD Functions
 Create
 Read
 Update
 Delete
 */

struct ToDoListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
                ToDoListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear) {
                            listViewModel.updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform:listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
         }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
        leading: EditButton(),
           trailing:
    NavigationLink("Add", destination: AddViewList())
            
        )
    }
   
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        ToDoListView()
        }
        .environmentObject(ListViewModel())
    }
    
}

