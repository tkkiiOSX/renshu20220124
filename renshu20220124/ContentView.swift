//
//  ContentView.swift
//  renshu20220124
//
//  Created by Xcode2021 on 2022/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "house")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color.red)
                Text("HOUSE")
                    .font(Font.system(size: 10).bold())
                    .foregroundColor(Color.blue)
            }
            .frame(width: 100, height: 50, alignment: .center)
            .overlay(
                            RoundedRectangle(cornerRadius: 0)
                                .stroke(Color.black, lineWidth: 1)
                        )
            Text("this is a test program.this is a test program")
                .font(Font.system(size: 10).bold())
                .foregroundColor(Color.black)
                .frame(width: 150, height: 50, alignment: .center)
                .overlay(
                                RoundedRectangle(cornerRadius: 0)
                                    .stroke(Color.black, lineWidth: 1)
                            )
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
