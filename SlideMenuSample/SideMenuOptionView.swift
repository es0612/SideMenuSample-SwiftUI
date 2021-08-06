//
//  SideMenuOptionView.swift
//  SlideMenuSample
//
//  Created by Shinya Ema on 2021/08/06.
//

import SwiftUI

struct SideMenuOptionView: View {
    var body: some View {
        HStack(spacing: 12, content: {
            Image(systemName: "person").frame(width: 24, height: 24, alignment: .center)
            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/.font(.system(size: 18, weight: .semibold, design: .default))
            Spacer()
        })
        .padding()
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView()
    }
}
