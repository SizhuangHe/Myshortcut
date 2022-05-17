//
//  ProgramView.swift
//  Myshortcut
//
//  Created by Sizhuang on 5/16/22.
//

import SwiftUI

struct ProgramView: View {
    @State private var isShowingSheet = false
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill()
                .foregroundColor(.orange)
            VStack{
                HStack{
                    Spacer()
                
                    Button{
                        isShowingSheet.toggle()
                    } label: {
                        Image(systemName: "ellipsis.circle.fill")
                        .foregroundColor(Color.white)
                        .padding()
                    }
                    .sheet(isPresented: $isShowingSheet){
                        BlockList()
                    }
//
                }
                Text("New Shortcut")
                    .font(.body)
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                Text("Actions")
                    .font(.footnote)
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
            }
        }
    }
}

struct ProgramView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramView()
    }
}
