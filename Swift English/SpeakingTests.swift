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
                
                Questions
                
                Let's talk about your work. What is your job?
                
                Why did you choose to become an iOS engineer?
                
                What do you enjoy most about your work?
                
                Let's move on to talk about technology. Do you use a lot of apps in your daily life?
                
                Is there an app you find particularly well-designed?
                """,
                options: nil,
                correctAnswer: """
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
                japaneseTranslation: """
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
                スピーキング パート1の目標
                
                スピーキングのパート1は、試験官とのウォーミングアップセッションです。ここでは、あなたの「身近なトピックについて、基本的なコミュニケーションが取れるか」が見られています。難しい単語や複雑な文法を使うことよりも、以下の3点が重要です。
                1. 流暢さ(Fluency): 途中で長く黙り込まず、スムーズに話し続けられるか。
                2. 明瞭さ(Clarity): 質問に直接的に答え、分かりやすい言葉で話せているか。
                3. 自然さ(Naturalness): 丸暗記した文章ではなく、自然な会話のやり取りができているか。
                
                効果的な学習法
                
                この練習画面は、スピーキング力を効果的に向上させるために設計されています。
                1. まず自分で話してみる: 最初は模範解答を見ずに、質問に対して自分の答えを「録音＆再生ボタン」を使って録音してみましょう。
                2. 自分のスピーキングを確認: 録音した自分の音声を聞き返し、「スムーズに話せているか」「文法や単語の使い方は自然か」を客観的にチェックします。
                3. 模範解答と比較する: 次に「模範解答を見る」を押し、テキストと音声の両方で解答例を確認します。自分の答えと比べて、語彙の使い方、文の組み立て方、アイデアの広げ方などを比較・分析しましょう。このプロセスを繰り返すことで、自然で的確な受け答えが身についていきます。
                
                模範解答の分析：なぜこの答え方が良いのか？
                
                各解答例は、高得点を狙うための「Answer + Extend (答える+α)」という基本戦略に沿って作られています。
                
                質問1: あなたの仕事は何ですか？
                • Answer (答え): I work as an iOS engineer.
                    → 質問に直接的に答えています。
                • Extend (α): My main responsibility is to develop and maintain applications...
                    → 「主な職務は～です」と付け加えることで、単なる単語の返答ではなく、自分が何をしているかを具体的に説明し、会話を広げています。develop, maintainといった語彙も効果的です。
                
                質問2: なぜiOSエンジニアになろうと決めたのですか？
                • Answer (答え): I've always been fascinated by Apple's products...
                    → 「なぜなら～」と理由を明確に述べています。
                • Extend (α): I chose this career because I enjoy the challenge of problem-solving...
                    → 「問題解決という挑戦が好きだから」と、より個人的で具体的な理由を加えています。fascinated by (～に魅了される)、intuitive (直感的な) といった感情や評価を表す語彙は、表現を豊かにします。
                
                質問3: あなたの仕事で最も楽しいことは何ですか？
                • Answer (答え): The most enjoyable part for me is seeing an idea turn into a real, functional product.
                    → 最も楽しいことを具体的に示しています。
                • Extend (α): I especially love the moment when we release a new feature and receive positive feedback from users.
                    → 「特に～の瞬間が好きです」と例を挙げることで、答えに深みと真実味を与えています。rewarding (やりがいのある) は、仕事の満足感を表現するのに最適な単語です。
                
                質問4: あなたは日常生活でたくさんアプリを使いますか？
                • Answer (答え): Yes, absolutely.
                    → はっきりと肯定しています。
                • Extend (α): I rely on various apps for almost everything, from... to... and even for...
                    → from A to B の構文を使って、「スケジュール管理からコミュニケーション、さらには学習まで」と具体例を3つ挙げることで、説得力を持たせています。
                
                質問5: 特にデザインが優れていると感じるアプリはありますか？
                • Answer (答え): I think the note-taking app 'Things 3' is exceptionally well-designed.
                    → 具体的なアプリ名を挙げて、質問に答えています。
                • Extend (α): Its user interface is incredibly clean and intuitive, and the animations are very smooth.
                    → なぜデザインが良いと思うのか、その理由を user interface (UI) や animations といった専門的な視点から説明しています。これにより、あなたがiOSエンジニアであることが自然にアピールでき、一貫性のある自己紹介となります。seamless (シームレスな、滑らかな) も高得点を狙える語彙です。
                """,
                audioFileName: "speaking_part1_sample",
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