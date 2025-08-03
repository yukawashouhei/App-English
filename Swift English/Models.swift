//
//  Models.swift
//  Swift English
//
//  Created by 湯川昇平 on 2025/08/02.
//

import Foundation

enum SkillType: String, CaseIterable, Codable {
    case reading = "Reading"
    case listening = "Listening"
    case speaking = "Speaking"
    case writing = "Writing"
    
    var icon: String {
        switch self {
        case .reading: return "doc.text"
        case .listening: return "headphones"
        case .speaking: return "mic"
        case .writing: return "square.and.pencil"
        }
    }
}

enum QuestionType: Codable {
    case shortAnswer
    case multipleChoice
    case matching
    case formCompletion
    case noteCompletion
    case essay
}

struct Test: Identifiable, Codable {
    let id = UUID()
    let title: String
    let skillType: SkillType
    let questions: [Question]
    let description: String
}

struct Question: Identifiable, Codable {
    let id = UUID()
    let type: QuestionType
    let passage: String?
    let questionText: String
    let options: [String]?
    let correctAnswer: String
    let japaneseTranslation: String
    let explanation: String
    let audioFileName: String?
}

// Sample data for testing
extension Test {
    static let sampleReadingTest = Test(
        title: "Test 1: Code Review",
        skillType: .reading,
        questions: [
            Question(
                type: .shortAnswer,
                passage: """
                To: Kenji Tanaka
                From: Sarah Miller
                Subject: Pull Request #128: Add User Profile View
                
                Hi Kenji,
                
                Thanks for the work on the new User Profile View. I've left a few comments on the Pull Request. Overall, it looks great, but there are a few minor things to address before we can merge this.
                
                Comment 1: The profile image looks a little off. Could you check the constraints? It seems the profile avatar icon is not vertically centered within its container.
                
                Comment 2: I noticed you're using the hex code #007AFF directly in three different places for the button color. To improve maintainability, please refactor this. It would be better to extract this color value into a shared constant, maybe in our Constants.swift file. This avoids using "magic numbers".
                
                Comment 3: The logic for fetching user data is currently inside the UserProfileView.swift file. To follow the MVVM pattern correctly, this data fetching logic should be moved to the UserProfileViewModel. This will make our view code cleaner and easier to test.
                
                Comment 4: Great job on handling the loading and error states! It's very smooth. As a next step, could you please add some Unit tests for the new ViewModel logic? Just to ensure everything works as expected.
                
                Let me know if you have any questions.
                
                Best,
                Sarah
                """,
                questionText: "What specific UI element is not correctly aligned?",
                options: nil,
                correctAnswer: "profile avatar icon",
                japaneseTranslation: "どの特定のUI要素が正しく配置されていませんか？",
                explanation: "問題文の 'not correctly aligned'（正しく配置されていない）という表現が、本文の 'not vertically centered'（垂直方向に中央揃えでない）に対応します。具体的なUI要素名を正確に抜き出すことが求められます。",
                audioFileName: nil
            )
        ],
        description: "コードレビューに関する短文回答問題"
    )
    
    static let sampleReadingTest2 = Test(
        title: "Test 2: App Store Guidelines",
        skillType: .reading,
        questions: [
            Question(
                type: .matching,
                passage: """
                Section A: Apple's primary goal is to provide users with a safe and trustworthy place to discover apps. Your app submissions are therefore reviewed against a set of technical, content, and design criteria.
                
                Section B: One of the most common reasons for an app to be rejected is a lack of sufficient content or functionality. Your app should not be a simple website wrapper.
                
                Section C: Your app idea should be your own. Directly copying another developer's app is strictly prohibited and will result in rejection.
                
                Section D: Before you formally submit your app for review, it is crucial to test it thoroughly for crashes and bugs.
                """,
                questionText: "Match the headings to sections A-D",
                options: ["The Core Principles of App Review", "Requirements for App Functionality", "Avoiding Imitation of Other Apps", "The Importance of Pre-Submission Testing"],
                correctAnswer: "A-iii, B-v, C-iv, D-i",
                japaneseTranslation: "セクションA～Dに見出しをマッチングしてください",
                explanation: "各段落の主題を把握し、適切な見出しを選択する問題です。",
                audioFileName: nil
            )
        ],
        description: "App Store申請ガイドラインに関する段落見出しマッチング問題"
    )
    
    static let sampleReadingTest3 = Test(
        title: "Test 3: UIKit vs SwiftUI",
        skillType: .reading,
        questions: [
            Question(
                type: .multipleChoice,
                passage: """
                For over a decade, UIKit was the undisputed king of UI development for iOS. SwiftUI, introduced in 2019, represents a paradigm shift in how developers build interfaces. While SwiftUI offers clear advantages, the transition is not an overnight process. The most valuable skill for an iOS developer today is knowing how to use both frameworks in harmony.
                """,
                questionText: "What does the author suggest is the most practical approach for developers today?",
                options: [
                    "To exclusively use SwiftUI for all new projects",
                    "To rewrite all existing UIKit apps immediately",
                    "To avoid using third-party libraries",
                    "To combine both UIKit and SwiftUI within applications"
                ],
                correctAnswer: "To combine both UIKit and SwiftUI within applications",
                japaneseTranslation: "著者が今日の開発者にとって最も実用的なアプローチとして提案していることは何ですか？",
                explanation: "最後の段落で、両方のフレームワークを調和して使用することが最も価値のあるスキルだと述べられています。",
                audioFileName: nil
            )
        ],
        description: "UI開発の変遷に関する多肢選択問題"
    )
    
    static let sampleListeningTest = Test(
        title: "Test 1: Device Request",
        skillType: .listening,
        questions: [
            Question(
                type: .formCompletion,
                passage: nil,
                questionText: "Complete the device request form",
                options: nil,
                correctAnswer: "Project Phoenix, iPad Pro 11-inch, iPadOS 18.5 beta, new multitasking feature, next Monday",
                japaneseTranslation: "デバイス貸出依頼書を完成させてください",
                explanation: "会話の中で変更される情報に注意を払い、最終的に確定した内容を回答する必要があります。",
                audioFileName: "device_request.mp3"
            )
        ],
        description: "開発用テストデバイスの貸出依頼フォーム穴埋め問題"
    )
    
    static let sampleListeningTest2 = Test(
        title: "Test 2: Team Orientation",
        skillType: .listening,
        questions: [
            Question(
                type: .matching,
                passage: nil,
                questionText: "Match tools and events with their purposes",
                options: ["Slack", "Confluence", "Jira", "Monday Sync-Up", "Tech Talk Thursday", "Friday Demo Day"],
                correctAnswer: "Slack-D, Confluence-H, Jira-A, Monday Sync-Up-F, Tech Talk Thursday-B, Friday Demo Day-E",
                japaneseTranslation: "ツールとイベントをその目的とマッチングしてください",
                explanation: "各ツールの説明をしっかり聞き取り、正しい目的と一致させる必要があります。",
                audioFileName: "orientation.mp3"
            )
        ],
        description: "新人向けオリエンテーションマッチング問題"
    )
    
    static let sampleListeningTest3 = Test(
        title: "Test 3: UAT Results",
        skillType: .listening,
        questions: [
            Question(
                type: .multipleChoice,
                passage: nil,
                questionText: "What was the most common issue users reported?",
                options: [
                    "The app crashed after payment",
                    "The payment was not processed",
                    "The 'Restore Purchase' button was hard to find"
                ],
                correctAnswer: "The 'Restore Purchase' button was hard to find",
                japaneseTranslation: "ユーザーが報告した最も一般的な問題は何でしたか？",
                explanation: "40%以上のユーザーが購入の復元ボタンを見つけにくいと報告したことが最も多い問題でした。",
                audioFileName: "uat_results.mp3"
            )
        ],
        description: "ユーザー受け入れテスト結果報告多肢選択問題"
    )
    
    static let sampleSpeakingTest = Test(
        title: "Test 1: Personal Introduction",
        skillType: .speaking,
        questions: [
            Question(
                type: .essay,
                passage: nil,
                questionText: "Let's talk about what you do. Do you work or are you a student?",
                options: nil,
                correctAnswer: "Sample answer: I am working. I am an iOS app developer for a tech company in Tokyo.",
                japaneseTranslation: "あなたについてお話ししましょう。お仕事はされていますか、それとも学生ですか？",
                explanation: "身近なトピックについて自然に答える練習です。簡潔で明確な回答を心がけましょう。",
                audioFileName: nil
            )
        ],
        description: "身近なトピックに関する質疑応答"
    )
    
    static let sampleSpeakingTest2 = Test(
        title: "Test 2: Favorite App",
        skillType: .speaking,
        questions: [
            Question(
                type: .essay,
                passage: nil,
                questionText: "Describe your favorite app that you use often. You should say: what the app is called, how you use it, what you like about it, and explain why it is your favorite app.",
                options: nil,
                correctAnswer: "Sample answer: My favorite app is Duolingo. I use it every morning on the train...",
                japaneseTranslation: "よく使うお気に入りのアプリについて説明してください。アプリの名前、使用方法、好きな点、そしてなぜそれがお気に入りなのかを説明してください。",
                explanation: "1-2分間の長めのスピーチです。構造化された回答を心がけましょう。",
                audioFileName: nil
            )
        ],
        description: "個人的なトピックについての1-2分間のスピーチ"
    )
    
    static let sampleSpeakingTest3 = Test(
        title: "Test 3: Abstract Discussion",
        skillType: .speaking,
        questions: [
            Question(
                type: .essay,
                passage: nil,
                questionText: "In your opinion, what is more important for a new application: having many features, or being extremely reliable?",
                options: nil,
                correctAnswer: "Sample answer: I believe for a new application, being extremely reliable is far more important...",
                japaneseTranslation: "あなたの意見では、新しいアプリケーションにとってより重要なのは、多くの機能を持つことですか、それとも極めて信頼性が高いことですか？",
                explanation: "抽象的なトピックについて意見を述べ、理由や例を挙げて論理的に説明する練習です。",
                audioFileName: nil
            )
        ],
        description: "抽象的なトピックについての深い議論"
    )
    
    static let sampleWritingTest = Test(
        title: "Test 1: Formal Letter",
        skillType: .writing,
        questions: [
            Question(
                type: .essay,
                passage: nil,
                questionText: "Write a letter to your manager to request permission and financial support to attend a developer conference.",
                options: nil,
                correctAnswer: "Sample answer: Dear Mr. Smith, I am writing to formally request your permission and company sponsorship...",
                japaneseTranslation: "開発者会議への参加許可と金銭的支援を求める手紙を上司に書いてください。",
                explanation: "フォーマルな手紙の書式を守り、3つの要点を含んだ150語以上の文章を作成します。",
                audioFileName: nil
            )
        ],
        description: "会議参加許可を求めるフォーマルな手紙"
    )
    
    static let sampleWritingTest2 = Test(
        title: "Test 2: Opinion Essay",
        skillType: .writing,
        questions: [
            Question(
                type: .essay,
                passage: nil,
                questionText: "Many companies now allow their employees to work from home. Discuss both views and give your own opinion.",
                options: nil,
                correctAnswer: "Sample answer: The rise of remote work has become one of the most significant transformations...",
                japaneseTranslation: "多くの企業が従業員の在宅勤務を許可しています。両方の見解について論じ、あなた自身の意見を述べなさい。",
                explanation: "2つの対立する見解を論じ、自身の意見を述べる250語以上のエッセイです。",
                audioFileName: nil
            )
        ],
        description: "リモートワークに関する賛否両論エッセイ"
    )
    
    static let sampleWritingTest3 = Test(
        title: "Test 3: Technical Report",
        skillType: .writing,
        questions: [
            Question(
                type: .essay,
                passage: nil,
                questionText: "Write a technical report analyzing the benefits and challenges of adopting SwiftUI in enterprise applications.",
                options: nil,
                correctAnswer: "Sample answer: Executive Summary: This report examines the strategic implications...",
                japaneseTranslation: "エンタープライズアプリケーションにおけるSwiftUI導入の利点と課題を分析した技術レポートを書いてください。",
                explanation: "技術的な内容を客観的に分析し、構造化されたレポート形式で記述します。",
                audioFileName: nil
            )
        ],
        description: "SwiftUI導入に関する技術レポート"
    )
} 