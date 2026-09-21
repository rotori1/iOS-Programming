import SwiftUI

struct ImagePickerView: View {
    
    private let images = ["photo1", "photo2", "photo3", "photo4"]
    private let names  = ["사과", "바나나", "딸기", "포도"]
    
    @State private var selectedImage = 0
    @State private var date = Date()
    @State private var fitMode = true
    
    var body: some View {
        VStack {
            Group {
                if fitMode {
                    Image(images[selectedImage])
                        .resizable()
                        .scaledToFit()
                } else {
                    Image(images[selectedImage])
                        .resizable()
                        .scaledToFill()
                        .clipped()
                }
            }
            .frame(height: 200)
            .border(.gray.opacity(0.4))     // 프레임 범위를 눈으로 보려고

            // ── 표시 방식 ─────────────────────────────────
            Toggle("비율 맞추기(Fit)", isOn: $fitMode)

            // ── 사진 고르기 ────────────────────────────────
            Picker("사진", selection: $selectedImage) {
                ForEach(images.indices, id: \.self) { i in
                    Text(names[i]).tag(i)
                }
            }
            .pickerStyle(.segmented)

            Text("선택 : \(names[selectedImage]) · \(fitMode ? "Fit" : "Fill")")
                .font(.footnote)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

#Preview {
    ImagePickerView()
}
