//
//  SideMenuView.swift
//  SlideMenuSample
//
//  Created by Shinya Ema on 2021/08/06.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .trailing).ignoresSafeArea()
            VStack{
                SideMenuHeaderView(isShowing: $isShowing).foregroundColor(.white)
                    .frame(width: nil, height: 210, alignment: .center)
                
                ForEach(0..<5) { index in
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            SideMenuOptionView().foregroundColor(.white)
                        })
                }
                
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
