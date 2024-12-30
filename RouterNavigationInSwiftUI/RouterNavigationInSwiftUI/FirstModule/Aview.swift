//
//  Aview.swift
//  RouterNavigationInSwiftUI
//
//  Created by Yogesh Rathore on 30/12/24.
//

import SwiftUI

struct AView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack{
            Button("B") {
                router.navigate(to: .b)
            }
        }
        .navigationTitle("A")
    }
}

struct BView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Button("C") {
                router.navigate(to: .c)
            }
        }
        .navigationTitle("B")
    }
}

struct CView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Button("D") {
                router.navigate(to: .d)
            }
        }
        .navigationTitle("C")
    }
}

struct DView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack(spacing: 24) {
            Button("C - navigate Back") {
                router.navigateBack()
                
            }
            
            Button("Home - A Root") {
                router.navigateToRoot()
            }
            
            Button("B - navigate Back to paricular screen") {
                router.navigateBack(to: .b)
            }
            
            Button("New Root EEEE") {
                router.setRoot(.e)
            }
        }
        .navigationTitle("D")
    }
}

struct EView: View {
    var body: some View {
        VStack {
            Text("E - new Root")
        }
        .navigationTitle("Welcome!")
    }
}

#Preview {
    AView()
}
