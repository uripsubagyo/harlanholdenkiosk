import SwiftUI

struct SuccessPayment: View {
    @EnvironmentObject var transactionManager: TransactionManager
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        VStack{
            ZStack{
                Image("bg-pattern").resizable()
                VStack{
                    Image("HarlanIcon").resizable().frame(width: 130, height: 130)
                    Text("Payment Successfuly").font(Font.custom("Poppins-Bold", size: 30)).foregroundColor(Color.white)
                }
            }.frame(maxWidth: .infinity, maxHeight: 250).ignoresSafeArea()
            
            VStack{
                Text("Rp\(String(transactionManager.transaction?.total ?? 00))" ).font(Font.custom("Poppins-Bold", size: 45)).foregroundColor(Color.black)
                Text("Paid \(transactionManager.transaction?.getViewDate() ?? "January 01, 2024")" ).font(Font.custom("Poppins-Reguler", size: 20)).foregroundColor(Color("grayLight"))
                Divider()
                HStack{
                    Text("Receipt Number")
                    Spacer()
                    Text("\((transactionManager.transaction?.getCalQue() ?? " D21 - 0000") as String)")
                }
                HStack{
                    Text("Payment Method")
                    Spacer()
                    Image("qris").resizable().aspectRatio(contentMode: .fit).frame( height: 20)
                }
            }.frame(maxWidth: 350).font(Font.custom("Poppins-Bold", size: 20)).foregroundColor(Color("grayLight"))
            Spacer()
            VStack{
                Text("Thank You For Your Order").font(Font.custom("Poppins-Bold", size: 45)).foregroundColor(Color.black)
                Text("Have a nice day!").font(Font.custom("Poppins-Reguler", size: 30)).foregroundColor(Color.black)
            }.padding(20)
        }
//        .onAppear{
//                    Timer.scheduledTimer(
//                    withTimeInterval: 5,
//                    repeats: false
//                    ){
//                       
//            }
//        }
    }
}

struct SuccessPayment_Previews: PreviewProvider {
    static var previews: some View {
        SuccessPayment()
    }
}
