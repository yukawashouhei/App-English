//
//  DataManager.swift
//  Swift English
//
//  Created by 湯川昇平 on 2025/08/02.
//

import Foundation
import SwiftUI

class DataManager: ObservableObject {
    static let shared = DataManager()
    
    @Published var completedTests: Set<String> = []
    @Published var favoriteTests: Set<String> = []
    @Published var userProgress: [String: TestProgress] = [:]
    
    private let userDefaults = UserDefaults.standard
    private let completedTestsKey = "completedTests"
    private let favoriteTestsKey = "favoriteTests"
    private let userProgressKey = "userProgress"
    
    private init() {
        loadData()
    }
    
    // MARK: - Data Loading
    private func loadData() {
        // Load completed tests
        if let completedData = userDefaults.object(forKey: completedTestsKey) as? [String] {
            completedTests = Set(completedData)
        }
        
        // Load favorite tests
        if let favoriteData = userDefaults.object(forKey: favoriteTestsKey) as? [String] {
            favoriteTests = Set(favoriteData)
        }
        
        // Load user progress
        if let progressData = userDefaults.data(forKey: userProgressKey) {
            do {
                let decoder = JSONDecoder()
                userProgress = try decoder.decode([String: TestProgress].self, from: progressData)
            } catch {
                print("Failed to decode user progress: \(error)")
            }
        }
    }
    
    // MARK: - Data Saving
    private func saveData() {
        // Save completed tests
        userDefaults.set(Array(completedTests), forKey: completedTestsKey)
        
        // Save favorite tests
        userDefaults.set(Array(favoriteTests), forKey: favoriteTestsKey)
        
        // Save user progress
        do {
            let encoder = JSONEncoder()
            let progressData = try encoder.encode(userProgress)
            userDefaults.set(progressData, forKey: userProgressKey)
        } catch {
            print("Failed to encode user progress: \(error)")
        }
    }
    
    // MARK: - Public Methods
    func markTestCompleted(_ testId: String) {
        completedTests.insert(testId)
        saveData()
    }
    
    func markTestIncomplete(_ testId: String) {
        completedTests.remove(testId)
        saveData()
    }
    
    func isTestCompleted(_ testId: String) -> Bool {
        return completedTests.contains(testId)
    }
    
    func toggleFavorite(_ testId: String) {
        if favoriteTests.contains(testId) {
            favoriteTests.remove(testId)
        } else {
            favoriteTests.insert(testId)
        }
        saveData()
    }
    
    func isFavorite(_ testId: String) -> Bool {
        return favoriteTests.contains(testId)
    }
    
    func updateProgress(for testId: String, questionIndex: Int, isCorrect: Bool) {
        var progress = userProgress[testId] ?? TestProgress(testId: testId)
        progress.updateQuestion(index: questionIndex, isCorrect: isCorrect)
        userProgress[testId] = progress
        saveData()
    }
    
    func getProgress(for testId: String) -> TestProgress? {
        return userProgress[testId]
    }
    
    func resetAllData() {
        completedTests.removeAll()
        favoriteTests.removeAll()
        userProgress.removeAll()
        saveData()
    }
}

struct TestProgress: Codable {
    let testId: String
    var completedQuestions: Set<Int>
    var correctAnswers: Set<Int>
    var lastAccessed: Date
    var totalTimeSpent: TimeInterval
    
    init(testId: String) {
        self.testId = testId
        self.completedQuestions = []
        self.correctAnswers = []
        self.lastAccessed = Date()
        self.totalTimeSpent = 0
    }
    
    mutating func updateQuestion(index: Int, isCorrect: Bool) {
        completedQuestions.insert(index)
        if isCorrect {
            correctAnswers.insert(index)
        } else {
            correctAnswers.remove(index)
        }
        lastAccessed = Date()
    }
    
    var completionPercentage: Double {
        guard !completedQuestions.isEmpty else { return 0 }
        return Double(completedQuestions.count) / Double(completedQuestions.count) * 100
    }
    
    var accuracyPercentage: Double {
        guard !completedQuestions.isEmpty else { return 0 }
        return Double(correctAnswers.count) / Double(completedQuestions.count) * 100
    }
} 