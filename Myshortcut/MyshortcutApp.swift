//
//  MyshortcutApp.swift
//  Myshortcut
//
//  Created by Sizhuang on 5/16/22.
//

import SwiftUI



@main
struct MyshortcutApp: App {
    
    var body: some Scene {
       
        WindowGroup {
            ContentView()
                .environmentObject(Blocks())
                .environmentObject(program())
        }
    }
}
