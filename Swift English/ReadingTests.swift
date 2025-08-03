//
//  ReadingTests.swift
//  Swift English
//
//  Created by 湯川昇平 on 2025/08/02.
//

import Foundation

struct ReadingTests {
    static let test1 = Test(
        title: "Test 1",
        skillType: .reading,
        questions: [
            Question(
                type: .multipleChoice,
                passage: "Swift is a powerful and intuitive programming language for iOS, iPadOS, macOS, tvOS, and watchOS. Writing Swift code is interactive and fun, the syntax is concise yet expressive, and Swift includes modern features developers love. Swift code is safe by design, yet also produces software that runs lightning-fast.\n\nSwift was introduced by Apple in 2014 as a replacement for Objective-C. It was designed to be more modern, safer, and easier to use while maintaining compatibility with existing iOS and macOS codebases. The language has evolved significantly since its introduction, with regular updates that add new features and improve performance.",
                questionText: "What is Swift primarily used for?",
                options: [
                    "Web development",
                    "iOS and Apple platform development",
                    "Android development",
                    "Server-side programming"
                ],
                correctAnswer: "iOS and Apple platform development",
                japaneseTranslation: "Swiftは主に何に使用されますか？",
                explanation: "SwiftはAppleが開発したプログラミング言語で、iOS、iPadOS、macOS、tvOS、watchOSの開発に使用されます。",
                audioFileName: nil
            ),
            Question(
                type: .shortAnswer,
                passage: "The iOS development ecosystem has evolved significantly over the years. With the introduction of SwiftUI in 2019, Apple provided a modern declarative framework for building user interfaces across all Apple platforms. SwiftUI works seamlessly with UIKit and AppKit, allowing developers to adopt it incrementally in existing projects.\n\nSwiftUI uses a declarative syntax, meaning you describe what your UI should look like and how it should behave, rather than describing how to create it step by step. This makes the code more readable and easier to maintain.",
                questionText: "When was SwiftUI introduced?",
                options: nil,
                correctAnswer: "2019",
                japaneseTranslation: "SwiftUIはいつ導入されましたか？",
                explanation: "SwiftUIは2019年にAppleによって導入された、すべてのAppleプラットフォームでユーザーインターフェースを構築するためのモダンな宣言的フレームワークです。",
                audioFileName: nil
            )
        ],
        description: "Reading Test 1"
    )
    
    static let test2 = Test(
        title: "Test 2",
        skillType: .reading,
        questions: [
            Question(
                type: .matching,
                passage: "iOS development involves several key concepts:\n\n1. View Controllers: Manage the presentation of content and handle user interactions\n2. Auto Layout: Provides flexible and dynamic layouts that adapt to different screen sizes\n3. Core Data: Framework for managing the model layer objects in your application\n4. Networking: APIs for making HTTP requests and handling responses\n5. Memory Management: ARC (Automatic Reference Counting) handles memory automatically",
                questionText: "Match each concept with its description:",
                options: nil,
                correctAnswer: "View Controllers manage content presentation, Auto Layout provides flexible layouts, Core Data manages model objects, Networking handles HTTP requests, Memory Management uses ARC",
                japaneseTranslation: "各概念をその説明と一致させてください：",
                explanation: "iOS開発では、View Controllersがコンテンツの表示を管理し、Auto Layoutが柔軟なレイアウトを提供し、Core Dataがモデルオブジェクトを管理し、NetworkingがHTTPリクエストを処理し、Memory ManagementがARCを使用します。",
                audioFileName: nil
            )
        ],
        description: "Reading Test 2"
    )
    
    static let test3 = Test(
        title: "Test 3",
        skillType: .reading,
        questions: [
            Question(
                type: .formCompletion,
                passage: "When developing iOS apps, developers must consider:\n\n- User Interface Guidelines\n- App Store Review Guidelines\n- Performance Optimization\n- Security Best Practices\n- Accessibility Requirements",
                questionText: "Complete the list of iOS development considerations:",
                options: nil,
                correctAnswer: "User Interface Guidelines, App Store Review Guidelines, Performance Optimization, Security Best Practices, Accessibility Requirements",
                japaneseTranslation: "iOSアプリ開発で考慮すべき項目のリストを完成させてください：",
                explanation: "iOSアプリ開発では、ユーザーインターフェースガイドライン、App Storeレビューガイドライン、パフォーマンス最適化、セキュリティベストプラクティス、アクセシビリティ要件を考慮する必要があります。",
                audioFileName: nil
            )
        ],
        description: "Reading Test 3"
    )
    
    static let allTests: [Test] = [test1, test2, test3]
} 