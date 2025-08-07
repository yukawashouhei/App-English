//
//  ListeningTests.swift
//  Swift English
//
//  Created by 湯川昇平 on 2025/08/02.
//

import Foundation

struct ListeningTests {
    static let test1 = Test(
        title: "Listening Part 1",
        skillType: .listening,
        questions: [
            Question(
                type: .formCompletion,
                passage: """
                Instructions: Complete the form below. Write NO MORE THAN TWO WORDS AND/OR A NUMBER for each answer.
                
                Questions
                Mobile Device Lab - Request Form
                • Employee Name: Kaito Yamamoto
                • Team: Mobile Development
                • Project Name / Codename: (1) ______________
                • Device Requested: (2) ______________
                • Required OS Version: (3) ______________
                • Reason for Request: Testing a (4) ______________
                • Pickup Date: (5) ______________
                """,
                questionText: "",
                options: nil,
                correctAnswer: "1. Project TaskFlow\n2. iPad Pro 11-inch\n3. iPadOS 18.5 beta\n4. new multitasking feature\n5. next Monday",
                japaneseTranslation: """
                指示：以下のフォームを完成させなさい。各解答は2単語および/または1つの数字以内で記入すること。
                
                Questions
                モバイルデバイスラボ - 貸出依頼書
                • 従業員名: Kaito Yamamoto
                • チーム: モバイル開発
                • プロジェクト名 / コードネーム: (1) ______________
                • 希望デバイス: (2) ______________
                • 必須OSバージョン: (3) ______________
                • 貸出理由: (4) ______________のテスト
                • 受取可能日: (5) ______________
                """,
                explanation: """
                この問題では、会話の流れの中で情報が変更される点に注意が必要です：
                1. Project TaskFlow - コードネームがスペルアウトされています
                2. iPad Pro 11-inch - 最初は13-inchを希望しましたが、在庫がなく11-inchに変更されました
                3. iPadOS 18.5 beta - 通常の公式リリースではなく、ベータ版が必要とのことでした
                4. new multitasking feature - 新しいマルチタスキング機能のテストが目的です
                5. next Monday - 来週の月曜日から受け取り可能です
                """,
                audioFileName: "listening_part1_form_completion",
                conversationScript: """
                Hi, you've reached the Mobile Device Lab. This is Maria. How can I help?
                
                Hi Maria, this is Kaito from the mobile team. I'd like to request a test device for a new project.
                
                Of course, Kenji. Which project is this for?
                
                It's for our new app initiative. The codename is Project TaskFlow. That's T-A-S-K-F-L-O-W.
                
                Project TaskFlow... got it. And what kind of device do you need?
                
                I need one of the new iPads to test some tablet-specific layouts. Is the iPad Pro 13-inch available?
                
                Let me check the inventory... Ah, it looks like all the 13-inch models are currently checked out. We do have an iPad Pro 11-inch available, though. Would that work?
                
                Yes, the iPad Pro 11-inch will be perfectly fine. Thank you.
                
                Great. And what OS version do you need on it? We typically install the latest public release.
                
                Actually, for this project, I need to test on a pre-release version. Could you please install the iPadOS 18.5 beta?
                
                The 18.5 beta, certainly. And what is the main reason for the request? We need it for our records.
                
                We're testing a new multitasking feature that relies on the new OS.
                
                Perfect. I've put the device aside for you. You can pick it up anytime from next Monday.
                
                Excellent. Next Monday it is. Thanks for your help, Maria!
                """
            )
        ],
        description: "Listening Passage 1 - Form Completion: Requesting a Test Device"
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
                audioFileName: "listening_test2_q1",
                conversationScript: nil
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
                audioFileName: "listening_test3_q1",
                conversationScript: nil
            )
        ],
        description: "Listening Test 3"
    )
    
    static let allTests: [Test] = [test1, test2, test3]
} 