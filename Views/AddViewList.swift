//
//  AddViewList.swift
//  WorldTravelApp
//
//  Created by luane Niejelski.
//

import SwiftUI

struct AddViewList: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.162, brightness: 0.256, opacity: 0.079)/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
                
    Button(action: saveButtonPressed, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color(hue: 0.577, saturation: 1.0, brightness: 1.0, opacity: 0.913))
                        .cornerRadius(10)
                })
                
            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖊")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPressed() {
        if textIsApropriate() {
        listViewModel.addItem(title: textFieldText)
        presentationMode.wrappedValue.dismiss()
            
        }
    }
    
    func textIsApropriate()-> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your new todo item must be at least 3 characters long!!!"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddViewList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddViewList()
        }
                .environmentObject(ListViewModel())
        
    }
}
