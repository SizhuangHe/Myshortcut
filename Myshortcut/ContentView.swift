//
//  ContentView.swift
//  Myshortcut
//
//  Created by Sizhuang on 5/16/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var programs:program
    
    
    var body: some View {
       NavigationView{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160))]){
                    if programs.progArr.count > 0{
                        ForEach(programs.progArr, id: \.self){ i in
                            ProgramView()
                                .aspectRatio(3/2, contentMode: .fit)
                                .padding()
                        }
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
            programs.progArr.append(programs.progArr.count)
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
