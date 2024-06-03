import SwiftUI

struct ModalMenu: View {
    @State var menu : Menu

    
    private let adaptiveColumns = Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
    
    @State var addOnTemp: [AddOn] = addOnTemperature
    @State var addOnBeans: [AddOn] = addOnBean
    @State var addOnMilks: [AddOn] = addOnMilk
    
    @State private var addTemp: AddOn? = addOnTemperature[0]
    @State private var addBean: AddOn? = addOnBean[0]
    @State private var addMilk: AddOn? = addOnMilk[0]
    
    @State private var count = 1
    
    @EnvironmentObject var sheetManager: SheetManager
    @EnvironmentObject var cartManager: CartManager

    private func calculate(temp: AddOn?, bean: AddOn?, milk : AddOn?, count: Int) -> Int {
        var sum = menu.basePrice
        
        if temp != nil{ sum += temp!.price}
        if bean != nil { sum += bean!.price }
        if milk != nil { sum += milk!.price}
        
        return sum * count
    }
    
   
    private func addToCart() {
        if let temp = addTemp, let bean = addBean, let milk = addMilk {
            cartManager.addToChart(baseMenu: menu, temp: temp, bean: bean, milk: milk, count: count)
            sheetManager.dismiss()
        } else {
            // Handle the case where one or more parameters are nil
        }
    }
    var body: some View {
        ZStack{
            VStack{
                Image(systemName: "xmark").frame(width:20, height:20).padding(10).foregroundColor(Color.white).background(Color("grayHarlan")).cornerRadius(20).padding(.bottom, 40).onTapGesture {
                    sheetManager.dismiss()
                }
                VStack{
                    VStack{
                        HStack(){
                            Image("\(menu.image)").resizable().frame(width: 150, height: 150).cornerRadius(10)
                            VStack{
                                Text(menu.name).font(Font.custom("Poppins-Reguler", size: 20)).foregroundColor(Color("grayHarlan")).frame(maxWidth: .infinity, alignment: .leading)
                                Text(menu.deskription).font(Font.custom("Poppins-Reguler", size: 15)).foregroundColor(Color("grayLight")).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                    Spacer()
                            }.background().frame(maxWidth: .infinity, maxHeight: .infinity)
                        }.fixedSize(horizontal: false, vertical: true)
                        Divider()
                        if !menu.isAccessories{
                            VStack{
                                Text("Temperature").frame(maxWidth:.infinity, alignment: .leading).padding(.top, 10).fontWeight(.medium)
                                LazyVGrid(columns: adaptiveColumns, spacing: 10){
                                    ForEach(addOnTemp, id: \.id) { addOn in
                                        HStack{
                                            Text("\(addOn.name)")
                                            Spacer()
                                            Text(addOn.price == 0 ? "" : "+Rp\(addOn.price)")
                                        }.padding(5).background(Color(addTemp?.name == addOn.name ? "grayHarlan" : "light")).cornerRadius(10).onTapGesture {
                                            self.addTemp = addOn
                                        }.foregroundColor(Color(addTemp?.name == addOn.name ? "goldLight" : "grayHarlan"))
                                    }
                                }
                                Text("Bean").frame(maxWidth:.infinity, alignment: .leading).padding(.top, 10).fontWeight(.medium)
                                LazyVGrid(columns: adaptiveColumns, spacing: 10){
                                    ForEach(addOnBeans, id: \.id) { addOn in
                                        HStack{
                                            Text("\(addOn.name)")
                                            Spacer()
                                            Text(addOn.price == 0 ? "" : "+Rp\(addOn.price)")
                                        }.padding(5).background(Color(addBean?.name == addOn.name ? "grayHarlan" : "light")).cornerRadius(10).onTapGesture {
                                            self.addBean = addOn
                                        }.foregroundColor(Color(addBean?.name == addOn.name ? "goldLight" : "grayHarlan"))
                                    }
                                }
                                Text("Milk").frame(maxWidth:.infinity, alignment: .leading).padding(.top, 10).fontWeight(.medium)
                                LazyVGrid(columns: adaptiveColumns, spacing: 10){
                                    ForEach(addOnMilks, id: \.id) { addOn in
                                        HStack{
                                            Text("\(addOn.name)")
                                            Spacer()
                                            Text(addOn.price == 0 ? "" : "+Rp\(addOn.price)")
                                        }.padding(5).background(Color(addMilk?.name == addOn.name ? "grayHarlan" : "light")).cornerRadius(10).onTapGesture {
                                            self.addMilk = addOn
                                        }.foregroundColor(Color(addMilk?.name == addOn.name ? "goldLight" : "grayHarlan"))
                                    }
                                }
                            }
                        }
                        
                        HStack{
                            Text("Rp\(calculate(temp:addTemp ?? nil, bean: addBean ?? nil, milk:addMilk ?? nil, count: count))")
                            Spacer()
                            HStack{
                                Image(systemName: "minus.circle").onTapGesture(){
                                    if count > 1 {
                                        self.count -= 1
                                    }
                                }
                                Text("\(count)")
                                Image(systemName: "plus.circle.fill").onTapGesture(){
                                    self.count += 1
                                }
                            }
                        }.padding(.top, menu.isAccessories ? 0: 20)
                    }.padding(.horizontal, 20).padding(.top, 20)
                    VStack{
                        Text("Add to Chart").font(Font.custom("Poppins-Reguler", size: 20)).foregroundColor(Color("goldLight"))
                    }.frame(maxWidth: .infinity).padding(20).background(Color("grayHarlan")).onTapGesture(){
                        self.addToCart()
                    }
                }.background(Color.white).cornerRadius(20)
            }.frame(maxWidth: 500, maxHeight: 1000)
        }.frame(maxWidth: .infinity, maxHeight: .infinity) .presentationBackground(.black.opacity(0))
    }
}

struct ModalMenu_Previews: PreviewProvider {
    static var previews: some View {
        ModalMenu(menu: Menu(id: 4, type:MenuType.coffee, name: "spanish cold brew", image: "spanishcoldbrew", basePrice: 43000, deskription: "coffee brewed cold for 12-hours with enough cane sugar and heavy cream", isAccessories: false))
    }
}
