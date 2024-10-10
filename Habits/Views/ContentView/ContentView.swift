import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = HabitViewModel()
    
    var body: some View {
        TabView {
            DailyHabitsView(viewModel: viewModel)
                .tabItem {
                    Label("Daily", systemImage: "sun.max.fill")
                }
            
            MonthlyHabitsView()
                .tabItem {
                    Label("Monthly", systemImage: "calendar")
                }
            
            YearlyHabitsView()
                .tabItem {
                    Label("Yearly", systemImage: "calendar.badge.clock")
                }
        }
    }
}

#Preview {
    ContentView()
}
