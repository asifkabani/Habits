import Foundation

enum Frequency {
    case daily, weekly, monthly, yearly
}

enum TimeOfDay {
    case morning, afternoon, evening
}

struct Habit: Identifiable, Codable {
    var id = UUID()
    var title: String
    var isCompleted: Bool
}
