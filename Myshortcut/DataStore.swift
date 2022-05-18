//
//  DataStore.swift
//  Myshortcut
//
//  Created by Sizhuang He on 5/17/22.
//

import Foundation

enum BlockType {
    case NormalBlock, IfBlock, EndIfBlock
}

struct block: Hashable, Identifiable{
    var id = UUID().uuidString
    var name:String
    var blockType = BlockType.NormalBlock
    var indented = false
    
}

class Blocks: ObservableObject{
    @Published var blockArr:[block]
    init(){
        blockArr = []
    }
    
    func getIndentationRight(){
        for index in self.blockArr.indices{
            if index == 0{
                self.blockArr[index].indented = false
            }else{
                if self.blockArr[index - 1].blockType == BlockType.IfBlock || self.blockArr[index - 1].indented{
                    if self.blockArr[index].blockType == BlockType.NormalBlock{
                        self.blockArr[index].indented = true
                    }else{
                        self.blockArr[index].indented = false
                    }
                }else{
                    self.blockArr[index].indented = false
                }
            }
        }
    }
}

class program: ObservableObject{
    @Published var progArr:[Int]
    init(){
        progArr = []
    }
}
