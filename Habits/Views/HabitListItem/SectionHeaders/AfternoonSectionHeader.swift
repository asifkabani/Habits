import SwiftUI

struct AfternoonSectionHeader: View {
    var body: some View {
        SectionHeader(
            title: "Afternoon",
            iconName: "sun.max.fill",
            gradient: LinearGradient(
                colors: [Color.blue, Color.cyan],
                startPoint: .leading,
                endPoint: .trailing
            )
        )
    }
}
