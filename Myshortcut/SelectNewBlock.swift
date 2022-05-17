//
//  SelectNewBlock.swift
//  Myshortcut
//
//  Created by Sizhuang He on 5/17/22.
//

import SwiftUI

struct newBlock{
    var name:String
    @State var isSelected:Bool = false
}

struct SelectNewBlock: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var newBlockName:String
    
    
    var blockOptions = [
        newBlock(name: "Normal block 1"),
        newBlock(name: "Normal block 2"),
        newBlock(name: "Normal block 3"),
        newBlock(name: "Normal block 4"),
        newBlock(name: "Normal block 5"),
        newBlock(name: "the if block")
    ]
    
    var body: some View {
        List{
            ForEach(blockOptions, id: \.name){ item in
                Button{
                    newBlockName = item.name
                } label:{
                    Text(item.name)
                        .frame(maxWidth: .infinity , alignment: .center)
                }
            }
        }
    }
}

//struct SelectNewBlock_Previews: PreviewProvider {
//    static var previews: some View {
//        SelectNewBlock()
//    }
//}
