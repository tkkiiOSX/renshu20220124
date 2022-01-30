//
//  ContentView.swift
//  renshu20220124
//
//  Created by Xcode2021 on 2022/01/24.
//

import SwiftUI


struct ContentView: View {

    @State var OnOff = false
    //@State var RightP = false

    var body: some View {
        VStack{
            HStack{
                Image(systemName: "car.fill")
                //Image(systemName: "cup.and.saucer.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(OnOff ? Color.blue :Color.red )
                /*Image(systemName: "person")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(OnOff ? Color.red : Color.gray)*/
                    //.foregroundColor(Color.blue)
                /*Text("HOUSE")
                    .font(Font.system(size: 10).bold())
                    .foregroundColor(Color.blue)*/
            }
            HStack {
                Button(action: {

                    OnOff = false
                                }) {
                                    VStack{
                                        Image(systemName: "car.fill")
                                            .foregroundColor(Color.red)
                                        Text("赤")
                                            .foregroundColor(Color.red)
                                            .bold()
                                            .padding()
                                    }
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(Color.white)
                                    .background(Color.gray )
                                    .cornerRadius(10)

                                }
                Button(action: {

                    OnOff = true
                                }) {
                                    VStack {
                                        Image(systemName: "car.fill")
                                            .foregroundColor(Color.blue)
                                        Text("青")
                                            .foregroundColor(Color.blue)
                                            .bold()
                                            .padding()

                                    }
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(Color.white)
                                    .background(Color.gray )
                                    //.background(Color.blue)
                                    .cornerRadius(10)
                                    }

            }


            /*.frame(width: 100, height: 50, alignment: .center)
            .overlay(
                            RoundedRectangle(cornerRadius: 0)
                                .stroke(Color.black, lineWidth: 1)
                        )*/
            /*Text("this is a test program.this is a test program")
                .font(Font.system(size: 10).bold())
                .foregroundColor(Color.black)
                .frame(width: 150, height: 50, alignment: .center)
                .overlay(
                                RoundedRectangle(cornerRadius: 0)
                                    .stroke(Color.black, lineWidth: 1)
                            )*/
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
