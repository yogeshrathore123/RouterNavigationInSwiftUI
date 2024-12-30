//
//  RouterNavigationInSwiftUIApp.swift
//  RouterNavigationInSwiftUI
//
//  Created by Yogesh Rathore on 30/12/24.
//

import SwiftUI

@main
struct RouterNavigationInSwiftUIApp: App {
    
    @ObservedObject var router = Router()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath) {
                if router.rootFlow == .a {
                    AView()
                        .navigationDestination(for: Router.Destination.self) { destination in
                            router.destination(for: destination)
                        }
                } else {
                    EView()
                }
                
            }
            .environmentObject(router)
        }
    }
}
