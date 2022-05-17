//
//  BlockView.swift
//  Myshortcut
//
//  Created by Sizhuang on 5/16/22.
//

import SwiftUI
import UIKit



struct BlockView: View {
    @State private var isShowingSheet = false
    @State private var buttonName = "Condition"
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill()
                .foregroundColor(Color(UIColor.systemGray5))

            HStack{
                Text("If")
                        .padding(.horizontal)
                Button{
                    isShowingSheet.toggle()
        
                } label:{
                    Text(buttonName)
                }
                .buttonStyle(.bordered)
                .sheet(isPresented: $isShowingSheet){
                    SelectionList(buttonName: $buttonName)
                }
                .padding(.horizontal)
                    Text("blablabla")
                        .padding(.horizontal)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
                
        }
    }
}

struct BlockView_Previews: PreviewProvider {
    static var previews: some View {
        BlockView()
    }
}
