//
//  SpeakingTests.swift
//  Swift English
//
//  Created by 湯川昇平 on 2025/08/02.
//

import Foundation

struct SpeakingTests {
    static let test1 = Test(
        title: "Speaking Part 1",
        skillType: .speaking,
        questions: [
            Question(
                type: .shortAnswer,
                passage: nil,
                questionText: """
                形式: 身近なトピックに関する短い質疑応答。1つの質問に対し、2～3文で簡潔に答えるのが目安です。
                
                Questions & Sample Answers
                
                Examiner: Let's talk about your work. What is your job?
                Candidate: I work as an iOS engineer. My main responsibility is to develop and maintain applications for Apple's iPhone and iPad devices, primarily using the Swift programming language.
                
                Examiner: Why did you choose to become an iOS engineer?
                Candidate: I've always been fascinated by Apple's products and their focus on user experience. I chose this career because I enjoy the challenge of problem-solving and creating intuitive, well-designed apps that people can use every day.
                
                Examiner: What do you enjoy most about your work?
                Candidate: The most enjoyable part for me is seeing an idea turn into a real, functional product. I especially love the moment when we release a new feature and receive positive feedback from users. It's very rewarding.
                
                Examiner: Let's move on to talk about technology. Do you use a lot of apps in your daily life?
                Candidate: Yes, absolutely. I rely on various apps for almost everything, from managing my schedule with a calendar app to communicating with my team on Slack, and even for learning new things through educational apps.
                
                Examiner: Is there an app you find particularly well-designed?
                Candidate: I think the note-taking app 'Things 3' is exceptionally well-designed. Its user interface is incredibly clean and intuitive, and the animations are very smooth. It makes a mundane task like managing to-do lists feel seamless and satisfying.
                """,
                options: nil,
                correctAnswer: """
                Sample responses provided above demonstrate natural, conversational answers with:
                • Clear, concise responses (2-3 sentences each)
                • Personal experiences and opinions
                • Relevant technical vocabulary
                • Natural flow and appropriate detail level
                """,
                japaneseTranslation: """
                形式: 身近なトピックに関する短い質疑応答。1つの質問に対し、2～3文で簡潔に答えるのが目安です。
                
                質問と模範解答
                
                試験官: あなたの仕事について話しましょう。あなたの仕事は何ですか？
                解答例: 私はiOSエンジニアとして働いています。主な職務は、主にSwiftというプログラミング言語を使い、AppleのiPhoneやiPad向けのアプリケーションを開発・保守することです。
                
                試験官: なぜiOSエンジニアになろうと決めたのですか？
                解答例: 私は昔からApple製品と、そのユーザー体験へのこだわりに魅了されてきました。問題解決という挑戦や、人々が毎日使えるような直感的で優れたデザインのアプリを作ることが好きなので、このキャリアを選びました。
                
                試験官: あなたの仕事で最も楽しいことは何ですか？
                解答例: 私にとって最も楽しい部分は、アイデアが実際に機能する製品に変わるのを見ることです。特に、新機能をリリースしてユーザーから肯定的なフィードバックをもらった瞬間は大好きです。とてもやりがいがあります。
                
                試験官: 次にテクノロジーについて話しましょう。あなたは日常生活でたくさんアプリを使いますか？
                解答例: はい、間違いなく。カレンダーアプリでのスケジュール管理から、Slackでのチームとのコミュニケーション、さらには教育アプリでの新しいことの学習まで、ほとんどすべてのことを様々なアプリに頼っています。
                
                試験官: 特にデザインが優れていると感じるアプリはありますか？
                解答例: 私はノートアプリの「Things 3」が卓越したデザインだと感じます。ユーザーインターフェースが信じられないほどクリーンで直感的ですし、アニメーションも非常にスムーズです。ToDoリストの管理のような退屈な作業を、シームレスで満足のいくものに感じさせてくれます。
                """,
                explanation: """
                IELTS Speaking Part 1では、以下のポイントが重要です：
                
                1. **簡潔性**: 各質問に2-3文で答える
                2. **自然な表現**: 会話調で自然な英語を使用
                3. **個人的な経験**: 具体的な体験や意見を含める
                4. **適切な語彙**: トピックに関連する専門用語を適度に使用
                5. **流暢性**: 詰まらずにスムーズに話す
                
                この例では、仕事とテクノロジーという身近なトピックを通じて、iOS開発者としての経験を自然に表現しています。
                """,
                audioFileName: nil,
                conversationScript: nil
            )
        ],
        description: "Speaking Part 1: Personal Questions & Opinions - iOS Engineer Interview Style"
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
                audioFileName: nil,
                conversationScript: nil
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
                audioFileName: nil,
                conversationScript: nil
            )
        ],
        description: "Speaking Test 3"
    )
    
    static let allTests: [Test] = [test1, test2, test3]
} 