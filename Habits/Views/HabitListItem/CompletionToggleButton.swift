import SwiftUI

struct CompletionToggleButton: View {
    @Binding var isComplete: Bool
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()) {
                isComplete.toggle()
            }
        }) {
            Image(systemName: isComplete ? "checkmark.circle.fill" : "circle")
                .foregroundColor(isComplete ? .green : .gray)
                .scaleEffect(isComplete ? 1.2 : 1.0)
        }
    }
}
