import Foundation

class PersistenceManager {
    static let shared = PersistenceManager()
    
    private let defaults = UserDefaults.standard
    
    func saveHabits(_ habits: [Habit], for key: String) {
        if let encoded = try? JSONEncoder().encode(habits) {
            defaults.set(encoded, forKey: key)
        }
    }
    
    func loadHabits(for key: String) -> [Habit] {
        if let savedData = defaults.data(forKey: key),
           let decoded = try? JSONDecoder().decode([Habit].self, from: savedData) {
            return decoded
        }
        return []
    }
}
