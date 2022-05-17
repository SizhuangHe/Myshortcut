//
//  SelectionList.swift
//  Myshortcut
//
//  Created by Sizhuang on 5/16/22.
//

import SwiftUI

struct selectionItem{
    var name:String
    @State var isSelected:Bool = false
}

struct SelectionList: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var buttonName:String
    
     var listOfOptions = [
        selectionItem(name: "is"),
        selectionItem(name: "is not"),
        selectionItem(name: "has any value"),
        selectionItem(name: "has no values"),
        selectionItem(name: "contains"),
        selectionItem(name: "does not contain"),
        selectionItem(name: "starts with"),
        selectionItem(name: "ends with"),
        selectionItem(name: "Cancel")
        
        
    ]
    
    var body: some View {
        List{
            ForEach(listOfOptions, id: \.name){ item in
                Button{
                    if item.name != "Cancel"{
                        buttonName = item.name
                    }
                    item.isSelected = true
                    presentationMode.wrappedValue.dismiss()
                    
                } label:{
                    Text(item.name)
                        .frame(maxWidth: .infinity , alignment: .center)
                }
              
            }
           
        }
    }
}

//struct SelectionList_Previews: PreviewProvider {
//    static var previews: some View {
//        SelectionList()
//    }
//}
