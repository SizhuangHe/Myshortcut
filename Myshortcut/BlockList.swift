//
//  BlockList.swift
//  Myshortcut
//
//  Created by Sizhuang on 5/16/22.
//

import SwiftUI



struct BlockList: View {
    @EnvironmentObject private var blocks: Blocks
    
    @State private var isShowingBlockSheet = false
    
    func move(from source: IndexSet, to destination: Int) {
        blocks.blockArr.move(fromOffsets: source, toOffset: destination)
    }
    
    var body: some View {
        NavigationView{
            VStack{
                addBlock
                List{
                    if blocks.blockArr.count > 0{
                        ForEach(blocks.blockArr.indices,id:\.self){ index in
                            if blocks.blockArr[index].blockType == BlockType.IfBlock{
                                IfBlockView()
                            }else if blocks.blockArr[index].blockType == BlockType.EndIfBlock{
                                EndIfBlockView()
                            }else{
                                if blocks.blockArr[index - 1].blockType == BlockType.IfBlock{
                                    blocks.blockArr[index].indented = true
                                }
                                if blocks.blockArr[index - 1].indented{
                                    blocks.blockArr[index].indented = true
                                }
                                if blocks.blockArr[index].indented{
                                    HStack{
                                        Text("     ")
                                        NormalBlockView()
                                    }
                                }else{
                                    NormalBlockView()
                                }
                            }
                        }
                        .onMove(perform: move)
                    }
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
                SelectNewBlock()
                    .environmentObject(blocks)
            }
            .buttonStyle(.bordered)
            .tint(.blue)
            .controlSize(.large)
            .padding()
    }
}


//struct BlockList_Previews: PreviewProvider {
//    static var previews: some View {
//        BlockList()
//            .environmentObject(blocks)
//            
//    }
//}
