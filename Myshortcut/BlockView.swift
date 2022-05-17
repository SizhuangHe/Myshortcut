//
//  BlockView.swift
//  Myshortcut
//
//  Created by Sizhuang on 5/16/22.
//

import SwiftUI

func seeMore(){
    Text("See more")
}

struct BlockView: View {
    var body: some View {
        HStack{
//            RoundedRectangle(cornerRadius: 10)
//                .fill()
//                .foregroundColor(.white)
//                .frame(width: 200, height: 100)
//            RoundedRectangle(cornerRadius: 10)
//                .stroke(.gray)
//                .frame(width: 200, height: 100)
            
            Text("parameter")
                .padding()
            
            Spacer()
        
        }
    }
}

struct BlockView_Previews: PreviewProvider {
    static var previews: some View {
        BlockView()
    }
}
