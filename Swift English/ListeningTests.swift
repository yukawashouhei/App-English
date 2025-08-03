//
//  ListeningTests.swift
//  Swift English
//
//  Created by 湯川昇平 on 2025/08/02.
//

import Foundation

struct ListeningTests {
    static let test1 = Test(
        title: "Test 1",
        skillType: .listening,
        questions: [
            Question(
                type: .multipleChoice,
                passage: nil,
                questionText: "What is the main advantage of using Swift over Objective-C?",
                options: [
                    "It's faster to compile",
                    "It has better memory management",
                    "It's more modern and safer",
                    "It has more libraries"
                ],
                correctAnswer: "It's more modern and safer",
                japaneseTranslation: "Objective-Cと比較してSwiftを使用する主な利点は何ですか？",
                explanation: "SwiftはObjective-Cよりも現代的で安全な言語として設計されており、型安全性やメモリ管理の改善が主な利点です。",
                audioFileName: "listening_test1_q1"
            ),
            Question(
                type: .shortAnswer,
                passage: nil,
                questionText: "How many Apple platforms does Swift support?",
                options: nil,
                correctAnswer: "5",
                japaneseTranslation: "Swiftは何個のAppleプラットフォームをサポートしていますか？",
                explanation: "SwiftはiOS、iPadOS、macOS、tvOS、watchOSの5つのAppleプラットフォームをサポートしています。",
                audioFileName: "listening_test1_q2"
            )
        ],
        description: "Listening Test 1"
    )
    
    static let test2 = Test(
        title: "Test 2",
        skillType: .listening,
        questions: [
            Question(
                type: .noteCompletion,
                passage: nil,
                questionText: "Complete the notes about iOS development:",
                options: nil,
                correctAnswer: "SwiftUI, declarative, UIKit, AppKit, incremental",
                japaneseTranslation: "iOS開発に関するメモを完成させてください：",
                explanation: "SwiftUIは宣言的フレームワークで、UIKitやAppKitとシームレスに動作し、既存プロジェクトに段階的に導入できます。",
                audioFileName: "listening_test2_q1"
            )
        ],
        description: "Listening Test 2"
    )
    
    static let test3 = Test(
        title: "Test 3",
        skillType: .listening,
        questions: [
            Question(
                type: .matching,
                passage: nil,
                questionText: "Match the iOS development tools with their purposes:",
                options: nil,
                correctAnswer: "Xcode is the IDE, Interface Builder creates UI, Simulator tests apps, Instruments profiles performance",
                japaneseTranslation: "iOS開発ツールをその目的と一致させてください：",
                explanation: "Xcodeは統合開発環境、Interface BuilderはUI作成、Simulatorはアプリテスト、Instrumentsはパフォーマンス分析に使用されます。",
                audioFileName: "listening_test3_q1"
            )
        ],
        description: "Listening Test 3"
    )
    
    static let allTests: [Test] = [test1, test2, test3]
} 