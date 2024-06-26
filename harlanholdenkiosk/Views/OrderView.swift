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
                
                Text("Order")
                
                Divider()
                if cartManager.getCountCart() > 0 {
                    ScrollView{
                        LazyVGrid(columns: adaptiveColumns, spacing: 5){
                            ForEach(cartManager.product, id:\.id){cart in
                                MenuListItem(itemCart: cart)
                            }
                        }.frame(maxWidth: .infinity)
                    }
                } else{
                    Text("No menu has been added").frame(maxHeight: .infinity).foregroundColor(Color("grayLight"))
                }
            }.padding(.horizontal,20)
            Divider()
            HStack{
                Text("Total").fontWeight(.bold)
                Spacer()
                Text("Rp\(cartManager.totalPayment())").fontWeight(.bold)
            }.padding(10).font(.system(size: 25, weight: Font.Weight.medium)).foregroundColor(Color.black)
            if cartManager.getCountCart() > 0 {
                NavigationLink(value: Routes.payment){VStack{
                    Text("Select Payment")
                        .foregroundColor(Color("goldLight"))
                        .font(Font.custom("Poppins-Reguler", size: 30))
                        .padding(10)
                }.padding(20).frame(maxWidth: .infinity).background(Color("grayHarlan"))}
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct MenuListItem: View {
    
    @EnvironmentObject var cartManager : CartManager
    
    var itemCart: Cart
    
    var body: some View{
        HStack(alignment: .top){
            Image(itemCart.item.image).resizable().frame(width: 77, height: 77).cornerRadius(10)
            VStack(alignment: .leading){
                Text(itemCart.item.name).font(Font.custom("Poppins-Reguler", size: 15)).foregroundColor(Color("grayHarlan"))
                if (!itemCart.item.isAccessories) {
                    Text("\(itemCart.temperature!.name) | \(itemCart.bean!.name) Bean |  \(itemCart.milk!.name) Milk").font(Font.custom("Poppins-Reguler", size: 15)).foregroundColor(Color("grayLight"))
                }
            }
            Spacer()
            VStack(alignment: .trailing){
                Text("Rp\(itemCart.calculate)").font(.system(size: 15, weight: Font.Weight.bold ))
                    HStack{
                        Image(systemName: "minus.circle").onTapGesture(){
                            cartManager.removeItem(id: itemCart.id)
                        }
                        Text("\(itemCart.sumItem)")
                        Image(systemName: "plus.circle.fill").onTapGesture(){
                            cartManager.addItem(id: itemCart.id)
                        }
                    }.padding(.top, 20)
            }
        }.padding(.bottom, 10)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
