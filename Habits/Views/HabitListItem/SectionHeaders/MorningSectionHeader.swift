import SwiftUI

struct MorningSectionHeader: View {
    var body: some View {
        SectionHeader(
            title: "Morning",
            iconName: "sunrise.fill",
            gradient: LinearGradient(
                colors: [Color.orange, Color.yellow],
                startPoint: .leading,
                endPoint: .trailing
            )
        )
    }
}
