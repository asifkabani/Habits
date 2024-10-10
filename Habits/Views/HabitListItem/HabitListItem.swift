import SwiftUI

struct HabitListItem: View {
    @Binding var title: String
    @Binding var isComplete: Bool
    @State private var showingAlarmSheet = false
    @State private var alarmTime: Date? = nil

    var body: some View {
        HStack {
            CompletionToggleButton(isComplete: $isComplete) // Moved CompletionToggleButton to the left of the title
            Text(title)
                .strikethrough(isComplete, color: .gray) // Add strike through if the habit is complete
                .onTapGesture {
                    isComplete.toggle() // Ensure this action only toggles the completion state
                }
            Spacer()
            AlarmButton(showingAlarmSheet: $showingAlarmSheet, alarmTime: $alarmTime) // Pass binding of alarmTime
        }
        .padding(.vertical, 8)
    }
}
