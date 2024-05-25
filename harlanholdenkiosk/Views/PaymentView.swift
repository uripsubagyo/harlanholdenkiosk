import SwiftUI

struct PaymentView: View {
    
    @State var dataPayment: [Payment] = paymentData
    
    @State var isActive: String = "none"
    
    private let adaptiveColumns = Array(repeating: GridItem(.flexible(), spacing: 30), count: 2)

    @Environment(\.dismiss) var dismiss
    

    var body: some View {
        VStack{
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
                        VStack{
                            Image(menu.image).resizable().frame(minWidth: 150, maxHeight: 110).padding(30).overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color(isActive == menu.name ? "grayHarlan" : "grayLight"), lineWidth: 5).onTapGesture {
                                        self.isActive = menu.name
                                    }
                            )
                        }}
                }.padding(.top,20)
                Spacer()
            }.padding(.leading,40).padding(.trailing,40)
            if isActive == "Qris"{
                NavigationLink(value: Routes.waiting){VStack{
                    Text("Pay")
                        .foregroundColor(Color("goldLight"))
                        .font(Font.custom("Poppins-Reguler", size: 30))
                        .padding(10)
                }.padding(20).frame(maxWidth: .infinity).background(Color("grayHarlan"))}
            }
        }
    }
}

struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView()
    }
}
