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
                audioFileName: "speaking_test1_q1",
                conversationScript: nil
            ),
            Question(
                type: .shortAnswer,
                passage: nil,
                questionText: """
                形式: トピックが書かれたカードを渡され、1分間の準備時間でスピーチを考え、その後1～2分間話します。

                Cue Card (トピックカード)

                Describe a software feature you worked on that you are proud of.
                You should say:
                • what the feature was
                • what challenges you faced while developing it
                • how you collaborated with your team
                • and explain why you are proud of this feature.
                """,
                options: nil,
                correctAnswer: """
                Alright, so I'd like to talk about a feature I worked on recently that I'm quite proud of. It was a new image search function for our e-commerce application. The goal was to allow users to take a photo of an item they see in the real world, and our app would then search our product database to find similar-looking items for them to purchase.

                The biggest challenge was definitely on the performance side. Initially, when a user uploaded an image, the search process was taking up to ten seconds, which is far too long and would lead to a poor user experience. We had to figure out how to process the image and query our database more efficiently. This involved a lot of asynchronous programming to ensure the user interface remained responsive and didn't freeze while the search was happening in the background.

                Collaboration was absolutely key to overcoming this challenge. I worked very closely with a backend engineer. I communicated what the app needed from the server API, and he optimized the database queries and the image analysis algorithm on their end. We had daily check-ins to sync our progress, which was crucial.

                The reason I'm so proud of this feature is twofold. Firstly, we managed to reduce the average search time from ten seconds down to under two, which was a huge technical achievement. But more importantly, after we released it, we saw a 15% increase in user engagement with the search function, and received a lot of positive reviews praising how "magical" it felt. Knowing that our hard work directly resulted in a feature that users genuinely love and find useful is the most satisfying feeling as an engineer.
                """,
                japaneseTranslation: """
                トピックカード

                あなたが手がけたソフトウェアの機能で、誇りに思っているものについて説明してください。
                以下の点について話してください：
                • それがどのような機能だったか
                • それを開発する上で、どのような困難に直面したか
                • チームとどのように協力したか
                • そして、なぜその機能を誇りに思っているのかを説明してください。

                模範解答例

                はい、では最近私が手がけた機能で、非常に誇りに思っているものについてお話ししたいと思います。それは、私たちのEコマースアプリケーション向けの、新しい画像検索機能でした。目的は、ユーザーが実世界で見た商品の写真を撮ると、我々のアプリが製品データベースを検索し、似たような見た目の商品を見つけて購入できるようにすることでした。

                最大の課題は、間違いなくパフォーマンス面でした。当初、ユーザーが画像をアップロードすると、検索プロセスに最大10秒もかかっていました。これは長すぎて、劣悪なユーザー体験につながります。私たちは、画像を処理し、データベースに問い合わせる方法を、より効率的にする必要がありました。これには、検索がバックグラウンドで行われている間、ユーザーインターフェースが応答性を保ち、フリーズしないようにするための、多くの非同期プログラミングが含まれていました。

                この課題を克服するためには、協力が絶対的に鍵となりました。私はバックエンドエンジニアと非常に緊密に連携しました。私がアプリがサーバーAPIに何を必要としているかを伝え、彼がサーバー側でデータベースのクエリや画像解析アルゴリズムを最適化してくれました。進捗を同期させるために毎日チェックインを行い、それが非常に重要でした。

                私がこの機能をとても誇りに思う理由は二つあります。第一に、我々は平均検索時間を10秒から2秒未満に短縮することに成功し、これは大きな技術的成果でした。しかし、より重要なのは、それをリリースした後、検索機能のユーザーエンゲージメントが15%向上し、「まるで魔法のようだ」と称賛する多くの肯定的なレビューを受け取ったことです。私たちの努力が、ユーザーが心から愛し、便利だと感じてくれる機能に直接結びついたと知ることは、エンジニアとして最も満足のいく感覚です。
                """,
                explanation: """
                スピーキング パート2の目標

                パート2は「ロングターン」とも呼ばれ、与えられたトピックについて、論理的に構成された話を1～2分間、一人で話し続ける能力が試されます。評価されるのは以下の点です。
                1. 構成力: 話の導入、本論、結論が分かりやすく整理されているか。
                2. 流暢さと一貫性: 途切れ途切れにならず、一貫したテーマで話し続けられるか。
                3. 語彙と文法: トピックに合った語彙を幅広く、かつ正確に使えるか。

                最重要ポイント：1分間の準備時間の使い方

                このパートで高得点を取る鍵は、スピーチそのものだけでなく、その前にある1分間の準備時間をいかに有効に使うかにかかっています。
                やってはいけないこと:
                • 文章を丸ごと書こうとする（時間が絶対的に足りず、読むだけの不自然なスピーチになります）。
                やるべきこと：
                • キーワードのメモ: トピックカードの4つの質問（bullet points）をそのままスピーチの骨格（アウトライン）として利用し、各項目について2～3個のキーワードだけをメモします。
                （今回のトピックでのメモの例）
                • What feature: image search / e-commerce app / find similar items
                • Challenges: performance! / 10s → too slow / async programming
                • Collaborate: backend engineer / API / daily check-in
                • Why proud: technical: <2s / user: +15% engagement, positive reviews, "magical"
                このようにキーワードだけをメモしておけば、1分で十分に準備ができ、話すときにはメモをヒントに、自分の言葉で肉付けしていくことができます。

                模範解答の分析：なぜこのスピーチは高評価なのか？

                1. 明確な導入
                Alright, so I'd like to talk about a feature I worked on recently that I'm quite proud of.
                → これから何を話すのかを試験官に明確に伝えており、スムーズに話を始めています。

                2. トピックカードへの忠実な応答
                • 第1段落 (what the feature was): It was a new image search function... と、機能が何であったかを具体的に説明しています。
                • 第2段落 (what challenges): The biggest challenge was definitely on the performance side. と、課題が何であったかを明確に述べ、asynchronous programming のような専門用語も自然に使い、具体的に説明しています。
                • 第3段落 (how you collaborated): I worked very closely with a backend engineer. と、チームとの協力を具体的に描写し、コミュニケーション能力もアピールできています。
                • 第4段落 (why you are proud): The reason I'm so proud of this feature is twofold. (誇りに思う理由は2つあります) という表現を使い、論理的に理由を述べています。

                3. 説得力のある理由
                最後の「なぜ誇りに思うか」という点で、この解答は非常に優れています。
                • 技術的成果: ...reduce the average search time from ten seconds down to under two... (技術的な課題を解決したこと)
                • ユーザーへの貢献: ...saw a 15% increase in user engagement... received a lot of positive reviews... (ビジネスやユーザーに良い影響を与えたこと)
                この2つの側面から語ることで、単に「コードが書ける」だけでなく、「ユーザーやビジネスに貢献できるエンジニアである」という、より成熟したプロフェッショナル像を示すことができています。

                4. 効果的な語彙
                intuitive (直感的な), performance (性能), asynchronous (非同期の), collaboration (協力), user engagement (ユーザーエンゲージメント), satisfying (満足のいく) など、トピックに合った的確な語彙が使われています。

                この模範解答を参考に、あなた自身の経験をこの「物語の型」に当てはめて話す練習をしてみてください。
                """,
                audioFileName: "speaking_test1_q2",
                conversationScript: nil
            )
        ],
        description: "Speaking Part 1 & 2: Personal Questions & Long Turn - iOS Engineer Interview Style"
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