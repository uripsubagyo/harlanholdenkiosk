//
//  PaymentView.swift
//  harlanholdenkiosk
//
//  Created by I Made Urip Subagyo on 21/05/24.
//

import SwiftUI

struct PaymentView: View {
    
    @State var dataPayment: [Payment] = paymentData
    
    private let adaptiveColumns = Array(repeating: GridItem(.flexible(), spacing: 30), count: 3)
    
    
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
            
            Text("Payment")
            
            Divider()
            LazyVGrid(columns: adaptiveColumns,spacing: 2) {
                ForEach(dataPayment, id: \.id) { menu in
                    Image(menu.image).resizable().frame(maxWidth: 200, maxHeight: 100)
                }
            }
        }.padding(20)
    }
}

struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView()
    }
}
