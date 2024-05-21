import SwiftUI

struct HomeView: View {
    @State var onSelect = "sets"
    @State var typeSales: [TypeSales] = typeSalesData
    
    @State var menuSets: [Menu] = menuSetsData
    @State var menuCoffee: [Menu] = menuCoffeeData
    @State var menuDrinks: [Menu] = menuDrinksData
    @State var menuBottle: [Menu] = menuBottleData
    @State var menuSnacks: [Menu] = menuSnackData
    @State var menuGift: [Menu] = menuGiftData
    

    var body: some View {
        VStack{
            ZStack(){
                HStack{
                    Button{
                        print("CANCEL ORDER")
                    }label: {
                        HStack{
                            Image(systemName: "xmark").frame(width:20, height: 20).foregroundColor(Color.black)
                            Text("cancel").font(Font.custom("Poppins-Reguler", size: 16)).foregroundColor(Color.black)
                        }.padding(8).padding(.leading,10).padding(.trailing,10)
                    }
                    .cornerRadius(100)
                    .overlay(RoundedRectangle(cornerRadius: 100)
                    .stroke(Color.black, lineWidth:2))
                    Spacer()
                }
                Image("HarlanIcon").resizable().frame(width: 120, height: 120)
            }.frame(maxWidth: .infinity)
            HStack{
                Text("sets")
                    .font(.system(size: 20, weight: self.onSelect == "sets" ? Font.Weight.bold : Font.Weight.regular))
                    .foregroundColor(Color("grayHarlan")).onTapGesture {
                        self.onSelect = "sets"
                    }.onTapGesture {
                        withAnimation(.default){
                            self.onSelect = "sets"
                        }
                    }
                Spacer()
                Text("coffee")
                    .font(.system(size: 20, weight: self.onSelect == "coffee" ? Font.Weight.bold : Font.Weight.regular))
                    .foregroundColor(Color("grayHarlan")).onTapGesture {
                        withAnimation(.default){
                            self.onSelect = "coffee"
                        }
                    }
                Spacer()
                Text("bottle")
                    .font(.system(size: 20, weight: self.onSelect == "bottle" ? Font.Weight.bold : Font.Weight.regular))
                    .foregroundColor(Color("grayHarlan")).onTapGesture {
                        withAnimation(.default){
                            self.onSelect = "bottle"
                        }
                    }
                Spacer()
                Text("snacks")
                    .font(.system(size: 20, weight: self.onSelect == "snacks" ? Font.Weight.bold : Font.Weight.regular))
                    .foregroundColor(Color("grayHarlan")).onTapGesture {
                        withAnimation(.default){
                            self.onSelect = "snacks"
                        }
                    }
                Spacer()
                Text("gift")
                    .font(.system(size: 20, weight: self.onSelect == "gift" ? Font.Weight.bold : Font.Weight.regular))
                    .foregroundColor(Color("grayHarlan")).onTapGesture {
                        withAnimation(.default){
                            self.onSelect = "gift"
                        }
                    }
            }
            TabView(selection: self.$onSelect){
                GridMenuView(itemsData: menuSets).tag("sets")
                GridMenuView(itemsData: menuDrinks).tag("coffee")
                GridMenuView(itemsData: menuBottle).tag("bottle")
                GridMenuView(itemsData: menuSnacks).tag("snacks")
                GridMenuView(itemsData: menuGift).tag("gift")
               
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }.frame(maxWidth: .infinity).background().padding(.leading,50).padding(.trailing,50)
    }
}

struct GridMenuView: View{
    let itemsData : [Menu]
    
    private let adaptiveColumns = Array(repeating: GridItem(.flexible(), spacing: 30), count: 3)
    
    var body: some View{
        ScrollView{
            LazyVGrid(columns: adaptiveColumns,spacing: 2) {
                ForEach(itemsData, id: \.id) { menu in
                    MenuView(item: menu)
                }
            }
        }.padding(10)
    }
}

struct MenuView: View {
    let item : Menu
    
    var body: some View{
        VStack(spacing: 4){
            Image(item.image).resizable().frame(width: 169, height: 169).cornerRadius(10)
            Text(item.name).font(Font.custom("Poppins-Reguler", size: 16)).foregroundColor(Color("grayHarlan")).multilineTextAlignment(.center).padding(.top,10)
            Text("Rp\(item.basePrice)").font(Font.custom("Poppins-Reguler", size: 16)).foregroundColor(Color("goldHarlan")).multilineTextAlignment(.center).padding(.top,3)

        }.padding(.bottom,30)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
