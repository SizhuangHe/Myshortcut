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

struct block: Hashable{
    var id = UUID()
    var name:String
    var blockType = BlockType.NormalBlock
    var indented = false
    
}

class Blocks: ObservableObject{
    @Published var blockArr:[block]
    init(){
        blockArr = []
    }
}

class program: ObservableObject{
    @Published var progArr:[Int]
    init(){
        progArr = []
    }
}
