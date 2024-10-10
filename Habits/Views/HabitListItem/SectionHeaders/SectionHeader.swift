import SwiftUI

struct SectionHeader: View {
    var title: String
    var iconName: String
    var gradient: LinearGradient
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .foregroundColor(.white)
                .scaleEffect(1.2)
                .rotationEffect(.degrees(10))
                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true), value: iconName)
            Text(title)
                .foregroundColor(.white)
                .font(.headline)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(gradient)
    }
}
