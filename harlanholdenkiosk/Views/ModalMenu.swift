//
//  ModalMenu.swift
//  harlanholdenkiosk
//
//  Created by I Made Urip Subagyo on 21/05/24.
//

import SwiftUI

struct ModalMenu: View {
    var body: some View {
        ZStack{
            VStack{}.frame(maxWidth: .infinity).frame(maxHeight: .infinity).background(Color("opa-black").opacity(0.5))
            VStack{
                HStack{
//                    Image()
                    Image("chocolatemilk").resizable().frame(width: 150, height: 150).cornerRadius(10)
                    VStack{
                        Text("sea sal latte").font(Font.custom("Poppins-Reguler", size: 20)).foregroundColor(Color("grayHarlan")).frame(maxWidth: .infinity, alignment: .leading)
                        Text("a brown sugar latte topped with a sea sal cream.").font(Font.custom("Poppins-Reguler", size: 15)).foregroundColor(Color("grayLight"))
                    }.background(Color.black).frame(maxWidth: .infinity)
                }
                Divider()

                Text("Temperature")
                
                
                Text("Bean")
                
                Text("Milk")
                
                
            }.padding(20).background(Color.white).cornerRadius(20).frame(maxWidth: 500)
        }
    }
}

struct ModalMenu_Previews: PreviewProvider {
    static var previews: some View {
        ModalMenu()
    }
}
