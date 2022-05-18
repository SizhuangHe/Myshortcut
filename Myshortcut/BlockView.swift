//
//  BlockView.swift
//  Myshortcut
//
//  Created by Sizhuang on 5/16/22.
//

import SwiftUI
import UIKit



struct IfBlockView: View {
    @State private var isShowingSheet = false
    @State private var buttonName = "Condition"
    
    var body: some View {
        //ZStack{
//            RoundedRectangle(cornerRadius: 10)
//                .fill()
//                .foregroundColor(Color(UIColor.systemGray5))

            HStack{
                Text("If")
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
                    
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
                
        }
    //}
}

struct NormalBlockView: View{
    
    var body: some View{
        Text("a Normal Block")
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct EndIfBlockView: View{
    var body: some View{
        Text("end if")
            .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

struct BlockView_Previews: PreviewProvider {
    static var previews: some View {
        IfBlockView()
    }
}
