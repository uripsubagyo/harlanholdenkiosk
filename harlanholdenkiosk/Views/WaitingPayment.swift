import SwiftUI
import Foundation

struct WaitingPayment: View {
    
    @EnvironmentObject var cartManager : CartManager
    @EnvironmentObject var transactionManager: TransactionManager
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack{
            ZStack{
                Image("bg-pattern").resizable()
                VStack{
                    Image("HarlanIcon").resizable().frame(width: 130, height: 130)
                    HStack{
                        Text("Payment with").font(Font.custom("Poppins-Bold", size: 30)).foregroundColor(Color.white)
                        Image("qris-logo-white").resizable().aspectRatio(contentMode: .fit).frame( height: 30)
                    }
                }
            }.frame(maxWidth: .infinity, maxHeight: 250).ignoresSafeArea()
            VStack{
                Text("Please Complete Your Payment").padding(.top,20)
                VStack{
                    HStack{
                        Image("qris-logo-white").resizable().aspectRatio(contentMode: .fit).frame( height: 30)
                        Spacer()
                        Image("gpn-logo").resizable().aspectRatio(contentMode: .fit).frame(height: 30)
                    }.frame(width: 294).padding()
                    
                    Image("qr").resizable().frame(width: 294, height: 294).padding(.top,30)
                    
                    Text("NMID : ADKSKK213132131").foregroundColor(Color.white)
                }.padding(20).background(Color("grayHarlan")).cornerRadius(20)
            }
            Text("Waiting for customer payment").padding(.top,10)
            Button("Cancel"){
                dismiss()
            }.buttonStyle(.bordered)
            
            Spacer()
            NavigationLink(value: Routes.success){
                Text("Done").onTapGesture {
                    let itemTransaction = Transaction(
                        orderList: cartManager.product,
                        total: cartManager.totalPayment(),
                        payment: paymentData[1])
                    transactionManager.createTransaction(item: itemTransaction
                    )
                    
                }
            }
        }
    }
}

struct WaitingPayment_Previews: PreviewProvider {
    static var previews: some View {
        WaitingPayment()
    }
}
