//
//  CartBucketView.swift
//  harlanholdenkiosk
//
//  Created by I Made Urip Subagyo on 23/05/24.
//

import SwiftUI

struct CartBucketView: View {
    
    @EnvironmentObject var cartManager : CartManager
    
    var body: some View {
        HStack{
            HStack{
                Image("HarlanIcon").resizable().frame(width: 120, height: 120)
                VStack(alignment: .leading){
                    Text("Rp\(cartManager.totalPayment())").font(.system(size: 30, weight: Font.Weight.medium))
                    Text("\(cartManager.getCountCart()) Items")
                }.foregroundColor(Color.white)
                Spacer()
            }.background(Color("grayHarlan"))
            NavigationLink(value:Routes.order){
                VStack{
                    Text("Pay").padding(.horizontal,80).frame(maxHeight: .infinity)
                        .font(.system(size: 30, weight: Font.Weight.bold))
                        .foregroundColor(Color("grayHarlan"))

                }.background(Color("grayLight"))
            }
        }.frame(maxWidth: .infinity).frame(height: 100).opacity(cartManager.isHidden() ? 0 : 1)
    }
}

struct CartBucketView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
