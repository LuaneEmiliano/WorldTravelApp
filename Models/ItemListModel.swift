//
//  ItemListModel.swift
//  WorldTravelApp
//
//  Created by luane Niejelski.
//

import Foundation

//Imutable struct
struct ItemListModel:Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemListModel {
        return ItemListModel(id: id, title: title, isCompleted: !isCompleted)
    }
}


