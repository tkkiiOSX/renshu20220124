//
//  ContentView.swift
//  renshu20220124
//
//  Created by Xcode2021 on 2022/01/24.
//

import SwiftUI


struct ContentView: View {

    @State var OnOff = false
    @State var sugar = 0
    @State var milk = 0

    var body: some View {
        VStack {
            VStack {
                Image(systemName: "cup.and.saucer.fill")

                    .resizable()
                    .frame(width: 120, height: 100)
                    .foregroundColor(OnOff ? Color.brown :Color.black )
                
                HStack {
                    Stepper(value: $milk, in: 0 ... 5) {
                        Text("牛乳　\(milk)")
                    }
                    ForEach(0 ..< 5, id: \.self) {
                            index in
                        VStack {
                            if index < milk {
                                Image(systemName: "sun.max")
                            }
                            else {
                                Image(systemName: "moon.fill")
                            }
                            Text("\(index)")
                        }

                    }
                }
                HStack {
                    Stepper(value: $sugar, in: 0 ... 5) {
                            Text("砂糖　\(sugar)")
                    }
                    ForEach(0 ..< 5, id: \.self) {
                                index in
                        VStack {
                            if index < sugar {
                                Image(systemName: "sun.max")
                            }
                            else {
                                Image(systemName: "moon.fill")
                            }
                            Text("\(index)")
                        }
                    }
                }
            }
        }



            /*HStack {
                Button(action: {
                    OnOff.toggle()
                    sugar.toggle()


                                }) {
                                    VStack{
                                        Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                                            .foregroundColor(sugar ? Color.white :Color.black )
                                        Text("砂糖")
                                            .foregroundColor(sugar ? Color.white :Color.black )
                                            .bold()
                                            .padding()
                                    }
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(Color.white)
                                    .background(sugar ? Color(white: 0):Color.gray)
                                    .cornerRadius(10)

                                }
                Button(action: {
                    OnOff.toggle()
                    milk.toggle()

                                }) {
                                    VStack {
                                        Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                                            .foregroundColor(milk ? Color.white :Color.black )
                                        Text("ミルク")
                                            .foregroundColor(milk ? Color.white :Color.black )
                                            .bold()
                                            .padding()

                                    }
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(Color.white)
                                    .background(milk ? Color(white: 0):Color.gray)
                                    .cornerRadius(10)
                                    }*/




    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
