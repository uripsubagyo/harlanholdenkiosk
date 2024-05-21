//
//  PreScreenView.swift
//  harlanholdenkiosk
//
//  Created by I Made Urip Subagyo on 16/05/24.
//

import SwiftUI

struct PreScreenView: View {
    @State private var indexImage = 0
    @State private var imageData2: [PreImage] = preDataImage
    @State private var changeScreen = false
    
    var body: some View {
        NavigationStack{
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
                            .font(Font.custom("Poppins-Reguler", size: 40)).foregroundColor(Color("grayHarlan"))
                        
                    }.frame(maxWidth: .infinity)
                        .background(Color.white).onTapGesture {
                            self.changeScreen = true
                        }
                }
            }.onAppear{
                Timer.scheduledTimer(
                    withTimeInterval: 5,
                    repeats: true){ timer in
                        if self.indexImage + 1 == self.imageData2.count{
                            self.indexImage = 0
                        } else {
                            self.indexImage += 1
                        }
                    }
            }
        }.navigationDestination(isPresented: $changeScreen){
            HomeView()
        }
    }
}

struct PreScreenView_Previews: PreviewProvider {
    static var previews: some View {
        PreScreenView()
    }
}
