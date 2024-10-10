import SwiftUI

struct AlarmSheet: View {
    @Binding var alarmTime: Date?
    @Environment(\.dismiss) var dismiss // Environment variable to dismiss the sheet
    @State private var selectedTime = Date() // State variable to hold the selected alarm time
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                // Display the current alarm time if it is set
                if let alarmTime = alarmTime {
                    Text("Current Alarm: \(alarmTime, style: .time)")
                        .font(.headline)
                } else {
                    Text("No alarm set")
                        .font(.headline)
                }
                
                // DatePicker to select the alarm time
                DatePicker("Select Alarm Time", selection: $selectedTime, displayedComponents: .hourAndMinute)
                    .datePickerStyle(WheelDatePickerStyle())
                    .labelsHidden()
                
                // Button to set the alarm with the selected time
                Button("Set Alarm") {
                    alarmTime = selectedTime
                    dismiss() // Dismiss the sheet after setting the alarm
                }
                .buttonStyle(.borderedProminent)
                .padding(.top, 20)
                
                // Button to remove the existing alarm
                Button("Remove Alarm") {
                    alarmTime = nil
                    dismiss() // Dismiss the sheet after removing the alarm
                }
                .buttonStyle(.bordered)
            }
            .padding()
            .navigationTitle("Set Alarm")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    // Cancel button to dismiss the sheet without making changes
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
}
