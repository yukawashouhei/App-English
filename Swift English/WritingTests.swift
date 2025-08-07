//
//  WritingTests.swift
//  Swift English
//
//  Created by 湯川昇平 on 2025/08/02.
//

import Foundation

struct WritingTests {
    static let test1 = Test(
        title: "Test 1",
        skillType: .writing,
        questions: [
            Question(
                type: .essay,
                passage: "Write about the evolution of iOS development from Objective-C to Swift. Discuss the benefits and challenges of this transition.",
                questionText: "How has iOS development evolved with the introduction of Swift?",
                options: nil,
                correctAnswer: "Swift introduced modern features, better safety, and improved performance compared to Objective-C",
                japaneseTranslation: "Swiftの導入によりiOS開発はどのように進化しましたか？",
                explanation: "Swiftの導入により、現代的な機能、より良い安全性、Objective-Cと比較したパフォーマンスの向上がもたらされました。",
                audioFileName: nil,
                conversationScript: nil
            ),
            Question(
                type: .shortAnswer,
                passage: "Describe the key features of Swift that make it suitable for iOS development.",
                questionText: "What are the key features of Swift?",
                options: nil,
                correctAnswer: "Type safety, automatic memory management, modern syntax, interoperability",
                japaneseTranslation: "Swiftの主要な機能は何ですか？",
                explanation: "Swiftの主要な機能は型安全性、自動メモリ管理、現代的な構文、Objective-Cとの相互運用性です。",
                audioFileName: nil,
                conversationScript: nil
            )
        ],
        description: "Writing Test 1"
    )
    
    static let test2 = Test(
        title: "Test 2",
        skillType: .writing,
        questions: [
            Question(
                type: .essay,
                passage: "Explain the importance of user interface design in iOS applications. Discuss the Human Interface Guidelines and their significance.",
                questionText: "Why is UI design important in iOS development?",
                options: nil,
                correctAnswer: "UI design ensures consistency, usability, and adherence to Apple's design principles",
                japaneseTranslation: "iOS開発でUIデザインが重要な理由は何ですか？",
                explanation: "UIデザインは一貫性、使いやすさ、Appleのデザイン原則への準拠を確保するために重要です。",
                audioFileName: nil,
                conversationScript: nil
            )
        ],
        description: "Writing Test 2"
    )
    
    static let test3 = Test(
        title: "Test 3",
        skillType: .writing,
        questions: [
            Question(
                type: .essay,
                passage: "Discuss the role of testing in iOS development. Explain different types of testing and their importance.",
                questionText: "What types of testing are important in iOS development?",
                options: nil,
                correctAnswer: "Unit testing, integration testing, UI testing, and performance testing",
                japaneseTranslation: "iOS開発で重要なテストの種類は何ですか？",
                explanation: "iOS開発では単体テスト、統合テスト、UIテスト、パフォーマンステストが重要です。",
                audioFileName: nil,
                conversationScript: nil
            )
        ],
        description: "Writing Test 3"
    )
    
    static let allTests: [Test] = [test1, test2, test3]
} 