import SwiftUI

class HabitViewModel: ObservableObject {
    @Published var morningHabits: [Habit] = [
        Habit(title: "Make bed", isCompleted: false),
        Habit(title: "Brush teeth", isCompleted: false),
        Habit(title: "Drink water", isCompleted: false),
    ]
    
    @Published var afternoonHabits: [Habit] = [
        Habit(title: "Eat lunch", isCompleted: false),
        Habit(title: "Get ready for class", isCompleted: false),
        Habit(title: "Watch TV", isCompleted: false),
    ]
    
    @Published var eveningHabits: [Habit] = [
        Habit(title: "Get ready for bed", isCompleted: false),
        Habit(title: "Stretch", isCompleted: false),
        Habit(title: "Read book", isCompleted: false),
    ]
    
    // Function to add a new habit
    func addHabit(to section: String) {
        switch section {
        case "Morning":
            morningHabits.append(Habit(title: "New Habit", isCompleted: false))
        case "Afternoon":
            afternoonHabits.append(Habit(title: "New Habit", isCompleted: false))
        case "Evening":
            eveningHabits.append(Habit(title: "New Habit", isCompleted: false))
        default:
            break
        }
    }

    // Function to delete a habit
    func deleteHabit(at offsets: IndexSet, from section: String) {
        switch section {
        case "Morning":
            morningHabits.remove(atOffsets: offsets)
        case "Afternoon":
            afternoonHabits.remove(atOffsets: offsets)
        case "Evening":
            eveningHabits.remove(atOffsets: offsets)
        default:
            break
        }
    }
}
