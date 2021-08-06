//
//  SideMenuHeaderView.swift
//  SlideMenuSample
//
//  Created by Shinya Ema on 2021/08/06.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            Button(action: {
                withAnimation {
                    isShowing.toggle()
                }
                
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 36, height: 36, alignment: .center)
                    .padding()
            })
            
            VStack(alignment: .leading) {
                Image("nature")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64, alignment: .center)
                    .clipShape(Circle())
                    .padding(.bottom, 12)
                
                Text("Devs: Shinya")
                    .font(.system(size: 24, weight: .semibold, design: .default))
                Text("@shinya").font(.system(size: 14))
                    .padding(.bottom, 12)
                
                HStack(spacing:12){
                    HStack(spacing:6){
                        Text("100").bold()
                        Text("following")
                    }
                    HStack(spacing:6){
                        Text("200").bold()
                        Text("followers")
                    }
                    Spacer()
                }
                
                Spacer()
            }.padding()
        }
        
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
