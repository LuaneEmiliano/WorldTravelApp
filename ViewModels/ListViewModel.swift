//
//  ListViewModel.swift
//  WorldTravelApp
//
//  Created by luane Niejelski.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items:[ItemListModel] = [] {
        didSet {
            saveItems()
        }
    }
    let itemsKey: String = "items_list"
    
    init() {
        getItems()
    }
    func getItems() {
      guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
        let savedItems = try? JSONDecoder().decode([ItemListModel].self, from: data)
        else {return}
        
        self.items = savedItems
    }
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from:IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title: String) {
        let newItem = ItemListModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    func updateItem(item: ItemListModel) {   
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
    }
    
 func saveItems() {
        if let encondedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encondedData,forKey: itemsKey)
        }
    }
}
