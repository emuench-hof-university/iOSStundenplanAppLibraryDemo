//
//  SwiftPackageTestApp.swift
//  SwiftPackageTest
//
//  Created by Eric Münch on 15.10.20.
//

import SwiftUI

@main
struct SwiftPackageTestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: TestViewmodel())
        }
    }
}

struct SwiftPackageTestApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
