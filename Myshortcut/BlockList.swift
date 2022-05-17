//
//  BlockList.swift
//  Myshortcut
//
//  Created by Sizhuang on 5/16/22.
//

import SwiftUI

struct BlockList: View {
    @State var blockCount = 0
    
    var body: some View {
        NavigationView{
            VStack{
                addBlock
                ScrollView{
                    VStack{
                        ForEach(1..<blockCount+1){ i in
                            BlockView()
                        }
                    }
                }
            }
        }
    }
    
    var addBlock: some View{
        Button{
            blockCount += 1
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
