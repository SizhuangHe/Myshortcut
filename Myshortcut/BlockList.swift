//
//  BlockList.swift
//  Myshortcut
//
//  Created by Sizhuang on 5/16/22.
//

import SwiftUI



struct BlockList: View {
    @State var blockCount = 0
    @State private var isShowingBlockSheet = false
    @State private var blocks:[Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    @State private var newBlockName = "Normal block 1"
    
    func move(from source: IndexSet, to destination: Int) {
        blocks.move(fromOffsets: source, toOffset: destination)
    }
    
    var body: some View {
        NavigationView{
            VStack{
                addBlock
                List{
                    ForEach(blocks[1..<blockCount+1],id:\.self){ i in
                        BlockView()
                    }
                    .onMove(perform: move)
                }
                .frame(maxWidth: .infinity)
                .toolbar{
                    EditButton()
                }
            }
        }
    }
    
    var addBlock: some View{
            Button{
                isShowingBlockSheet = true
            } label: {
                HStack{
                    Image(systemName: "plus.circle.fill")
                    Text("Add Action")
                        .bold()
                }
                .frame(maxWidth: .infinity)
            }
            .sheet(isPresented: $isShowingBlockSheet){
                SelectNewBlock(newBlockName: $newBlockName)
            }
            .buttonStyle(.bordered)
            .tint(.blue)
            .controlSize(.large)
            .padding()
    }
}

struct BlockList_Previews: PreviewProvider {
    static var previews: some View {
        BlockList()
    }
}
