
import SwiftUI

struct CounterView: View {
    
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
            Text("count \(count)")
                .background(count >= 5 ? .red : .yellow)
                .padding()
            HStack{
                Button("<"){
                    count -= 1
                }
                Button(">"){
                    count += 1
                }
            }
        }
    }
}

#Preview {
    CounterView()
}
