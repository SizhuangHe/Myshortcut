//
//  DataStore.swift
//  Myshortcut
//
//  Created by Sizhuang He on 5/17/22.
//

import Foundation

class block: ObservableObject{
    @Published var blockArr:[Int]
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
