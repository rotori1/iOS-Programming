import SwiftUI

struct OrderCompareView: View {
    
    @State private var count: Int = 0
    
    var body: some View {
        VStack (alignment: .center, spacing: 10){
            Image(systemName: "globe")
            HStack(spacing: 35){
                Text("정세호")
                Text("게임공학전공")
            }
            
            Text("padding 먼저")
        }
        .padding()
        .background(.yellow)
        .frame(width:250, height: 150)
        
        VStack (alignment: .center, spacing: 10){
            Image(systemName: "globe")
            HStack(spacing: 35){
                Text("정세호")
                Text("게임공학전공")
            }
            
            Text("background 먼저")
        }
        .background(.yellow)
        .padding()
        .frame(width:250, height: 150)
    }
}

// 첫번째 모양은 padding먼저 작성함으로써 background(padding(Text)) 모양이어서 여백까지 노란색을 칠했지만 두번째는 background먼저 작성함으로써 padding(background(Text)) 모양이어서 글자만 노란색으로 칠하고 여백은 하얀색으로 칠한다.

#Preview {
    OrderCompareView()
}
