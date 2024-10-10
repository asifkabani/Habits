import SwiftUI

struct AlarmButton: View {
    @Binding var showingAlarmSheet: Bool
    @Binding var alarmTime: Date? // Change to binding to modify the value
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()) {
                showingAlarmSheet.toggle()
            }
        }) {
            Image(systemName: "bell.fill")
                .foregroundColor(alarmTime == nil ? .gray : .yellow)
                .rotationEffect(.degrees(showingAlarmSheet ? 15 : 0))
        }
        .sheet(isPresented: $showingAlarmSheet) {
            AlarmSheet(alarmTime: $alarmTime)
        }
    }
}
