//
//  SpeakingTests.swift
//  Swift English
//
//  Created by 湯川昇平 on 2025/08/02.
//

import Foundation

struct SpeakingTests {
    static let test1 = Test(
        title: "Test 1",
        skillType: .speaking,
        questions: [
            Question(
                type: .shortAnswer,
                passage: "Describe your experience with iOS development. Talk about the programming languages you've used and the challenges you've faced.",
                questionText: "What programming languages have you used for iOS development?",
                options: nil,
                correctAnswer: "Swift, Objective-C",
                japaneseTranslation: "iOS開発で使用したプログラミング言語は何ですか？",
                explanation: "iOS開発では主にSwiftとObjective-Cが使用されます。Swiftは現代的で安全な言語、Objective-Cは従来の言語です。",
                audioFileName: nil
            ),
            Question(
                type: .essay,
                passage: "Explain the benefits of using SwiftUI for iOS development. Consider performance, development speed, and maintainability.",
                questionText: "What are the main advantages of SwiftUI?",
                options: nil,
                correctAnswer: "Declarative syntax, cross-platform, seamless integration, modern features",
                japaneseTranslation: "SwiftUIの主な利点は何ですか？",
                explanation: "SwiftUIの主な利点は宣言的構文、クロスプラットフォーム対応、既存フレームワークとのシームレスな統合、モダンな機能です。",
                audioFileName: nil
            )
        ],
        description: "Speaking Test 1"
    )
    
    static let test2 = Test(
        title: "Test 2",
        skillType: .speaking,
        questions: [
            Question(
                type: .shortAnswer,
                passage: "Discuss the importance of memory management in iOS development. Explain ARC and its benefits.",
                questionText: "How does ARC work in iOS development?",
                options: nil,
                correctAnswer: "Automatic Reference Counting automatically manages memory",
                japaneseTranslation: "iOS開発でARCはどのように動作しますか？",
                explanation: "ARC（Automatic Reference Counting）は自動的にメモリ管理を行い、開発者が手動でメモリ管理を行う必要をなくします。",
                audioFileName: nil
            )
        ],
        description: "Speaking Test 2"
    )
    
    static let test3 = Test(
        title: "Test 3",
        skillType: .speaking,
        questions: [
            Question(
                type: .essay,
                passage: "Describe your approach to debugging iOS applications. What tools and techniques do you use?",
                questionText: "What debugging tools do you use for iOS development?",
                options: nil,
                correctAnswer: "Xcode debugger, Instruments, Console, Breakpoints",
                japaneseTranslation: "iOS開発で使用するデバッグツールは何ですか？",
                explanation: "iOS開発ではXcodeのデバッガー、Instruments、Console、ブレークポイントなどのツールを使用してデバッグを行います。",
                audioFileName: nil
            )
        ],
        description: "Speaking Test 3"
    )
    
    static let allTests: [Test] = [test1, test2, test3]
} 