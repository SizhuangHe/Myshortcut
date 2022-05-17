//
//  BlockList.swift
//  Myshortcut
//
//  Created by Sizhuang on 5/16/22.
//

import SwiftUI



struct BlockList: View {
    @State var blockCount = 3 // TODO: change to 0
    @State private var blocks:[BlockView()] = []
    
    func move(from source: IndexSet, to destination: Int) {
        blocks.move(fromOffsets: source, toOffset: destination)
    }
    
    var body: some View {
        NavigationView{
            VStack{
                addBlock
                ScrollView{
                    VStack{
                        //Text("\(blockCount)")
                        ForEach(1..<blockCount+1){ i in
                            blocks.append(BlockView())
                            BlockView()
                                .padding()
                        }
                        .onMove(perform: move)
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
                        .bold()
                }
                .frame(maxWidth: .infinity)
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
