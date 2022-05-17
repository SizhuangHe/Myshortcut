//
//  BlockList.swift
//  Myshortcut
//
//  Created by Sizhuang on 5/16/22.
//

import SwiftUI

struct BlockList: View {
    var body: some View {
        NavigationView{
            VStack{
                addBlock
                ScrollView{
                    VStack{
                        
                        BlockView()
                        BlockView()
                        BlockView()
                    }
                }
            }
        }
    }
    
    var addBlock: some View{
        
        Button{
            Text("do")
        } label: {
            HStack{
                Image(systemName: "plus.circle.fill")
                Text("Add Action")
            }
        }
    }
}

struct BlockList_Previews: PreviewProvider {
    static var previews: some View {
        BlockList()
    }
}
