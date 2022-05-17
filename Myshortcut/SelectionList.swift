//
//  SelectionList.swift
//  Myshortcut
//
//  Created by Sizhuang on 5/16/22.
//

import SwiftUI

struct selectionItem{
    var name:String
    var isSelected:Bool = false
}

struct SelectionList: View {
    
    private var listOfOptions = [
        selectionItem(name: "is"),
        selectionItem(name: "is not"),
        selectionItem(name: "has any value"),
        selectionItem(name: "has no values"),
        selectionItem(name: "contains"),
        selectionItem(name: "does not contain"),
        selectionItem(name: "starts with"),
        selectionItem(name: "ends with"),
        
        
    ]
    
    var body: some View {
        let optionList = listOfOptions
        List{
            ForEach(optionList, id: \.name){ item in
                Text(item.name)
                    .frame(maxWidth: .infinity , alignment: .center)
            }
        }
    }
}

struct SelectionList_Previews: PreviewProvider {
    static var previews: some View {
        SelectionList()
    }
}
