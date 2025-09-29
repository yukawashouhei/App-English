//
//  SpeakingTests.swift
//  App English
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
            ),
            Question(
                type: .shortAnswer,
                passage: nil,
                questionText: """
                形式: Part 2のトピックに関連した、より抽象的で深い議論。自分の意見を理由や例と共に、より長く展開することが求められます。

                Questions

                What qualities do you think are most important for a software engineer today?

                How has remote work changed the way software development teams collaborate?

                In your opinion, what is more important for a new application: having many features, or being extremely reliable?
                """,
                options: nil,
                correctAnswer: """
                Examiner: What qualities do you think are most important for a software engineer today?
                Candidate: Well, in my opinion, beyond technical skills like coding, I believe the most crucial qualities are problem-solving and communication. Technology is always changing, so the ability to analyze a complex problem and learn how to solve it is fundamental. Equally important is communication, because modern software is built by teams, and you need to be able to clearly explain technical ideas to colleagues, and also understand requirements from non-technical people like designers or product managers.

                Examiner: How has remote work changed the way software development teams collaborate?
                Candidate: Remote work has significantly shifted collaboration towards asynchronous communication. Instead of quick conversations in the office, we now rely heavily on well-written documentation, detailed comments on pull requests, and clear task descriptions in tools like Jira. While this requires more discipline in writing, I think it has a positive side effect: it forces us to document our thought processes more clearly, which can actually help new team members get up to speed faster.

                Examiner: In your opinion, what is more important for a new application: having many features, or being extremely reliable?
                Candidate: I believe for a new application, being extremely reliable is far more important. You only get one chance to make a first impression. If an app is full of features but crashes frequently or is very slow, users will quickly lose trust and uninstall it. It's better to start with a small set of core features that work perfectly, build a foundation of trust and reliability, and then gradually add more features based on user feedback. A reliable app retains users, while a feature-rich but buggy app drives them away.
                """,
                japaneseTranslation: """
                試験官: 今日のソフトウェアエンジニアにとって、最も重要な資質は何だと思いますか？
                解答例: 私の意見ではコーディングのような技術的なスキルは別として、最も重要だと考える資質は問題解決能力とコミュニケーション能力です。テクノロジーは常に変化しているので、複雑な問題を分析し、その解決方法を学ぶ能力は根本的に重要です。同様に重要なのがコミュニケーションです。なぜなら、現代のソフトウェアはチームによって作られており、技術的なアイデアを同僚に明確に説明し、またデザイナーやプロダクトマネージャーのような非技術的な人々からの要求を理解する必要があるからです。

                試験官: リモートワークは、ソフトウェア開発チームの協力の仕方について、どのように変化をもたらしましたか？
                解答例: リモートワークは、協力を非同期コミュニケーションへと大きくシフトさせました。オフィスでの気軽な会話の代わりに、私たちは今、質の高いドキュメント、プルリクエストへの詳細なコメント、そしてJiraのようなツールでの明確なタスク記述に大きく依存しています。これには書く上での規律がより求められますが、良い副作用もあると思います。それは、思考プロセスをより明確に文書化せざるを得なくなることであり、これは実際、新しいチームメンバーが早く戦力になるのを助けることができます。

                試験官: あなたの意見では、新しいアプリケーションにとってより重要なのは、多くの機能を持つことですか、それとも極めて信頼性が高いことですか？
                解答例: 新しいアプリケーションにとっては、極めて信頼性が高いことの方がはるかに重要だと信じています。第一印象を与えるチャンスは一度しかありません。もしアプリが機能満載でも、頻繁にクラッシュしたり非常に遅かったりすれば、ユーザーはすぐに信頼を失い、アンインストールしてしまうでしょう。完璧に動作する少数のコア機能から始め、信頼という基盤を築き、それからユーザーのフィードバックに基づいて徐々に機能を追加していく方が良いです。信頼性の高いアプリはユーザーを維持しますが、機能豊富でもバグの多いアプリはユーザーを遠ざけてしまいます。
                """,
                explanation: """
                スピーキング パート3の目標

                パート3は、パート2のトピックから派生した、より抽象的で社会的なテーマについて試験官と議論するセクションです。ここでは、あなたの「意見を論理的に述べ、それを理由や例でサポートする能力」が試されます。
                パート1や2よりも、以下のような点が求められます。
                • より複雑な文法や幅広い語彙を使いこなす能力。
                • 一般的な事柄や未来について、推測したり意見を述べたりする能力。
                • 一貫性のある、よく構成された主張を展開する能力。

                効果的な解答戦略：PREP法

                パート3の質問に答える際、PREP法という構成を意識すると、論理的で分かりやすい回答になります。
                • P (Point): まず、自分の意見・要点を明確に述べる。
                • R (Reason): なぜそう思うのか、理由を説明する。
                • E (Example): 主張を裏付けるための、具体的な例を挙げる。
                • P (Point): 最後に、もう一度自分の意見・要点を繰り返して話を締めくくる。
                すべての回答がこの形に当てはまるわけではありませんが、この「結論 → 理由 → 具体例 → 結論」という流れを意識することで、話が脱線せず、説得力のある回答ができます。

                模範解答の分析：なぜこの答え方が良いのか？

                この模範解答は、パート3で求められる能力を示しています。

                質問1: 今日のソフトウェアエンジニアにとって、最も重要な資質は何だと思いますか？
                • 解答の構成:
                    1. Point (要点): problem-solving and communication (問題解決能力とコミュニケーション能力) が最も重要だと明確に述べています。
                    2. Reason (理由): 「なぜなら技術は常に変化するから(problem-solving)」「なぜなら現代のソフトウェアはチームで作られるから(communication)」と、2つの資質それぞれに対して、説得力のある理由を付け加えています。
                • 語彙: crucial (極めて重要な), fundamental (根本的な), equally important (同様に重要な) といった、議論を構成するための高度な語彙が効果的に使われています。

                質問2: リモートワークは、ソフトウェア開発チームの協力の仕方について、どのように変化をもたらしましたか？
                • 解答の構成:
                    1. Point (要点): significantly shifted collaboration towards asynchronous communication (協力を非同期コミュニケーションへと大きくシフトさせた) と、変化の核心を述べています。
                    2. Example (具体例): 「オフィスでの気軽な会話の代わりに(Instead of...)、質の高いドキュメントやJiraに依存するようになった(we now rely heavily on...)」と、対比を用いることで変化を具体的に示しています。
                    3. Further Point (さらなる視点): it has a positive side effect (良い副作用もある) と、単なる変化の説明に終わらず、一歩踏み込んだ独自の視点を加えることで、思考の深さを示しています。

                質問3: 新しいアプリケーションにとってより重要なのは、多くの機能を持つことですか、それとも極めて信頼性が高いことですか？
                • 解答の構成 (PREP法の見本):
                    1. Point (要点): being extremely reliable is far more important (極めて信頼性が高いことの方がはるかに重要だ) と、自分の立場を断言しています。
                    2. Reason (理由): You only get one chance to make a first impression. (第一印象を与えるチャンスは一度しかない) と、核心的な理由を述べています。
                    3. Example (具体例): 「もしアプリが機能満載でも頻繁にクラッシュしたら、ユーザーは信頼を失いアンインストールするだろう」と、仮説の状況を具体例として挙げています。
                    4. Point/Conclusion (結論): 最後に「信頼性の高いアプリはユーザーを維持し、バグの多いアプリはユーザーを遠ざける」と、自分の主張を力強く締めくくっています。

                この解答のように、明確な意見を述べ、それを支えるしっかりとした理由と分かりやすい例を挙げることで、説得力のある議論を展開することができます。
                """,
                audioFileName: "speaking_test1_q3",
                conversationScript: nil
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
                passage: nil,
                questionText: """
                形式: 身近なトピックに関する短い質疑応答。1つの質問に対し、2～3文で簡潔に答えるのが目安です。
                
                Questions
                
                Let's talk about how you learn and improve your skills.
                
                1. What programming language or framework are you focusing on learning right now?
                
                2. Why did you choose to focus on that particular technology?
                
                3. Do you prefer learning from video tutorials or written documentation?
                
                4. How do you stay up-to-date with the latest trends in iOS development?
                
                5. In your opinion, what is the most challenging aspect of learning new technologies as a developer?
                """,
                options: nil,
                correctAnswer: """
                Examiner: What programming language or framework are you focusing on learning right now?
                Candidate: Currently, I'm diving deep into SwiftData. I have experience with Core Data, so my main focus is on understanding the new, simpler paradigms it introduces for data persistence.
                
                Examiner: Why did you choose to focus on that particular technology?
                Candidate: Mainly because it represents the future of data management on Apple's platforms. Mastering it seems essential for building modern, efficient apps and for staying relevant as an iOS developer.
                
                Examiner: Do you prefer learning from video tutorials or written documentation?
                Candidate: That's a good question. I generally prefer written documentation for in-depth, technical details. However, I find video tutorials are excellent for getting a quick, high-level overview of a new concept before I start reading the specifics.
                
                Examiner: How do you stay up-to-date with the latest trends in iOS development?
                Candidate: I have a weekly routine to keep myself informed. I subscribe to a few key newsletters like iOS Dev Weekly, and I often listen to podcasts like Swift by Sundell during my commute to hear different perspectives.
                
                Examiner: In your opinion, what is the most challenging aspect of learning new technologies as a developer?
                Candidate: For me, the most challenging part is finding the dedicated time to go beyond a superficial understanding. It's relatively easy to learn the basics of a new API, but it takes consistent practice to truly master its best practices and limitations.
                """,
                japaneseTranslation: """
                試験官: あなたの学習やスキルアップの方法について話しましょう。
                
                試験官: 今、どのプログラミング言語やフレームワークに重点を置いて学習していますか？
                解答例: 現在は、SwiftDataを深く学んでいます。Core Dataの経験はあるので、データ永続化に関してSwiftDataが導入する新しい、よりシンプルなパラダイムを理解することに重点を置いています。
                
                試験官: なぜその特定の技術に注目しようと決めたのですか？
                解答例: 主に、それがAppleプラットフォームにおけるデータ管理の未来を象徴しているからです。それを習得することは、モダンで効率的なアプリを構築し、iOS開発者として市場価値を維持するために不可欠だと感じています。
                
                試験官: ビデオチュートリアルと書かれたドキュメントでは、どちらで学ぶことを好みますか？
                解答例: 良い質問ですね。深い技術的詳細については、一般的に書かれたドキュメントを好みます。しかし、新しい概念の概要を素早く掴むには、詳細を読む前にビデオチュートリアルを見るのが非常に優れていると感じます。
                
                試験官: iOS開発の最新トレンドについて、どのように情報を得ていますか？
                解答例: 情報を得るために毎週の習慣があります。iOS Dev Weeklyのような主要なニュースレターをいくつか購読していますし、通勤中にはSwift by Sundellのようなポッドキャストをよく聞いて、様々な視点に触れるようにしています。
                
                試験官: あなたの意見では、開発者として新しい技術を学ぶ上で最も挑戦的な側面は何ですか？
                解答例: 私にとって最も挑戦的なのは、表面的な理解を超えて深く学ぶための専門的な時間を見つけることです。新しいAPIの基本を学ぶのは比較的簡単ですが、そのベストプラクティスや限界を真に習得するには、一貫した実践が必要です。
                """,
                explanation: """
                ## スピーキング パート1の目標

                IELTSスピーキングのパート1は、自己紹介や日常生活など、身近なトピックについての短い質疑応答です。目的は、受験者をリラックスさせ、基本的なコミュニケーション能力を評価することにあります。評価のポイントは、複雑な意見を述べることよりも、**質問を正確に理解し、よどみなく、かつ明確に答える能力**です。

                ## 効果的な学習法：Answer + Extend (答えて、広げる)

                パート1で高評価を得るための最も効果的な戦略は、「**Answer + Extend**」です。質問に直接答えた後、一文か二文、理由や具体例、追加情報を加えることで、単なる「はい/いいえ」の回答を避け、自然な会話の流れを作り出します。

                - **Answer (答える)**: 質問に対して、まず直接的で明確な答えを述べます。
                - **Extend (広げる)**: なぜそう思うのか (理由)、例えばどんなことか (具体例)、あるいは関連する情報 (追加情報) を付け加えます。

                ## 模範解答の分析：なぜこの答え方が良いのか？

                1.  **質問1 (学習中の技術)**: 「SwiftDataです」と直接答えた後、「Core Dataの経験があるから」という**背景(追加情報)**を加えています。これにより、単なる学習者ではなく、経験に基づいたスキルアップを目指していることが伝わります。

                2.  **質問2 (選んだ理由)**: 「未来だから」と答えた後、「モダンなアプリ構築に不可欠」「市場価値を維持するため」という具体的な**理由**を2つ挙げています。これにより、技術選択に対する明確な動機とキャリアへの意識の高さを示すことができます。

                3.  **質問3 (学習方法の好み)**: 「ドキュメントが好きです」と単純に答えるのではなく、「詳細にはドキュMント」「概要把握にはビデオ」と両方の利点を認め、状況に応じて使い分けるというバランスの取れた**経験**を語っています。これにより、一方的でない柔軟な思考を示すことができます。

                4.  **質問4 (情報収集の習慣)**: 「ニュースレターとポッドキャストです」と答えるだけでなく、「iOS Dev Weekly」「Swift by Sundell」という**具体的な名前**を挙げています。これにより、回答に信憑性と具体性が増し、日頃から情報収集を怠らない積極的な姿勢をアピールできます。

                5.  **質問5 (最も挑戦的なこと)**: 「時間を見つけること」という直接的な答えに、「表面的な理解を超えて」という**深掘りした説明**を加えています。これにより、単に忙しいということだけでなく、技術習得の深さについて考察していることを示し、思慮深い技術者であるという印象を与えます。
                """,
                audioFileName: "speaking_test2_q1",
                conversationScript: nil
            ),
            Question(
                type: .shortAnswer,
                passage: nil,
                questionText: """
                形式: トピックが書かれたカードを渡され、1分間の準備時間でスピーチを考え、その後1～2分間話します。

                Cue Card (トピックカード)

                Describe a time when you helped a colleague or junior developer learn something new.
                You should say:
                • what skill or technology you taught them
                • what challenges they were facing
                • how you approached the teaching process
                • and explain what you learned from this experience.
                """,
                options: nil,
                correctAnswer: """
                Well, I'd like to talk about a time when I helped a junior developer on my team learn about state management in SwiftUI. This was about six months ago.

                The skill I taught them was how to properly use ObservableObject and @Published properties in SwiftUI. Sarah, who had just joined our team, was struggling with understanding how data flows through a SwiftUI application. She was coming from a UIKit background, so the declarative nature of SwiftUI's state management was quite different from what she was used to.

                The main challenge she was facing was that her views weren't updating when the underlying data changed. She was treating SwiftUI views like UIKit view controllers, trying to manually update the UI instead of letting the framework handle it reactively. This was causing a lot of frustration because her code looked correct, but the app wasn't behaving as expected.

                My approach was to start with the fundamentals. I sat down with her for about an hour and we built a simple to-do list app together from scratch. I showed her step by step how to create an ObservableObject class, how to use @Published properties, and how to connect them to SwiftUI views with @StateObject and @ObservedObject. We also covered when to use @State versus @StateObject, which is often confusing for beginners.

                What I learned from this experience was that explaining concepts to someone else really deepens your own understanding. Teaching her forced me to think about why SwiftUI works the way it does, not just how to use it. I also realized how important it is to relate new concepts to things people already know. By comparing SwiftUI's state management to concepts she was familiar with from UIKit, I was able to make the learning process much smoother for her.
                """,
                japaneseTranslation: """
                トピックカード

                同僚や後輩の開発者が何か新しいことを学ぶのを手伝った時のことについて説明してください。
                以下の点について話してください：
                • どのようなスキルや技術を教えたか
                • 彼らがどのような課題に直面していたか
                • どのように教育プロセスにアプローチしたか
                • そして、この経験から何を学んだかを説明してください。

                模範解答例

                では、私のチーム の後輩開発者にSwiftUIの状態管理について教えた時のことをお話ししたいと思います。これは約6ヶ月前のことでした。

                私が教えたスキルは、SwiftUIでObservableObjectと@Publishedプロパティを適切に使用する方法でした。チームに参加したばかりのサラは、SwiftUIアプリケーションでデータがどのように流れるかを理解するのに苦労していました。彼女はUIKitのバックグラウンドから来ていたので、SwiftUIの状態管理の宣言的な性質は、彼女が慣れ親しんでいたものとはかなり異なっていました。

                彼女が直面していた主な課題は、基になるデータが変更されても、ビューが更新されないということでした。彼女はSwiftUIビューをUIKitビューコントローラーのように扱い、フレームワークにリアクティブに処理させる代わりに、UIを手動で更新しようとしていました。これは、コードが正しく見えるのにアプリが期待通りに動作しないため、多くのフラストレーションを引き起こしていました。

                私のアプローチは、基礎から始めることでした。彼女と約1時間座って、ゼロから簡単なTo-Doリストアプリを一緒に構築しました。ObservableObjectクラスの作成方法、@Publishedプロパティの使用方法、そして@StateObjectと@ObservedObjectを使ってSwiftUIビューに接続する方法を段階的に示しました。また、@Stateと@StateObjectをいつ使うかについても説明しました。これは初心者にとってよく混乱する部分です。

                この経験から学んだことは、誰かに概念を説明することで、自分自身の理解が本当に深まるということでした。彼女に教えることで、SwiftUIがどのように機能するかだけでなく、なぜそのように機能するのかを考えざるを得なくなりました。また、新しい概念を人々がすでに知っていることに関連付けることがいかに重要かも気付きました。SwiftUIの状態管理を、彼女がUIKitで馴染みのある概念と比較することで、学習プロセスを彼女にとってはるかにスムーズにすることができました。
                """,
                explanation: """
                ## スピーキング パート2の目標

                パート2は「ロングターン」と呼ばれ、与えられたトピックについて1～2分間、一人で話し続ける能力が試されます。評価されるのは以下の点です：
                1. **構成力**: 話の導入、本論、結論が分かりやすく整理されているか
                2. **流暢さと一貫性**: 途切れ途切れにならず、一貫したテーマで話し続けられるか
                3. **語彙と文法**: トピックに合った語彙を幅広く、かつ正確に使えるか

                ## 最重要ポイント：1分間の準備時間の使い方

                このパートで高得点を取る鍵は、1分間の準備時間をいかに有効に使うかです。

                **やってはいけないこと:**
                - 文章を丸ごと書こうとする（時間が足りず、読むだけの不自然なスピーチになります）

                **やるべきこと:**
                - **キーワードのメモ**: トピックカードの4つの質問をスピーチの骨格として利用し、各項目について2～3個のキーワードだけをメモします

                **今回のトピックでのメモの例:**
                - **What skill**: SwiftUI state management / ObservableObject / @Published
                - **Challenges**: UIKit background / views not updating / manual UI updates
                - **How taught**: fundamentals first / to-do app / step by step / @State vs @StateObject
                - **What learned**: deepened understanding / relating to known concepts / teaching = learning

                ## 模範解答の分析：なぜこのスピーチは高評価なのか？

                ### 1. 明確な導入
                "Well, I'd like to talk about a time when I helped a junior developer..."
                → これから何を話すのかを明確に伝え、スムーズに話を始めています。

                ### 2. トピックカードへの忠実な応答
                - **第1段落**: 「SwiftUIの状態管理を教えた」と、何のスキルかを具体的に説明
                - **第2段落**: 「UIKitからSwiftUIへの移行で混乱していた」と、課題を明確に説明
                - **第3段落**: 「基礎から始めて実践的なアプリを作った」と、教え方を具体的に描写
                - **第4段落**: 「教えることで自分の理解も深まった」と、学びを述べています

                ### 3. 説得力のある技術的内容
                この解答は技術的な専門用語（ObservableObject, @Published, @StateObject等）を自然に使いながら、実際の開発現場で起こりうる課題と解決策を具体的に示しています。

                ### 4. 人間的な要素
                単なる技術指導ではなく、「フラストレーション」「理解の深まり」「学習プロセスをスムーズにする」といった感情や学習効果についても言及し、メンタリングの人間的側面を表現しています。

                ### 5. 効果的な語彙
                - **教育関連**: fundamentals, step by step, relate concepts, learning process
                - **技術関連**: declarative, reactively, state management
                - **感情表現**: frustration, struggling, smoother, deepen understanding

                この模範解答を参考に、あなた自身のメンタリング経験をこの構造に当てはめて練習してみてください。
                """,
                audioFileName: "speaking_test2_q2",
                conversationScript: nil
            ),
            Question(
                type: .shortAnswer,
                passage: nil,
                questionText: """
                形式: Part 2のトピックに関連した、より抽象的で深い議論。自分の意見を理由や例と共に、より長く展開することが求められます。

                Questions

                Let's discuss the broader aspects of software quality.

                1. In general, what are the main consequences of ignoring technical debt in a software project?

                2. How do you think the rise of agile development and rapid release cycles has changed the way teams manage technical debt?

                3. When, if ever, is it justifiable for a team to consciously take on technical debt? Please compare the potential benefits with the long-term risks.
                """,
                options: nil,
                correctAnswer: """
                Examiner: In general, what are the main consequences of ignoring technical debt in a software project?
                Candidate: From my perspective, the primary consequence of ignoring technical debt is a severe decrease in development velocity over time. This happens because the codebase becomes progressively more complex and fragile. As a result, implementing new features or even fixing minor bugs takes significantly longer than it should, as developers must navigate a tangled and unpredictable system. For instance, I've seen projects where a simple UI change required weeks of work due to tightly-coupled, poorly-written legacy code. Ultimately, this not only impacts delivery schedules but also seriously harms team morale.

                Examiner: How do you think the rise of agile development and rapid release cycles has changed the way teams manage technical debt?
                Candidate: That's an interesting point. I believe agile development has a dual effect on technical debt. On one hand, the pressure to deliver features in short sprints can tempt teams to cut corners and accumulate debt more quickly. However, on the other hand, agile frameworks provide excellent mechanisms to manage it proactively. For example, the practice of holding regular retrospectives allows teams to openly discuss and identify areas of the code that are slowing them down. Many successful agile teams now formally allocate a certain percentage of their capacity, perhaps 15-20%, in each sprint specifically for refactoring and paying down this debt. So, while agile might increase the creation of debt, it also provides the discipline to manage it continuously.

                Examiner: When, if ever, is it justifiable for a team to consciously take on technical debt? Please compare the potential benefits with the long-term risks.
                Candidate: In my opinion, consciously incurring technical debt is a strategic business decision that is only justifiable in very specific, high-stakes situations. The main potential benefit is speed to market. For example, a startup might need to launch a minimum viable product (MVP) to secure funding or to beat a competitor to the market. In such a case, taking architectural shortcuts might be a calculated risk. The long-term risk, of course, is substantial. If the product is successful, the team is immediately faced with a high "interest payment" in the form of slower development and the eventual need for a costly, large-scale refactoring project. Therefore, it's a trade-off that should only be made with a clear understanding of the future costs and a concrete plan to address the debt as soon as the strategic goal is achieved.
                """,
                japaneseTranslation: """
                試験官: ソフトウェアの品質という、より広い側面について議論しましょう。

                試験官: 一般的に、ソフトウェアプロジェクトで技術的負債を無視することの主な結末は何だと思いますか？
                解答例: 私の観点からは、技術的負債を無視することの主な結末は、時間とともに開発速度が著しく低下することです。これは、コードベースが次第に複雑で壊れやすくなるために起こります。結果として、開発者は絡み合った予測不能なシステムを解読しなければならず、新機能の実装や些細なバグ修正でさえ、本来あるべきよりもかなり長い時間がかかります。例えば、密結合で質の悪いレガシーコードのせいで、単純なUIの変更に数週間を要したプロジェクトを見たことがあります。最終的に、これは納品スケジュールに影響を与えるだけでなく、チームの士気にも深刻な害を及ぼします。

                試験官: アジャイル開発と迅速なリリースサイクルの台頭は、チームが技術的負債を管理する方法をどのように変えたと思いますか？
                解答例: それは興味深い点ですね。アジャイル開発は技術的負債に対して二重の効果をもたらすと信じています。一方では、短いスプリントで機能を提供するというプレッシャーが、チームに近道をさせ、より速く負債を蓄積させる誘惑となり得ます。しかし、もう一方では、アジャイルのフレームワークはそれを積極的に管理するための優れたメカニズムを提供します。例えば、定期的にレトロスペクティブ（振り返り）を行う習慣は、チームが開発速度を低下させているコード領域をオープンに議論し、特定することを可能にします。成功しているアジャイルチームの多くは、今や各スプリントのキャパシティの一定割合、おそらく15〜20%を、リファクタリングとこの負債の返済に明確に割り当てています。ですから、アジャイルは負債の発生を増やすかもしれませんが、それを継続的に管理するための規律ももたらすのです。

                試験官: もしあるとすれば、チームが意識的に技術的負債を抱えることは、どのような場合に正当化されますか？市場投入までの速さといった潜在的な利益と、長期的なリスクを比較してください。
                解答例: 私の意見では、意識的に技術的負債を負うことは、非常に特殊で、リスクの高い状況でのみ正当化される戦略的なビジネス判断です。主な潜在的利益は、市場投入までの速さです。例えば、スタートアップが資金調達のため、あるいは競合他社に先んじるために、実用最小限の製品（MVP）をローンチする必要があるかもしれません。そのような場合、アーキテクチャ上の近道を選ぶことは、計算されたリスクかもしれません。もちろん、長期的なリスクは相当なものです。もし製品が成功すれば、チームは開発速度の低下や、最終的にはコストのかかる大規模なリファクタリングプロジェクトの必要性という形で、高い「利子の支払い」に直面します。したがって、それは将来のコストを明確に理解し、戦略的目標が達成され次第、その負債に対処する具体的な計画があって初めて行われるべきトレードオフです。
                """,
                explanation: """
                ## スピーキング パート3の目標

                パート3は、パート2のトピックから派生した、より抽象的で一般的なテーマについて深く議論する能力を評価します。一貫性のある意見を述べ、それを理由や具体例で説得力をもって裏付ける、高度な論理的思考力と表現力が求められます。

                ## 効果的な解答戦略：PREP法

                抽象的な質問に対して、論理的で分かりやすい回答を構成するための強力なフレームワークが「PREP法」です。
                - **P (Point)**: まず、自分の**主張・要点**を明確に述べます。
                - **R (Reason)**: 次に、その主張に至った**理由**を説明します。
                - **E (Example)**: 主張を裏付けるための具体的な**事例**を挙げます。
                - **P (Point)**: 最後に、**主張・要点**を再度述べて、話を締めくくります。

                ## 模範解答の分析：なぜこの答え方が良いのか？

                1.  **質問1 (技術的負債の結末)**:
                    -   **P**: 開発速度が低下し、チームの士気が下がる。
                    -   **R**: コードが複雑で壊やすくなるから。
                    -   **E**: 単純なUI変更に数週間かかったプロジェクトの例。
                    -   **P**: 結論として、速度とモチベーションが低下する。
                    -   **分析**: PREP法に沿って、主張と理由、具体例が明確に述べられています。`velocity` (開発速度) や `fragile` (壊れやすい)、`morale` (士気) といった高度な語彙を使い、説得力のある回答を構築しています。

                2.  **質問2 (アジャイル開発の影響)**:
                    -   **P**: 二重の効果がある（負債を生みやすくも、管理しやすくもする）。
                    -   **R**: 短いスプリントが近道を誘う一方、レトロスペクティブのような習慣が管理を促すから。
                    -   **E**: スプリントのキャパシティの15-20%を負債返済に割り当てるチームの例。
                    -   **P**: 結論として、アジャイルは負債を増やすが、管理する規律も与える。
                    -   **分析**: "On one hand..., however, on the other hand..." という対比表現を使い、物事の多面的な側面を論じています。`proactively` (積極的に) や `retrospective` (振り返り) のようなアジャイル開発の専門用語も的確に使用しています。

                3.  **質問3 (技術的負債の正当化)**:
                    -   **P**: 戦略的なビジネス判断として、特定の状況下でのみ正当化される。
                    -   **R**: 主な理由は市場投入までの速さ（time to market）を確保するため。
                    -   **E**: MVPをローンチしてビジネスアイデアを検証するスタートアップの例。
                    -   **P**: 結論として、将来のコストを理解した上での計算されたリスク（トレードオフ）である。
                    -   **分析**: `justifiable` (正当化できる)、`high-stakes` (リスクの高い)、`trade-off` (トレードオフ) のような、高度な議論で使われる語彙を駆使しています。利益とリスクを比較する複雑な質問に対し、明確な論理構造で回答しています。
                """,
                audioFileName: "speaking_test2_q3",
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
                type: .shortAnswer,
                passage: nil,
                questionText: """
                形式: 身近なトピックに関する短い質疑応答。1つの質問に対し、2～3文で簡潔に答えるのが目安です。

                Questions

                1. What new technology or framework are you currently learning for iOS development?

                2. What motivated you to start learning that particular technology?

                3. Which learning resource, such as official documentation or video tutorials, do you find most effective?

                4. How do you incorporate learning into your daily or weekly routine as a developer?

                5. In your opinion, how has the rise of AI-powered tools changed the way developers learn new skills?
                """,
                options: nil,
                correctAnswer: """
                Examiner: What new technology or framework are you currently learning for iOS development?
                Candidate: Currently, I'm focusing on mastering the new Observation framework in Swift. I believe it's a fundamental shift from Combine for state management, and understanding it deeply is crucial for building modern, efficient SwiftUI apps.

                Examiner: What motivated you to start learning that particular technology?
                Candidate: The main motivation was to simplify my app's architecture and improve its performance. I noticed some performance bottlenecks in my current project, and recent WWDC sessions highlighted how Observation could directly address these issues.

                Examiner: Which learning resource, such as official documentation or video tutorials, do you find most effective?
                Candidate: I find a combination to be most effective, but I usually start with Apple's official documentation. It provides the foundational knowledge, and then I watch video tutorials to see practical implementations, which helps solidify my understanding.

                Examiner: How do you incorporate learning into your daily or weekly routine as a developer?
                Candidate: I set aside the first 30 minutes of my workday specifically for learning. This habit ensures I consistently make progress, and I also dedicate a few hours on weekends to apply what I've learned in small personal projects.

                Examiner: In your opinion, how has the rise of AI-powered tools changed the way developers learn new skills?
                Candidate: I think they've significantly accelerated the learning process, especially for boilerplate code and debugging. However, I believe it's still essential to understand the underlying concepts rather than just relying on the generated code.
                """,
                japaneseTranslation: """
                試験官: 現在、iOS開発のために新しい技術やフレームワークを学んでいますか？
                解答例: 現在は、Swiftの新しいObservationフレームワークを習得することに集中しています。これは状態管理においてCombineからの根本的な転換だと考えており、モダンで効率的なSwiftUIアプリを構築するためには、深く理解することが不可欠です。

                試験官: その特定の技術を学び始めた動機は何ですか？
                解答例: 主な動機は、アプリのアーキテクチャを簡素化し、パフォーマンスを向上させることでした。現在のプロジェクトでいくつかのパフォーマンスのボトルネックに気づき、最近のWWDCのセッションでObservationがこれらの問題を直接解決できると強調されていたからです。

                試験官: 公式ドキュメントやビデオチュートリアルなど、どの学習リソースが最も効果的だと感じますか？
                解答例: 組み合わせが最も効果的だと感じていますが、通常はAppleの公式ドキュメントから始めます。それが基礎知識を提供してくれ、その後ビデオチュートリアルで実践的な実装を見ることで、理解を確かなものにするのに役立ちます。

                試験官: 開発者として、日々のルーティンにどのように学習を取り入れていますか？
                解答例: 毎日の仕事始めの30分を学習専用に確保しています。この習慣によって一貫して進歩できますし、週末には数時間を使って、その週に学んだことを小さな個人プロジェクトで応用しています。

                試験官: AI搭載ツールの台頭は、開発者が新しいスキルを学ぶ方法をどのように変えたとお考えですか？
                解答例: 特に定型的なコードやデバッグに関して、学習プロセスを大幅に加速させたと思います。しかし、生成されたコードにただ依存するのではなく、その根底にあるコンセプトを理解することが依然として不可欠だと信じています。
                """,
                explanation: """
                **スピーキング パート1の目標**

                IELTSスピーキングのパート1は、自己紹介や身近なトピックについての質疑応答です [1]。評価のポイントは、流暢さと一貫性、語彙力、文法の正確さ、そして発音です [2]。単に質問に答えるだけでなく、自然な会話の流れを意識し、自分の意見や経験を簡潔に表現する能力が試されます。

                **効果的な学習法**

                「Answer + Extend（回答＋補足）」のテクニックを使いましょう。まず質問に直接答え、次に理由や具体例、追加情報を一文付け加えることで、より豊かで自然な回答になります。これにより、語彙力や文法構成力を示す機会が増えます。

                **模範解答の分析：なぜこの答え方が良いのか？**

                1. **質問1**: 直接的な回答（"focusing on mastering the new Observation framework"）に加え、「なぜそれが重要か」（"crucial for building modern, efficient SwiftUI apps"）という理由を述べています。`mastering`（習得する）、`fundamental shift`（根本的な転換）といった専門的かつ的確な語彙を使用しています。

                2. **質問2**: 動機（"simplify my app's architecture and improve its performance"）を明確に述べ、その背景として具体的な課題（"performance bottlenecks"）と情報源（"WWDC sessions"）を挙げています。これにより、回答に具体性と説得力が生まれます。

                3. **質問3**: 「両方の組み合わせが効果的」と前置きしつつ、それぞれの役割（"foundational knowledge", "practical implementations"）を説明しています。`solidify my understanding`（理解を確かなものにする）という表現は、学習プロセスを効果的に描写しています。

                4. **質問4**: 具体的な習慣（"set aside the first 30 minutes"）と、その習慣がもたらす結果（"consistently make progress"）を述べています。さらに週末の活動にも言及することで、学習への積極的な姿勢を示しています。`incorporate`（取り入れる）は、習慣について話す際に便利な動詞です。

                5. **質問5**: 意見（"significantly accelerated the learning process"）を述べた後、注意点（"essential to understand the underlying concepts"）を付け加えることで、バランスの取れた視点を示しています。`boilerplate code`（定型的なコード）、`underlying concepts`（根底にあるコンセプト）など、開発者ならではの語彙が効果的に使われています。
                """,
                audioFileName: "speaking_test3_q1",
                conversationScript: nil
            ),
            Question(
                type: .shortAnswer,
                passage: nil,
                questionText: """
                形式: トピックが書かれたカードを渡され、1分間の準備時間でスピーチを考え、その後1～2分間話します。

                Cue Card (トピックカード)

                Describe a project or feature you worked on that significantly improved the user experience.
                You should say:
                • what the feature was and which app it was for
                • what specific user problem it solved and how you approached the solution
                • who you collaborated with on this task
                • and explain why you are proud of the result.
                """,
                options: nil,
                correctAnswer: """
                Certainly, I'd like to talk about a feature I'm particularly proud of, which was redesigning the onboarding flow for a fitness application I was working on. It was a fantastic experience in user-centric development.

                The feature was a complete overhaul of the initial setup process for our fitness app. The original problem was a high user drop-off rate during onboarding; our analytics showed that nearly 40% of new users abandoned the app before completing their profile. The feedback indicated that the process was too text-heavy, confusing, and felt like a chore. My approach was to make it more interactive and visually engaging.

                To achieve this, I collaborated very closely with our UX designer. We started by analyzing user feedback and mapping out a simplified user journey. The designer created prototypes in Figma, and my task was to bring them to life. I implemented a new, swipeable, card-based interface using SwiftUI's `TabView` with a `PageTabViewStyle`. This allowed users to progress through the setup intuitively. I also integrated `SwiftData` to save their preferences seamlessly in the background after each step, which made the process feel much faster.

                I am incredibly proud of the outcome because the results were tangible and directly impacted users in a positive way. After launching the new onboarding flow, we saw the completion rate increase by over 50%, and we received numerous positive App Store reviews specifically mentioning how easy the app was to set up. It was a powerful reminder that a great user experience is just as crucial as the underlying technology, and it truly reinforced the value of effective collaboration between engineering and design.
                """,
                japaneseTranslation: """
                トピックカード

                あなたが携わったプロジェクトや機能で、ユーザー体験を大幅に改善したものについて説明してください。
                以下の点について話してください：
                • それがどのような機能で、どのアプリのためのものだったか
                • それがどのような特定のユーザー問題を解決し、どのようにその解決策に取り組んだか
                • このタスクで誰と協力したか
                • そして、なぜその結果を誇りに思うかを説明してください。

                模範解答例

                はい、私が特に誇りに思っている機能についてお話ししたいと思います。それは、私が携わっていたフィットネスアプリケーションのオンボーディングフローの再設計です。ユーザー中心開発における素晴らしい経験でした。

                その機能は、私たちのフィットネスアプリの初期設定プロセスの完全な見直しでした。元々の問題は、オンボーディング中の高いユーザー離脱率でした。分析データによると、新規ユーザーの約40%がプロフィールを完成させる前にアプリを放棄していました。フィードバックによれば、プロセスが文字ばかりで分かりにくく、面倒な作業のように感じられていたとのことでした。私の取り組みは、それをよりインタラクティブで視覚的に魅力的なものにすることでした。

                これを達成するために、私はUXデザイナーと非常に緊密に協力しました。まずユーザーフィードバックを分析し、簡素化されたユーザージャーニーを設計することから始めました。デザイナーがFigmaでプロトタイプを作成し、私の仕事はそれを実現することでした。私はSwiftUIの`TabView`と`PageTabViewStyle`を使い、スワイプ可能な新しいカードベースのインターフェースを実装しました。これにより、ユーザーは直感的に設定を進めることができました。また、各ステップの後にユーザーの好みをバックグラウンドでシームレスに保存するために`SwiftData`を統合し、プロセスがはるかに速く感じられるようにしました。

                私がこの結果を非常に誇りに思う理由は、その成果が具体的で、ユーザーに直接的なプラスの影響を与えたからです。新しいオンボーディングフローをリリースした後、完了率は50%以上増加し、アプリの設定がいかに簡単であったかを具体的に言及する好意的なApp Storeレビューを数多く受け取りました。これは、優れたユーザー体験が基盤となる技術と同じくらい重要であるということを強く再認識させ、エンジニアリングとデザインの効果的な協力の価値を真に強固なものにしてくれました。
                """,
                explanation: """
                **スピーキング パート2の目標**

                IELTSスピーキングのパート2は「ロングターン」と呼ばれ、与えられたトピックについて1～2分間、一人で話し続ける能力を評価します [1, 2]。評価基準はパート1と同じく、流暢さと一貫性、語彙力、文法の正確さ、発音です [3]。ここでは、論理的に話を構成し、適切な語彙や時制を使いながら、途切れることなく一貫したスピーチを展開する力が特に重要になります。

                **最重要ポイント：1分間の準備時間の使い方**

                この1分間をどう使うかが、スピーチの質を大きく左右します。全文を書く時間はないので、キーワードや短いフレーズをメモする戦略が効果的です。Cue Cardの各bullet pointに対応させて、話したい内容の骨子を書き出しましょう。

                *   **What:** `Redesign onboarding`, `fitness app`
                *   **Problem/Action:** `High drop-off (40%)`, `confusing`, `interactive UI`, `SwiftUI TabView`
                *   **Collaboration:** `UX designer`, `Figma prototypes`
                *   **Result/Proud:** `Completion +50%`, `positive reviews`, `tangible impact`

                このようにメモすることで、話す順序と内容を忘れずに、スピーチの流れをスムーズに保つことができます。

                **模範解答の分析：なぜこのスピーチは高評価なのか？**

                1.  **明確な構成力**: スピーチは「導入 → 問題提起と解決策 → 協力体制 → 結果と学び」という、聞き手が理解しやすい論理的な流れで構成されています。Cue Cardの4つの要点に沿って、自然に話が展開されています。

                2.  **豊富な語彙力 (Lexical Resource)**:
                    *   **技術用語**: `onboarding flow`, `user drop-off rate`, `analytics`, `SwiftUI`, `TabView`, `SwiftData` など、iOS開発者としての専門性を的確に示す語彙が効果的に使われています。
                    *   **一般語彙**: `user-centric`, `overhaul`, `tangible`, `crucial`, `reinforced the value of` など、感情や状況を豊かに表現する単語がスピーチの質を高めています。

                3.  **文法と時制の正確さ**: 過去の経験を語るため、過去形 (`was`, `showed`, `collaborated`) を正確に使用しています。また、学んだことや現在の考えを述べる部分では現在形 (`I am`, `is`) を使うなど、時制のコントロールができています。

                4.  **ストーリーテリング**: 単なる事実の羅列ではなく、「問題発見（データ分析）→ チームでの解決策模索（デザインとの協力）→ 実装（技術選択）→ 成果確認（データとレビュー）」というストーリーとして語られています。これにより、聞き手は興味を失うことなく、話に引き込まれます。
                """,
                audioFileName: "speaking_test3_q2",
                conversationScript: nil
            ),
            Question(
                type: .shortAnswer,
                passage: nil,
                questionText: """
                形式: Part 2のトピックに関連した、より抽象的で深い議論。自分の意見を理由や例と共に、より長く展開することが求められます。

                Questions

                1. In general, why is it important for development teams to address technical problems proactively, rather than just fixing bugs as they appear?

                2. How do you think the pressure to release new features quickly has affected the overall quality of mobile applications in recent years?

                3. When developing a new app, which do you believe is more critical for long-term success: launching with a wide range of features quickly, or launching with fewer, but highly polished and performant, features?
                """,
                options: nil,
                correctAnswer: """
                Examiner: In general, why is it important for development teams to address technical problems proactively, rather than just fixing bugs as they appear?
                Candidate: I believe proactive problem-solving is fundamental for the long-term health and sustainability of any software project. When teams only react to bugs, they are often just treating symptoms, not the underlying disease. Proactively addressing technical issues, such as refactoring complex code or optimizing a database schema, prevents what we call "technical debt" from accumulating. For example, a poorly designed architecture might work for a while, but as the app scales, it can become a massive bottleneck, making it incredibly difficult and expensive to add new features or fix future bugs. So, being proactive is essentially an investment in the future efficiency and stability of the product.

                Examiner: How do you think the pressure to release new features quickly has affected the overall quality of mobile applications in recent years?
                Candidate: That's a great question. In my opinion, the intense market pressure for rapid feature delivery has, in many cases, led to a decline in the average quality of mobile apps. The "move fast and break things" philosophy often prioritizes speed over stability and robustness. This can result in apps that are bloated with features but suffer from poor performance, frequent crashes, and security vulnerabilities. For instance, you often see apps where new functionalities are added, but the core user experience feels neglected or inconsistent. Therefore, while the pace of innovation is exciting, I think it has created a trade-off where long-term quality is sometimes sacrificed for short-term competitive advantage.

                Examiner: When developing a new app, which do you believe is more critical for long-term success: launching with a wide range of features quickly, or launching with fewer, but highly polished and performant, features?
                Candidate: I would strongly argue that launching with a smaller set of highly polished and performant features is far more critical for long-term success. A user's first impression is paramount, and you rarely get a second chance. If an app is slow, buggy, or confusing—even if it has many features—users are likely to uninstall it and leave negative reviews, which can be detrimental to a new product. For example, many successful apps initially launched by doing just one thing exceptionally well. This focus on quality builds trust and a loyal user base, which provides a solid foundation to build upon. You can always iterate and add more features later based on user feedback, but establishing that initial reputation for quality is irreplaceable.
                """,
                japaneseTranslation: """
                試験官: 一般的に、開発チームにとって、バグが発生したときだけ修正するのではなく、技術的な問題に積極的に対処することがなぜ重要なのでしょうか？
                解答例: 積極的な問題解決は、あらゆるソフトウェアプロジェクトの長期的な健全性と持続可能性にとって基本であると信じています。チームがバグに反応するだけの場合、それはしばしば根本的な原因ではなく、症状を治療しているに過ぎません。複雑なコードのリファクタリングやデータベーススキーマの最適化といった技術的な問題に積極的に取り組むことで、私たちが「技術的負債」と呼ぶものが蓄積するのを防ぎます。例えば、設計の悪いアーキテクチャはしばらくは機能するかもしれませんが、アプリがスケールするにつれて巨大なボトルネックとなり、新機能の追加や将来のバグ修正を信じられないほど困難かつ高コストにする可能性があります。ですから、積極的であることは、本質的に製品の将来の効率性と安定性への投資なのです。

                試験官: 近年、新機能を迅速にリリースしなければならないというプレッシャーは、モバイルアプリケーション全体の品質にどのような影響を与えていると思いますか？
                解答例: それは良い質問ですね。私の意見では、迅速な機能提供に対する市場の強いプレッシャーは、多くの場合、モバイルアプリの平均的な品質の低下につながっていると思います。「速く動き、破壊せよ」という哲学は、しばしば安定性や堅牢性よりもスピードを優先します。これにより、機能は豊富でもパフォーマンスが悪く、頻繁にクラッシュし、セキュリティの脆弱性を抱えるアプリが生まれる可能性があります。例えば、新しい機能は追加されるものの、中核となるユーザー体験がおろそかにされたり、一貫性がなかったりするアプリをよく見かけます。したがって、イノベーションのペースは刺激的ですが、短期的な競争優位性のために長期的な品質が犠牲にされるというトレードオフを生み出していると思います。

                試験官: 新しいアプリを開発する際、長期的な成功にとってより重要なのは、幅広い機能を迅速にローンチすることと、機能は少ないが高度に洗練されパフォーマンスの高い状態でローンチすることのどちらだと思いますか？
                解答例: 私は、より少ない数の、高度に洗練されパフォーマンスの高い機能でローンチする方が、長期的な成功にはるかに重要だと強く主張します。ユーザーの第一印象は最も重要であり、二度目のチャンスはめったにありません。もしアプリが遅く、バグが多く、分かりにくければ、たとえ多くの機能があったとしても、ユーザーはアンインストールして否定的なレビューを残す可能性が高く、それは新製品にとって致命的になり得ます。例えば、成功した多くのアプリは、当初はたった一つのことを非常によく行うことでローンチしました。この品質への集中が信頼と忠実なユーザーベースを築き、それがその後の発展の強固な基盤となります。ユーザーのフィードバックに基づいて後から機能を追加することはいつでもできますが、品質に対する初期の評判を確立することは、何物にも代えがたいものです。
                """,
                explanation: """
                **スピーキング パート3の目標**

                IELTSスピーキングのパート3は、パート2のトピックに関連した、より抽象的で一般的なテーマについて議論するセクションです [1]。ここでは、自分の意見を述べ、それを理由や具体例で裏付け、一貫性のある主張を展開する能力が評価されます [2]。単なる個人的な経験を語るのではなく、社会的な視点や一般的な原則について論理的に話す力が求められます。

                **効果的な解答戦略：PREP法**

                パート3のような議論では、PREP法を使って回答を構成すると、論理的で分かりやすいスピーチになります。
                *   **P (Point):** まず、自分の意見・主張（結論）を明確に述べます。
                *   **R (Reason):** 次に、なぜそう思うのか、その理由を説明します。
                *   **E (Example):** 主張を裏付けるための具体的な例を挙げます。
                *   **P (Point):** 最後に、もう一度主張を繰り返して、話をまとめます。

                **模範解答の分析：なぜこの答え方が良いのか？**

                1.  **質問1**: PREP法が見事に活用されています。(P)「積極的な問題解決は長期的健全性のために基本だ」と主張し、(R)「技術的負債の蓄積を防ぐため」と理由を述べ、(E)「設計の悪いアーキテクチャがスケール時にボトルネックになる」という具体例を挙げ、(P)「将来への投資である」とまとめています。`sustainability`、`technical debt`、`bottleneck`といった専門用語が効果的です。

                2.  **質問2**: (P)「品質の低下につながっている」と明確に意見を述べ、(R)「スピードが安定性より優先されるため」と理由を説明しています。(E)「機能は多いがコア体験が neglected（おろそかにされている）アプリ」という共感を呼びやすい例を挙げています。`trade-off`（トレードオフ）、`sacrificed for`（〜のために犠牲にされる）といった、比較・対比の議論で役立つ表現が使われています。

                3.  **質問3**: (P)「洗練された少ない機能でのローンチがより重要だ」と強く主張し、(R)「ユーザーの第一印象は paramount（最も重要）だから」と理由を述べています。(E)「成功したアプリは一つのことを exceptionally well（卓越してうまく）やることから始めた」という説得力のある例を提示しています。`detrimental`（有害な）、`iterate`（反復する）、`irreplaceable`（かけがえのない）など、高度な語彙が意見の強さを支えています。
                """,
                audioFileName: "speaking_test3_q3",
                conversationScript: nil
            )
        ],
        description: "Speaking Test 3"
    )
    
    static let allTests: [Test] = [test1, test2, test3]
} 