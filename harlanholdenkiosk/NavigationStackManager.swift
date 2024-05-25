import SwiftUI

enum Routes: Hashable{
    case preScreen
    case home
    case order
    case payment
    case waiting
    case success
}

struct NavigationStackManager: View {
    
    var body: some View {
        NavigationStack{
            PreScreenView().navigationDestination(for: Routes.self){route in
                switch route {
                case .preScreen:
                    PreScreenView().navigationBarBackButtonHidden(true)
                case .home:
                    HomeView().navigationBarBackButtonHidden(true)
                case .order:
                    OrderView().navigationBarBackButtonHidden(true)
                case .payment:
                    PaymentView().navigationBarBackButtonHidden(true)
                case .waiting:
                    WaitingPayment().navigationBarBackButtonHidden(true)
                case .success:
                    SuccessPayment().navigationBarBackButtonHidden(true)
                }
            }
        }
    }
}

struct NavigationStackManager_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackManager()
    }
}
