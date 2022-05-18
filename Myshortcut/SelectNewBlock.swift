//
//  SelectNewBlock.swift
//  Myshortcut
//
//  Created by Sizhuang He on 5/17/22.
//

import SwiftUI


struct SelectNewBlock: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject private var blocks: Blocks
    
    
    
    let blockOptions = [
        block(name: "Normal block 1"),
        block(name: "Normal block 2"),
        block(name: "Normal block 3"),
        block(name: "Normal block 4"),
        block(name: "Normal block 5"),
        block(name: "the if block", blockType: BlockType.IfBlock)
    ]
    
    var body: some View {
        List{
            ForEach(blockOptions, id: \.name){ item in
                Button{
                    if item.name == "the if block"{
                        blocks.blockArr.append(block(name: "the if block", blockType: BlockType.IfBlock))
                        blocks.blockArr.append(block(name: "the endif block", blockType: BlockType.EndIfBlock))
                    }else{
                        blocks.blockArr.append(block(name: "Normal block", blockType: BlockType.NormalBlock))
                    }
                    
                    presentationMode.wrappedValue.dismiss()
                        
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
