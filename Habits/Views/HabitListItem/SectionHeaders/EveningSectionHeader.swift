import SwiftUI

struct EveningSectionHeader: View {
    var body: some View {
        SectionHeader(
            title: "Evening",
            iconName: "moon.stars.fill",
            gradient: LinearGradient(
                colors: [Color.purple, Color.blue],
                startPoint: .leading,
                endPoint: .trailing
            )
        )
    }
}
