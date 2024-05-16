//
//  PreScreenView.swift
//  harlanholdenkiosk
//
//  Created by I Made Urip Subagyo on 16/05/24.
//

import SwiftUI

struct PreScreenView: View {
    @State private var indexImage = 0
    
    var imageData: PreImage
    
    let imageData2: [PreImage] = preDataImage
    
    var body: some View {
        ZStack(alignment: .top){
            Image(imageData2[indexImage].image).resizable().ignoresSafeArea()
            
            VStack(){
                Image("LogoHarlanHolden")
                    .resizable().scaledToFit()
                    .frame(height: 40)
                    .padding(.top, 20)
                Spacer()
                VStack{
                    Text("Order Now")
                        .padding(30)
                        .font(.system(size: 40))
                    
                }.frame(maxWidth: .infinity)
                    .background(Color.white)
            }
        }.onAppear{
            Timer.scheduledTimer(
                withTimeInterval: 5,
                repeats: true){ timer in
                    if self.indexImage + 1 == self.imageData.image.count{
                        self.indexImage = 0
                    } else {
                        self.indexImage += 1
                    }
                }
        }
    }
}

struct PreScreenView_Previews: PreviewProvider {
    static var previews: some View {
        PreScreenView(imageData: preDataImage[1])
    }
}
