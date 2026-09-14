import SwiftUI

struct ProfileCardView: View {
    
    @State private var count: Int = 0
    
    var body: some View {
        VStack (alignment: .center, spacing: 10){
            Image(systemName: "globe")
            HStack(spacing: 35){
                Text("정세호")
                Text("게임공학전공")
            }
            
            Text("게임을 매우 좋아함")
        }
        .padding()
        .frame(width:250, height: 150)
        .background(.yellow)
        .cornerRadius(15)
    }
}

#Preview {
    ProfileCardView()
}
