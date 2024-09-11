//
//  ContentView.swift
//  ToDoApp
//
//  Created by Alejandro Guerra on 10/09/24.
//

import SwiftUI

struct ContentView: View {
    @State var descriptionNote:String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Text("añade una tarea")
                    .underline()
                    .foregroundColor(.gray)
                    .padding(.horizontal,26)
                TextEditor(text: $descriptionNote)
                    .foregroundColor(.gray)
                    .frame(height: 100)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(.red, lineWidth: 2)
                    )
                    .padding(.horizontal, 12)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                Button("Crear"){
                    descriptionNote = ""
                }.buttonStyle(.bordered)
                    .tint(.red)
            }.navigationTitle("To-Do App")
        }
    }
}

#Preview {
    ContentView().preferredColorScheme(.dark)
}
