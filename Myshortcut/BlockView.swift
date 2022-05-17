//
//  BlockView.swift
//  Myshortcut
//
//  Created by Sizhuang on 5/16/22.
//

import SwiftUI

func seeMore(){
    Text("See more")
}

struct BlockView: View {
    @State private var isShowingSheet = false
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill()
                .foregroundColor(.gray)

            HStack{
            Text("If")
                .padding()
            
                Button{
                    isShowingSheet.toggle()
                } label:{
                    Text("Condition")
                }
                .sheet(isPresented: $isShowingSheet){
                    SelectionList()
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        
        }
    }
}

struct BlockView_Previews: PreviewProvider {
    static var previews: some View {
        BlockView()
    }
}
