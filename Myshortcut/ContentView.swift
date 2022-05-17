//
//  ContentView.swift
//  Myshortcut
//
//  Created by Sizhuang on 5/16/22.
//

import SwiftUI

struct ContentView: View {
    @State var shortcutCount = 1
    
    
    var body: some View {
       NavigationView{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160))]){
                    ForEach(1..<shortcutCount + 1){ i in
                        ProgramView()
                            .aspectRatio(3/2, contentMode: .fit)
                            .padding()
                    }
                }
            }
           
            .navigationTitle("All Shortcuts")
            .toolbar{
                addProgram
            }
        }
        
    }
    
    var addProgram: some View{
        Button{
            shortcutCount += 1
        } label: {
            Image(systemName: "plus")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
