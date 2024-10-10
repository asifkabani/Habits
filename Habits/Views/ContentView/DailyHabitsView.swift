import SwiftUI

struct DailyHabitsView: View {
    @ObservedObject var viewModel: HabitViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Section {
                        ForEach($viewModel.morningHabits) { $habit in
                            HabitListItem(title: $habit.title, isComplete: $habit.isCompleted)
                        }
                        .onDelete { indexSet in
                            viewModel.deleteHabit(at: indexSet, from: "Morning")
                        }
                        Button(action: {
                            viewModel.addHabit(to: "Morning")
                        }) {
                            HStack {
                                Image(systemName: "plus.circle")
                                Text("Add Habit")
                            }
                        }
                    } header: {
                        MorningSectionHeader()
                            .listRowInsets(EdgeInsets()) // Make the section header take up full width
                            .frame(maxWidth: .infinity)
                    }
                    
                    Section {
                        ForEach($viewModel.afternoonHabits) { $habit in
                            HabitListItem(title: $habit.title, isComplete: $habit.isCompleted)
                        }
                        .onDelete { indexSet in
                            viewModel.deleteHabit(at: indexSet, from: "Afternoon")
                        }
                        Button(action: {
                            viewModel.addHabit(to: "Afternoon")
                        }) {
                            HStack {
                                Image(systemName: "plus.circle")
                                Text("Add Habit")
                            }
                        }
                    } header: {
                        AfternoonSectionHeader()
                            .listRowInsets(EdgeInsets()) // Make the section header take up full width
                            .frame(maxWidth: .infinity)
                    }
                    
                    Section {
                        ForEach($viewModel.eveningHabits) { $habit in
                            HabitListItem(title: $habit.title, isComplete: $habit.isCompleted)
                        }
                        .onDelete { indexSet in
                            viewModel.deleteHabit(at: indexSet, from: "Evening")
                        }
                        Button(action: {
                            viewModel.addHabit(to: "Evening")
                        }) {
                            HStack {
                                Image(systemName: "plus.circle")
                                Text("Add Habit")
                            }
                        }
                    } header: {
                        EveningSectionHeader()
                            .listRowInsets(EdgeInsets()) // Make the section header take up full width
                            .frame(maxWidth: .infinity)
                    }
                }
            }
            .navigationTitle("Habits")
            .listStyle(.grouped)
        }
    }
}
