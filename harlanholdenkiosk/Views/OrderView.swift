//
//  OrderView.swift
//  harlanholdenkiosk
//
//  Created by I Made Urip Subagyo on 21/05/24.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        VStack{
            ZStack(){
                HStack{
                    Button{
                        print("BACK VIEW")
                    }label: {
                        HStack{
                            Image(systemName: "arrow.backward").frame(width:20, height: 20).foregroundColor(Color.black)
                            Text("back").font(Font.custom("Poppins-Reguler", size: 16)).foregroundColor(Color.black)
                        }.padding(8).padding(.leading,10).padding(.trailing,10)
                    }
                    .cornerRadius(100)
                    .overlay(RoundedRectangle(cornerRadius: 100)
                    .stroke(Color.black, lineWidth:2))
                    Spacer()
                }
                Image("HarlanIcon").resizable().frame(width: 120, height: 120)
            }.frame(maxWidth: .infinity)
            
            Text("Order")
            
            Divider()
            ScrollView{
                HStack{
                    Image("chocolatemilk").resizable().frame(width: 77, height: 77).cornerRadius(10)
                    VStack{
                        Text("Sea Salt Latte").font(Font.custom("Poppins-Reguler", size: 15)).foregroundColor(Color("grayHarlan"))
                        Text("Normal Ice  |  Less Sugar  |  Medium Bean  |  Dairy MilkCaramel Sauce").frame(width: 400).font(Font.custom("Poppins-Reguler", size: 15)).foregroundColor(Color("grayLight"))
                    }.frame(alignment: .leading)
                    Spacer()
                    VStack{
                        Text("Rp70.000")
                        Text("Qty: 1").font(Font.custom("Poppins-Reguler", size: 15)).foregroundColor(Color("grayHarlan"))
                    }
                }
            }
            
        }.padding(20)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
