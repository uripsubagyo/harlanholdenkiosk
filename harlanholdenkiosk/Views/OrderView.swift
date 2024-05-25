import SwiftUI

struct OrderView: View {
    @Environment(\.dismiss) var dismiss
    
    @EnvironmentObject var cartManager : CartManager
    
    private let adaptiveColumns = Array(repeating: GridItem(.flexible(), spacing: 30), count: 1)

    var body: some View {
        VStack{
            VStack{
                ZStack(){
                    HStack{
                        Button{
                            dismiss()
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
                
                Text("Order \(cartManager.getCountCart())")
                
                Divider()
                ScrollView{
                    LazyVGrid(columns: adaptiveColumns, spacing: 5){
                        ForEach(cartManager.product, id:\.id){cart in
                            MenuListItem(itemCart: cart)
                        }
                    }.frame(maxWidth: .infinity)
                }
            }.padding(.horizontal,20)
            NavigationLink(value: Routes.payment){VStack{
                Text("SelectPayment")
                    .foregroundColor(Color("goldLight"))
                    .font(Font.custom("Poppins-Reguler", size: 30))
                    .padding(10)
            }.padding(20).frame(maxWidth: .infinity).background(Color("grayHarlan"))}
        }.navigationBarBackButtonHidden(true)
    }
}

struct MenuListItem: View {
    var itemCart: Cart
    var body: some View{
        HStack(alignment: .top){
            Image(itemCart.item.image).resizable().frame(width: 77, height: 77).cornerRadius(10)
            VStack(alignment: .leading){
                Text(itemCart.item.name).font(Font.custom("Poppins-Reguler", size: 15)).foregroundColor(Color("grayHarlan"))
                Text("\(itemCart.temperature.name)  |  \(itemCart.bean.name)  |  \(itemCart.milk.name)").font(Font.custom("Poppins-Reguler", size: 15)).foregroundColor(Color("grayLight"))
            }
            Spacer()
            VStack(alignment: .trailing){
                Text("Rp\(itemCart.calculate)").font(.system(size: 15, weight: Font.Weight.bold ))
                Text("Qty: 1").font(Font.custom("Poppins-Reguler", size: 15)).foregroundColor(Color("grayLight")).padding(.top,1)
            }
        }.padding(.bottom, 10)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
