//
//  ContentView.swift
//  SlideMenuSample
//
//  Created by Shinya Ema on 2021/08/06.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowing = false
    
    var body: some View {
        NavigationView {
            ZStack {
                if isShowing {
                    SideMenuView(isShowing: $isShowing)
                }
                HomeView()
                    .cornerRadius(isShowing ? 20:10)
                    .offset(x: isShowing ? 300:0, y: isShowing ? 42:0)
                    .scaleEffect(isShowing ? 0.8:1)
                    .navigationBarItems(
                        leading:
                            Button(
                                action: {
                                    withAnimation(.spring()) {
                                        isShowing.toggle()
                                    }
                                },
                                label: {
                                    Image(systemName: "list.dash")
                                        .foregroundColor(.black)
                                }
                            )
                    )
                    .navigationBarTitle("Home")
                    .navigationBarTitleDisplayMode(.automatic)
            }.onAppear{isShowing = false}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.white
            VStack(alignment: .leading, spacing: 18, content: {
                List{
                    ForEach(0..<20) { _ in
                        Text("content")
                    }
                }.cornerRadius(18)

                Spacer()
            }).padding()

            
        }
    }
}
