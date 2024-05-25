import SwiftUI

struct PreScreenView: View {
    @State private var indexImage = 0
    @State private var imageData2: [PreImage] = preDataImage
        
    var body: some View {
            ZStack(alignment: .top){
                Image(imageData2[indexImage].image).resizable().ignoresSafeArea()
                VStack(){
                    Image("LogoHarlanHolden")
                        .resizable().scaledToFit()
                        .frame(height: 40)
                        .padding(.top, 20)
                    Spacer()
                    NavigationLink(value: Routes.home){
                        VStack{
                            Text("Order Now")
                                .padding(30)
                                .font(Font.custom("Poppins-Reguler", size: 40)).foregroundColor(Color("grayHarlan")).onTapGesture {
                                    print("Change Screen")
                                }

                        }.frame(maxWidth: .infinity)
                            .background(Color.white).onTapGesture {
                                print("Change Screen")
                            }
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
        }
    }

struct PreScreenView_Previews: PreviewProvider {
    static var previews: some View {
        PreScreenView()
    }
}
