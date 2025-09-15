//
//  ListeningTests.swift
//  App English
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
                会話スクリプト（日本語訳）:
                
                マリア: こんにちは、モバイルデバイスラボです。マリアです。ご用件をどうぞ。
                
                カイト: こんにちは、マリアさん。モバイルチームのカイトです。新しいプロジェクトのために、テストデバイスをお借りしたいのですが。
                
                マリア: もちろんです、カイトさん。どのプロジェクト用ですか？
                
                カイト: 新しいアプリの取り組みです。コードネームは「プロジェクト・タスクフロー」です。スペルは、T-A-S-K-F-L-O-Wです。
                
                マリア: 「プロジェクト・タスクフロー」…承知しました。では、どのデバイスが必要ですか？
                
                カイト: タブレット専用のレイアウトをテストするために、新しいiPadが必要です。iPad Proの13インチはありますか？
                
                マリア: 在庫を確認しますね… ああ、13インチモデルは現在すべて貸出中のようです。ですが、iPad Proの11インチなら利用可能ですよ。そちらでも大丈夫ですか？
                
                カイト: はい、iPad Proの11インチで全く問題ありません。ありがとうございます。
                
                マリア: よかったです。OSのバージョンは何が必要ですか？通常は最新の公式リリースをインストールしていますが。
                
                カイト: 実は、このプロジェクトではリリース前のバージョンでテストする必要があるんです。iPadOS 18.5のベータ版をインストールしていただけますか？
                
                マリア: 18.5のベータ版ですね、承知しました。主な貸出理由は何になりますか？記録のために必要でして。
                
                カイト: 新しいOSに依存する、新しいマルチタスキング機能のテストです。
                
                マリア: 承知しました。デバイスを確保しておきました。来週の月曜日からいつでも受け取れますよ。
                
                カイト: 素晴らしい。では来週の月曜日に。ありがとう、マリアさん！
                
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
                単に情報を聞き取るだけでなく、会話の流れの中で選択肢が変更されたり、特定の情報が要求されたりする点に注意が必要です。
                
                1. Project TaskFlow
                    * 解説: カイトはプロジェクトのコードネームを伝えた後、聞き間違いがないように "T-A-S-K-F-L-O-W" とスペルを伝えています。IELTSでは、このように人名や地名、固有の名称などのスペルを正確に聞き取る問題が頻繁に出題されます。
                
                2. iPad Pro 11-inch
                    * 解説: ここが聞き取りのポイントです。カイトは最初に "iPad Pro 13-inch" を希望しますが、マリアに在庫がないと言われます。そして代案として提示された "iPad Pro 11-inch" に最終的に合意します。IELTSでは、このように最初に述べられた情報が後から訂正・変更されることがよくあります。最終的に確定した情報を答える必要があります。
                
                3. iPadOS 18.5 beta
                    * 解説: マリアは「通常は最新の公式リリースをインストールします」と述べますが、カイトは「リリース前のバージョンが必要です」と返し、具体的に "iPadOS 18.5 beta" をリクエストします。相手の提案を断り、自分の要望を伝えるという、より実践的なやり取りになっています。
                
                4. new multitasking feature
                    * 解説: 貸出理由を尋ねられたカイトは "We're testing a new multitasking feature" と答えます。multitasking（マルチタスキング）はiOS開発において重要な概念であり、専門的な語彙を聞き取る練習になります。
                
                5. next Monday
                    * 解説: マリアは "You can pick it up anytime from next Monday" と伝えます。「来週の月曜日から」という意味ですが、質問が「受取日(Pickup Date)」なので、開始日である next Monday が答えとなります。曜日の聞き取りは基本ですが、非常に重要です。
                """,
                audioFileName: "listening_test1_q1",
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
            ),
            Question(
                type: .matching,
                passage: """
                Instructions: What is the main purpose of each of the following tools and weekly events? Choose SIX answers from the box and write the correct letter, A-H, next to Questions 1-6.
                
                Tools & Events:
                1 Slack
                2 Confluence
                3 Jira
                4 Monday Sync-Up
                5 Tech Talk Thursday
                6 Friday Demo Day
                
                Main Purpose:
                A For managing and tracking work tasks
                B To learn about a new technical subject in detail
                C To discuss salary and promotions
                D For quick questions and urgent messages
                E To showcase completed work to stakeholders
                F For setting the week's main priorities
                G To write and edit code collaboratively
                H For official, long-term documentation
                """,
                questionText: "",
                options: nil,
                correctAnswer: "1. D\n2. H\n3. A\n4. F\n5. B\n6. E",
                japaneseTranslation: """
                会話スクリプト（日本語訳）:
                
                エミリー: 「皆さん、こんにちは。iOS開発チームへようこそ。私の名前はエミリー、ここのリードエンジニアです。皆さんと一緒に働けることを本当に楽しみにしています。この短いオリエンテーションでは、私たちのチームを組織的かつ効率的に保つために使っている主要なツールと週次のイベントについて、簡単に説明したいと思います。
                
                まず、コミュニケーションツールについて話しましょう。日々のコミュニケーションはすべて、Slackを使用します。ちょっとした質問がある時、何かについて緊急で意見が欲しい時、あるいは単に面白い記事を共有したい時など、私たちのチームのSlackチャンネルである #ios-dev-team がその場所です。素早くて、非公式な会話のためのものです。
                
                次に、永続的に残す必要があるものについては、Confluenceを使用します。これはチームの公式なライブラリ、あるいはナレッジベースと考えてください。技術仕様書やコーディング規約、会議の議事録などはここにあります。すべての公式で長期的なドキュメンテーションのための、信頼できる唯一の情報源です。Slackのメッセージを永続的な記録として扱わないでください。重要なことであれば、Confluenceに記載されるべきです。
                
                最後に、私たちのワークフローですが、Jiraに依存しています。このツールは、純粋に私たちの技術的な仕事を管理するために使用されます。皆さんが取り組むすべての機能、バグ、タスクは、Jiraに対応するチケットを持ちます。進捗を追跡し、仕事を割り当て、開発スプリントを管理するための手段です。
                
                では、次に私たちの主要な週次イベントに移りましょう。毎週、Monday Sync-Upから始まります。これは30分のミーティングで、これからの一週間を見通し、主要な目標を確立します。深い技術的な議論ではなく、むしろその週の優先事項について全員が足並みをそろえるための、ハイレベルな会議です。
                
                そして木曜日には、Tech Talk Thursdayがあります。これは私のお気に入りです。毎週、チームメンバーの一人が特定の技術トピックに関するプレゼンテーションを準備します。新しいSwiftの機能に関する詳細な解説であったり、新しいテストライブラリのチュートリアルであったり、素晴らしいWWDCセッションの要約であったりします。私たち全員が集中して何か新しいことを学ぶ絶好の機会です。
                
                最後に、週の終わりにはFriday Demo Dayがあります。これは、チームメンバーがその週に実際に作り上げたものを見せる場です。このデモには、プロダクトマネージャーやデザイナー、その他のステークホルダーを招待します。コードを見せることではなく、動作するソフトウェアを実演し、貴重なフィードバックを得ることが目的です。
                
                はい、以上が簡単な概要です。これらすべてへの招待状をお送りしますが、まずは背景情報をお伝えしたかったのです。何か質問はありますか？」
                
                指示：以下の各ツールと週次イベントの主な目的は何ですか？ ボックスから6つの答えを選び、質問1～6の横に正しい文字（A～H）を記入しなさい。
                
                ツールとイベント:
                1 Slack
                2 Confluence
                3 Jira
                4 Monday Sync-Up
                5 Tech Talk Thursday
                6 Friday Demo Day
                
                主な目的:
                A 仕事のタスクを管理し、追跡するため
                B 新しい技術的なテーマについて詳しく学ぶため
                C 給与や昇進について議論するため
                D ちょっとした質問や緊急のメッセージのため
                E 完成した仕事をステークホルダーに見せるため
                F その週の主要な優先事項を設定するため
                G 共同でコードを書いて編集するため
                H 公式で長期的なドキュメンテーションのため
                """,
                explanation: """
                この問題形式では、話者が説明する複数の項目（ツールやイベント）と、その目的や特徴を正しく一致させる必要があります。選択肢を先に読み、どのような情報を聞き取るべきか把握しておくのが効果的です。
                
                1. Slack → D (ちょっとした質問や緊急のメッセージのため)
                    * 根拠: スクリプト内で「If you have a quick question, need an urgent opinion on something... It's for fast, informal conversation.」と説明されています。選択肢Dは、この内容を要約したものです。
                
                2. Confluence → H (公式で長期的なドキュメンテーションのため)
                    * 根拠: 「for anything that needs to be permanent... our team's official library... for all official, long-term documentation.」と述べられています。選択肢Hが、この説明と完全に一致します。
                
                3. Jira → A (仕事のタスクを管理し、追跡するため)
                    * 根拠: 「This tool is used strictly for managing our engineering work. Every feature, bug, or task... It's how we track progress, assign work...」と説明されています。選択肢Aの「managing and tracking work tasks」は、この内容を的確に言い換えています。
                
                4. Monday Sync-Up → F (その週の主要な優先事項を設定するため)
                    * 根拠: 「a 30-minute meeting where we look at the week ahead and establish our main goals... make sure everyone is aligned on the priorities for the week.」とあります。選択肢Fの「setting the week's main priorities」が、この目的と一致します。
                
                5. Tech Talk Thursday → B (新しい技術的なテーマについて詳しく学ぶため)
                    * 根拠: 「one team member prepares a presentation on a specific technical topic... It's a great opportunity for all of us to learn something new...」と説明されています。選択肢Bは、このイベントの目的を正確に表しています。
                
                6. Friday Demo Day → E (完成した仕事をステークホルダーに見せるため)
                    * 根拠: 「This is where team members get to show what they've actually built... We invite product managers, designers, and other stakeholders...」と述べられています。選択肢Eの「showcase completed work to stakeholders」がこの説明に合致します。
                    
                注意: (C)と(G)は本文中に全く言及のない、典型的なダミー選択肢です。
                """,
                audioFileName: "listening_test1_q2",
                conversationScript: """
                Hi everyone, and welcome to the iOS development team. My name is Emily, and I'm the lead engineer here. I'm really excited to have you all on board. In this short orientation, I want to quickly go over the key tools and weekly events we use to keep our team organized and efficient.

                First, let's talk about communication tools. For all of your day-to-day communication, we use Slack. If you have a quick question, need an urgent opinion on something, or just want to share a cool article, our team's Slack channel, #ios-dev-team, is the place to do it. It's for fast, informal conversation.

                Next, for anything that needs to be permanent, we use Confluence. Think of it as our team's official library or knowledge base. This is where you'll find our technical specifications, coding standards, and meeting minutes. It's our single source of truth for all official, long-term documentation. Please don't treat Slack messages as permanent records; if it's important, it belongs in Confluence.

                Finally, for our workflow, we rely on Jira. This tool is used strictly for managing our engineering work. Every feature, bug, or task you work on will have a corresponding ticket in Jira. It's how we track progress, assign work, and manage our development sprints.

                Now, let's move on to our key weekly events. Every week starts with our Monday Sync-Up. This is a 30-minute meeting where we look at the week ahead and establish our main goals. It's not a deep technical discussion, but rather a high-level meeting to make sure everyone is aligned on the priorities for the week.

                Then, on Thursdays, we have our Tech Talk Thursday. This is my favorite. Each week, one team member prepares a presentation on a specific technical topic. It could be a deep dive into a new Swift feature, a tutorial on a new testing library, or a summary of a cool WWDC session. It's a great opportunity for all of us to learn something new in a focused way.

                Lastly, we end the week with our Friday Demo Day. This is where team members get to show what they've actually built during the week. We invite product managers, designers, and other stakeholders to these demos. It's not about showing code, but about demonstrating working software and getting valuable feedback.

                Okay, that's a quick overview. We'll send you invitations to all of these, but I wanted to give you the context first. Any questions?
                """
            ),
            Question(
                type: .multipleChoice,
                passage: """
                Instructions: Choose the correct letter, A, B, or C.
                
                1. What is the main purpose of this conversation?
                   A. To decide on the price for a new feature.
                   B. To review user feedback from a recent test.
                   C. To plan the marketing strategy for an app.
                
                2. What did users generally think about the process of buying an item?
                   A. It was confusing.
                   B. It was intuitive.
                   C. It was too slow.
                
                3. What was the most common issue users reported?
                   A. The app crashed after payment.
                   B. The payment was not processed.
                   C. The "Restore Purchase" button was hard to find.
                
                4. What does David believe is the likely cause of the delay after a purchase?
                   A. The user's internet connection is slow.
                   B. The app is waiting inefficiently for server confirmation.
                   C. The UI animations are too complex.
                
                5. What do they agree to do about the "Restore Purchase" button?
                   A. Make the button larger.
                   B. Move it to the main settings screen.
                   C. Remove the button completely.
                """,
                questionText: "",
                options: nil,
                correctAnswer: "1. B\n2. B\n3. C\n4. B\n5. B",
                japaneseTranslation: """
                会話スクリプト（日本語訳）:
                
                デイビッド: やあ、ユキ、入って。新しいアプリ内課金機能のユーザー受け入れテストの結果について、話したいんだったね？
                
                ユキ: はい、デイビッド。50人のテストユーザーからのフィードバックをまとめました。全体的には、ほとんどが肯定的です。良いニュースとしては、大多数のユーザーが、実際の購入フローは非常に明確で直感的だと感じてくれたことです。彼らはシンプルな1ページのチェックアウトを気に入っていました。
                
                デイビッド: それは素晴らしい。スムーズな購入フローは不可欠だからね。何かネガティブな点はあったかい？
                
                ユキ: ありました。最も多かった唯一の不満は、以前の購入を復元することについてでした。40%以上のユーザーが、「購入の復元」ボタンを簡単に見つけられなかったと回答しています。現在は「アカウント詳細」のサブメニュー内にあり、それが隠されていると感じたようです。
                
                デイビッド: なるほど。それはかなりの割合だね。サブメニューに置いたのは、おそらく間違いだった。もっと目立つ場所にある必要がある。おそらく、メインの設定画面のトップレベルに移動させるべきだろうね。
                
                ユキ: 同感です。メインの設定画面に置くのは理にかなっています。もう一つ、技術的な問題がありました。数人のユーザーが、支払いが確認された後、長い遅延（時には10秒も）があったと報告しています。コンテンツがアンロックされる前に、アプリがただスピナー（読み込み中のアイコン）を表示していたとのことです。
                
                デイビッド: うーん、10秒は長すぎるな。それは典型的な実装の問題のように聞こえる。私の推測では、アプリが私たちのサーバーから返ってくるApp Storeのレシート検証を、同期的に待ってしまっているんだろう。それは非同期で処理されるべきで、そうすればUIがブロックされない。一時的な「処理中」のメッセージを表示して、バックグラウンドで検証が確認されたら機能をアンロックすることができる。
                
                ユキ: ああ、なるほど、完璧に理解できました。では、次のステップとして、「購入の復元」ボタンをメインの設定画面に移動させるためのチケットと、エンジニアリングチームが非同期の検証プロセスを調査するためのチケットを作成します。
                
                デイビッド: その通りだ。このフィードバックをまとめてくれて、素晴らしい仕事だったよ、ユキ。非常に価値がある。
                
                質問
                指示：正しい文字、A、B、またはCを選びなさい。
                
                1. この会話の主な目的は何ですか？
                   A. 新機能の価格を決定するため。
                   B. 最近のテストからのユーザーフィードバックを検討するため。
                   C. アプリのマーケティング戦略を計画するため。
                
                2. ユーザーはアイテムの購入プロセスについて、全体的にどう思いましたか？
                   A. 混乱を招くものだった。
                   B. 直感的だった。
                   C. 遅すぎた。
                
                3. ユーザーが報告した最も一般的な問題は何でしたか？
                   A. 支払い後にアプリがクラッシュした。
                   B. 支払いが処理されなかった。
                   C. 「購入の復元」ボタンが見つけにくかった。
                
                4. デイビッドは、購入後の遅延の主な原因は何だと考えていますか？
                   A. ユーザーのインターネット接続が遅いこと。
                   B. アプリがサーバーの確認を非効率に待っていること。
                   C. UIのアニメーションが複雑すぎること。
                
                5. 彼らは「購入の復元」ボタンについて、どうすることに合意しましたか？
                   A. ボタンを大きくすること。
                   B. それをメインの設定画面に移動させること。
                   C. ボタンを完全に削除すること。
                """,
                explanation: """
                このセクション3の会話では、2人の話者の意見や提案、そして合意点を正確に聞き分けることが重要です。
                
                1. 正解: B (最近のテストからのユーザーフィードバックを検討するため)
                    * 理由: 会話はデイビッドの「discuss the results from the User Acceptance Test (UATの結果について話す)」という言葉で始まり、終始ユーザーからのフィードバックとその対策について議論しています。
                
                2. 正解: B (直感的だった)
                    * 理由: ユキが「the vast majority of users found the actual purchase flow to be very clear and intuitive (大多数のユーザーが、実際の購入フローは非常に明確で直感的だと感じてくれた)」と明確に述べています。
                
                3. 正解: C (「購入の復元」ボタンが見つけにくかった)
                    * 理由: ユキがネガティブな点として挙げた「The single most common complaint (最も多かった唯一の不満)」は、「they couldn't easily locate the 'Restore Purchase' button (「購入の復元」ボタンを簡単に見つけられなかった)」ことです。
                
                4. 正解: B (アプリがサーバーの確認を非効率に待っていること)
                    * 理由: デイビッドは遅延の原因について、「My guess is that the app is synchronously waiting for the App Store receipt validation (私の推測では、アプリがレシート検証を同期的に待ってしまっているんだろう)」と述べています。選択肢Bは、この専門的な内容をより一般的な言葉で言い換えたものです。
                
                5. 正解: B (それをメインの設定画面に移動させること)
                    * 理由: デイビッドが「We should probably move it to the top level of the main settings screen (メインの設定画面のトップレベルに移動させるべきだろう)」と提案し、ユキが「I agree. Putting it on the main settings screen makes sense (同感です。メインの設定画面に置くのは理にかなっています)」と同意しています。これが二人の合意点です。
                """,
                audioFileName: "listening_test1_q3",
                conversationScript: """
                Hi Yuki, come in. You wanted to discuss the results from the User Acceptance Test for the new in-app purchase feature, right?
                
                Yes, David. I've compiled the feedback from our 50 test users. Overall, it's mostly positive. The good news is that the vast majority of users found the actual purchase flow to be very clear and intuitive. They liked the simple, one-page checkout.
                
                That's great to hear. A smooth purchase flow is critical. Were there any negative points?
                
                There were. The single most common complaint was about restoring previous purchases. Over 40 percent of users said they couldn't easily locate the 'Restore Purchase' button. It's currently in a sub-menu under 'Account Details', which they felt was hidden.
                
                I see. That's a significant percentage. Placing it in a sub-menu was probably a mistake. It needs to be much more prominent. We should probably move it to the top level of the main settings screen.
                
                I agree. Putting it on the main settings screen makes sense. There was one other technical issue. A few users reported a long delay—sometimes up to ten seconds—after their payment was confirmed. The app just showed a spinner before unlocking the content.
                
                Hmm, ten seconds is far too long. That sounds like a classic implementation issue. My guess is that the app is synchronously waiting for the App Store receipt validation to come back from our server. It should be handled asynchronously, so the UI isn't blocked. We can show a temporary "processing" message and unlock the feature once the validation is confirmed in the background.
                
                Ah, that makes perfect sense. So, for the next steps, I'll create a ticket to move the 'Restore Purchase' button to the main settings screen, and another one for the engineering team to investigate the asynchronous validation process.
                
                Exactly. Great work compiling this feedback, Yuki. It's incredibly valuable.
                """
            ),
            Question(
                type: .noteCompletion,
                passage: """
                Instructions: Complete the notes below. Write ONE WORD ONLY for each answer.
                
                Lecture Notes: The Composable Architecture (TCA)
                
                Introduction
                • A framework for building apps in a consistent and understandable way.
                • Provides clear rules for managing application state.
                
                Core Components
                • State: The data that describes the app's current (1) ______________. It is the single source of truth.
                • Action: Represents all possible (2) ______________ that can occur (e.g., user taps, network responses).
                • Reducer: A function that processes actions to evolve the state. It is described as the (3) ______________ of the system.
                
                Key Benefits
                • Benefit 1: Testability
                    • The framework's structure makes it easy to write tests.
                    • Each piece of logic can be tested in (4) ______________, separate from others.
                • Benefit 2: Ergonomics & Scalability
                    • Especially helpful for (5) ______________ teams, as everyone follows the same pattern.
                    • Provides a consistent (6) ______________ for building any feature.
                
                Conclusion
                • A powerful, though opinionated, framework.
                • Requires an initial investment in (7) ______________ to master its concepts.
                """,
                questionText: "",
                options: nil,
                correctAnswer: "1. condition\n2. events\n3. engine\n4. isolation\n5. large\n6. blueprint\n7. learning",
                japaneseTranslation: """
                会話スクリプト（日本語訳）:
                
                講師: 「皆さん、おはようございます。今日の講義では、Swiftコミュニティで人気のある強力なフレームワーク、The Composable Architecture、しばしばTCAと略されるものについて、入門的な視点から見ていきたいと思います。その核心において、TCAは一貫性があり理解しやすい方法でアプリケーションを構築するためのライブラリであり、アプリケーションの状態をどのように管理し、その状態が時間とともにどのように変化するかについての明確な一連のルールを提供します。
                
                TCAを理解するためには、その3つの基本的な構成要素を把握する必要があります。一つ目は「State」です。Stateとは、本質的に、あなたの機能の現在の状態(condition)を記述するために必要なすべての情報を保持するデータ型です。ユーザーはログインしていますか？検索フィールドにはどんなテキストが入っていますか？これらはすべてStateの一部であり、信頼できる唯一の情報源として機能します。
                
                二つ目の構成要素は「Action」です。Actionは別のデータ型で、あなたの機能内で起こりうるすべてのイベント(events)を表現します。これには、ボタンをタップするといったユーザーのアクションや、ネットワークの応答を受け取るといった外部から起こる事柄も含まれます。
                
                三つ目の、そして最も重要な構成要素は「Reducer」です。Reducerは、現在のStateとActionを受け取り、それらから次のStateを計算する関数です。Reducerは、あなたの機能のエンジン(engine)と考えることができます。すべてのロジックが存在し、Actionを処理してそれに応じてStateを進化させる場所なのです。
                
                では、なぜこのアーキテクチャを使うのでしょうか？主な利点は二つあります。一つ目は「テスト容易性」です。すべてのロジックがReducer関数内に含まれているため、ユニットテストを書くことが信じられないほど簡単になります。各ロジックを、アプリケーション全体を実行することなく、完全に分離(isolation)した状態でテストすることができます。単にReducerにStateとActionを提供し、結果のStateが期待通りであることをアサート（断言）するだけです。
                
                二つ目の大きな利点は、私たちが「エルゴノミクス（開発のしやすさ）」と呼ぶもので、特に大規模な(large)チームで作業する際に顕著です。チームの誰もがすべての機能に対して同じアーキテクチャを使用すると、共通の言語と理解が生まれます。TCAは、大小を問わずどんな新機能を構築する際にも従うことができる、一貫した設計図(blueprint)を提供します。これにより、共同作業やコードベースの異なる部分間の移動がはるかに容易になります。
                
                結論として、The Composable Architectureは強力なツールです。しかし、それは「opinionated」、つまりソフトウェアをどのように構築すべきかについて強い思想を持っています。これは、乗り越えるべき初期の学習(learning)カーブがあることを意味します。しかし、その学習への投資を厭わないチームにとっては、一貫性、拡張性、そしてテスト容易性において信じられないほどの利益を提供します。ありがとうございました。」
                
                質問
                指示：以下のノートを完成させなさい。各解答は1単語のみで記入すること。
                
                レクチャーノート：The Composable Architecture (TCA)
                
                はじめに
                • 一貫性があり、理解しやすい方法でアプリを構築するためのフレームワーク。
                • アプリケーションの状態を管理するための明確なルールを提供する。
                
                中心的な構成要素
                • State: アプリの現在の (1) ______________ を記述するデータ。信頼できる唯一の情報源である。
                • Action: 起こりうるすべての (2) ______________ を表現する（例：ユーザーのタップ、ネットワークの応答）。
                • Reducer: アクションを処理して状態を進化させる関数。システムの (3) ______________ と説明される。
                
                主な利点
                • 利点1: テスト容易性
                    • フレームワークの構造がテスト作成を容易にする。
                    • 各ロジックは、他から分離して (4) ______________ の状態でテストできる。
                • 利点2: 開発しやすさと拡張性
                    • 誰もが同じパターンに従うため、特に (5) ______ なチームに役立つ。
                    • あらゆる機能を構築するための、一貫した (6) ______ を提供する。
                
                結論
                • 強力ではあるが、独自の思想が強い（opinionatedな）フレームワーク。
                • その概念を習得するには、初期の (7) ______________ への投資が必要。
                """,
                explanation: """
                IELTSリスニングの最終セクションであるこの問題は、専門的な講義を聞き、その構造を理解しながらキーワードを正確に書き取る能力を試します。「ONE WORD ONLY」という制約があるため、聞き取った内容を要約したり、別の単語に言い換えたりせず、話された単語そのものを捉える必要があります。
                
                1. condition: 講義で "The State is essentially a data type that holds all the information necessary to describe the current condition of your feature." と述べられています。
                
                2. events: "Actions are another data type, representing all possible events that can occur within your feature." と明確に説明されています。
                
                3. engine: "You can think of the reducer as the engine of your feature..." と、比喩表現として紹介されています。
                
                4. isolation: テストの利点について "You can test each piece of logic in complete isolation..." と述べられています。
                
                5. large: チームでの利点について "especially when working on large teams." と具体的に言及されています。
                
                6. blueprint: "TCA provides a consistent blueprint that you can follow..." と、共通の指針となることを比喩で説明しています。
                
                7. learning: 結論部分で "there's an initial learning curve to overcome." と述べられています。「学習への投資(investment in learning)」という表現からも推測可能です。
                """,
                audioFileName: "listening_test1_q4",
                conversationScript: """
                Good morning, everyone. In today's lecture, we're going to take an introductory look at a popular and powerful framework in the Swift community: The Composable Architecture, often abbreviated as TCA. At its core, TCA is a library for building applications in a consistent and understandable way, providing a clear set of rules for how to manage application state, and how that state changes over time.
                
                To understand TCA, you need to grasp its three fundamental components. The first is the State. The State is essentially a data type that holds all the information necessary to describe the current condition of your feature. Is the user logged in? What text is in the search field? This is all part of the State, which acts as the single source of truth.
                
                The second component is the Action. Actions are another data type, representing all possible events that can occur within your feature. This includes user actions like tapping a button, as well as things that happen from the outside world, like receiving a network response.
                
                The third and most crucial component is the Reducer. The reducer is a function that takes the current state and an action, and from them, computes the next state. You can think of the reducer as the engine of your feature; it's the place where all the logic lives, processing actions and evolving the state accordingly.
                
                So, why would you use this architecture? There are two main benefits. The first is testability. Because all the logic is contained within the reducer function, it becomes incredibly easy to write unit tests. You can test each piece of logic in complete isolation, without needing to run the full application. You simply provide the reducer with a state and an action, and then you assert that the resulting state is what you expect.
                
                The second major benefit is what we call ergonomics, especially when working on large teams. When everyone on the team uses the same architecture for every feature, it creates a shared language and understanding. TCA provides a consistent blueprint that you can follow to build any new feature, big or small. This makes it much easier to collaborate and move between different parts of the codebase.
                
                In conclusion, The Composable Architecture is a powerful tool. It is, however, 'opinionated' – it has strong ideas about how you should build your software. This means there's an initial learning curve to overcome. But for teams willing to make that investment in learning, it offers incredible benefits in consistency, scalability, and testability. Thank you.
                """
            )
        ],
        description: "Listening Test 1"
    )
    
    static let test2 = Test(
        title: "Test 2",
        skillType: .listening,
        questions: [
            Question(
                type: .formCompletion,
                passage: """
                Instructions: Complete the form below. Write NO MORE THAN TWO WORDS AND/OR A NUMBER for each answer.
                
                Questions
                INTERACTIVE WIDGET - FEATURE SPEC
                • App Name: KanbanFlow
                • Lead Developer: Haruto Tanaka
                • Widget Name: (1) ______________
                • Supported Size (Initial Version): (2) ______________
                • Primary Interaction: (3) ______________
                • Minimum OS Version: (4) ______________
                • Key Framework Dependency: (5) ______________
                """,
                questionText: "",
                options: nil,
                correctAnswer: "1. QuickTask Widget\n2. medium size\n3. completing a task\n4. iOS 17\n5. App Intents",
                japaneseTranslation: """
                会話スクリプト（日本語訳）:
                
                ハルト: ユキ、時間ありがとう。WWDC23で発表されたインタラクティブウィジェットの件、仕様を固めたいんだ。
                ユキ: もちろんです、ハルトさん。いいですね！早速計画しましょう。
                ハルト: 僕たちのプロジェクト管理アプリ「KanbanFlow」のウィジェットだね。まず、内部でのウィジェット名は？
                ユキ: シンプルに「QuickTask Widget」はどうでしょう？機能が分かりやすいですし。
                ハルト: QuickTask Widget、いいね。それにしよう。念のため、スペルをお願い。
                ユキ: はい、QuickTaskは一つの単語で、Q-U-I-C-K-T-A-S-Kです。
                ハルト: OK、ありがとう。次にサイズだけど、Small, Medium, Largeのどれをサポートする？
                ユキ: ユーザーの柔軟性を考えると、最初は3つ全てをサポートするのが理想的かなと。
                ハルト: いい点だね。ただ、最初のバージョンは迅速にリリースしたいから、一つに絞るのが現実的じゃないかな。ユーザーが一番情報を得られるミディアムサイズから始めるのはどう？
                ユキ: なるほど、MVP（Minimum Viable Product）としてですね。賛成です。では、ミディアムサイズでいきましょう。
                ハルト: よし、決まりだ。では、このウィジェットの主なインタラクションは何になる？
                ユキ: ユーザーがアプリを開かずにタスクを完了できること、これが一番の目的です。なので、タスクの完了ですね。
                ハルト: 確かに、それが一番価値があるね。この機能を実現するための最低OSバージョンは？
                ユキ: インタラクティブウィジェットはWWDC23の目玉機能だったので、iOS 17が必要です。
                ハルト: だね。iOS 17と。最後に、このウィジェットが依存する主要なフレームワークは何になる？
                ユキ: このインタラクションをバックグラウンドで安全に処理するには、App Intentsフレームワークが必須になります。
                ハルト: その通り。App Intentsだね。よし、これで基本仕様は固まった。ありがとう！
                
                指示：以下のフォームを完成させなさい。各解答は2単語および/または1つの数字以内で記入すること。
                
                Questions
                インタラクティブウィジェット - 機能仕様書
                • アプリ名: KanbanFlow
                • リード開発者: Haruto Tanaka
                • ウィジェット名: (1) ______________
                • 対応サイズ（初期バージョン）: (2) ______________
                • 主なインタラクション: (3) ______________
                • 最低OSバージョン: (4) ______________
                • 主要な依存フレームワーク: (5) ______________
                """,
                explanation: """
                ### 1. QuickTask Widget
                - **聞き取りポイント**: Yukiが "How about 'QuickTask Widget'?" と提案し、Harutoがスペル (`Q-U-I-C-K-T-A-S-K`) を確認しています。提案と、その後のスペル確認が聞き取るべき重要なサインです。
                - **学習ポイント**: 💡 `What do you say to ~?` や `How about ~?` は、提案を行う際の一般的な口語表現です。`Lock that in` は「それで確定しよう」という意味のくだけた表現で、チーム内の会話でよく使われます。

                ### 2. medium size
                - **聞き取りポイント**: Yukiは最初に "supporting all three" と提案しますが、Harutoが "to ship it faster, let's focus on just one" と反論し、"the medium size" を代替案として提示します。Yukiが "I agree. Let's go with the medium size." と同意することで、これが最終決定となります。議論の末に決定が変更される典型的なパターンです。
                - **学習ポイント**: 📚 `MVP (Minimum Viable Product)` は「実用最小限の製品」を意味し、アジャイル開発において頻出するビジネス・技術用語です。`ship it faster` は「より速く出荷（リリース）する」という意味のスラング的な開発者用語です。

                ### 3. completing a task
                - **聞き取りポイント**: Harutoが "what's the core interaction?" と尋ね、Yukiが "The main goal is letting users complete a task... so, completing a task." と答えています。質問の意図を正確に理解し、説明の中から核となる部分を抜き出す能力が求められます。
                - **学習ポイント**: 🔧 `core interaction` は「中核となるインタラクション（操作）」を指します。`without opening the app` (アプリを開かずに) という部分が、ウィジェットの価値を説明する際の鍵となります。

                ### 4. iOS 17
                - **聞き取りポイント**: Harutoが "what's the minimum OS version" と尋ね、Yukiが "interactive widgets were a key feature from WWDC23, so it requires iOS 17." と明確に答えています。`WWDC23` という固有名詞が、答えを導くための大きなヒントになっています。
                - **学習ポイント**: 🤝 `key feature` は「主要な機能、目玉機能」という意味です。`It requires ~` は「〜を必要とする、〜が必須である」という技術的な要件を説明する際の定型表現です。

                ### 5. App Intents
                - **聞き取りポイント**: Harutoが "what's the key framework dependency?" と技術的な質問をし、Yukiが "we'll need to use the App Intents framework" と答えています。これは非常に専門的な内容ですが、`dependency` (依存関係) と `framework` という単語から、技術要素に関する回答が来ると予測できます。
                - **学習ポイント**: 💼 `dependency` (依存関係) は、あるソフトウェアコンポーネントが機能するために、別のコンポーネントを必要とすることを指す、ソフトウェア開発における基本用語です。`App Intents` は、ウィジェットやSiriからアプリの機能を実行させるためのAppleのフレームワークです。
                """,
                audioFileName: "listening_test2_q1",
                conversationScript: """
                [MEETING CHAT BEEP]
                Haruto: Hey Yuki, thanks for hopping on. I want to lock in the specs for the new interactive widget we discussed after WWDC23.
                Yuki: Of course, Haruto. Sounds great! Let's plan it out.
                Haruto: So, for our project management app, 'KanbanFlow'. First, what should we call the widget internally?
                Yuki: How about 'QuickTask Widget'? It's simple and describes the function well.
                Haruto: QuickTask Widget... I like it. Let's lock that in. Can you spell QuickTask for the doc?
                Yuki: Sure, it's one word: Q-U-I-C-K-T-A-S-K.
                Haruto: Got it, thanks. Next, what about the supported sizes? Small, Medium, and Large?
                Yuki: Ideally, I think supporting all three would be best for user flexibility.
                Haruto: That's a good point. However, to ship it faster for the initial version, I think it's more realistic to focus on just one. What do you say we start with the medium size, since it offers the most utility?
                Yuki: Ah, for the MVP. That makes sense. I agree. Let's go with the medium size.
                Haruto: Perfect. Okay, so what's the core interaction for this widget?
                Yuki: The main goal is letting users complete a task without opening the app. So, completing a task.
                Haruto: Exactly, that's the most valuable part. What's the minimum OS version for this functionality?
                Yuki: Well, interactive widgets were a key feature from WWDC23, so it requires iOS 17.
                Haruto: Right. iOS 17 it is. And lastly, what's the key framework dependency for this widget?
                Yuki: To handle the interactions securely in the background, we'll need to use the App Intents framework.
                Haruto: Exactly. App Intents. Alright, I think we have the basic specs defined. Thanks, Yuki!
                """
            ),
            Question(
                type: .matching,
                passage: """
                Instructions: What task is each person assigned for the next sprint? Choose THREE answers from the box and write the correct letter, A-G, next to questions 1-3.
                
                Tasks for Next Sprint
                A. To conduct further investigation on a crash.
                B. To personally fix a security vulnerability.
                C. To resolve a minor UI inconsistency.
                D. To lead the effort on performance improvements.
                E. To write a report on user analytics.
                F. To refactor the entire login screen.
                G. To update a deprecated third-party library.
                
                Questions
                1. Liam: ______________
                2. Chloe: ______________
                3. Ben: ______________
                """,
                questionText: "",
                options: nil,
                correctAnswer: "1. B\n2. D\n3. A",
                japaneseTranslation: """
                ## 会話スクリプト（日本語訳）

                リアム: はい、皆さん。今日のバグトリアージ会議を始めましょう。次のスプリントで対応すべきチケットが3つあります。ログイン時のクラッシュ、セキュリティ脆弱性、そしてメインフィードのパフォーマンス問題です。
                クロエ: 私はパフォーマンス問題を優先すべきだと思います。多くのアクティブユーザーからスクロールがカクカクすると報告があり、コア体験を損なっています。
                ベン: パフォーマンスも重要ですが、新規ユーザーの体験が心配です。分析によるとオンボーディングの完了率が低下していて、ログインでクラッシュしたら致命的です。
                リアム: どちらも妥当な懸念だね。しかし、セキュリティ脆弱性はユーザーデータを危険に晒す可能性があります。私としては、これが最優先事項だと考えます。
                クロエ: もちろんセキュリティは大事ですが、パフォーマンスは毎日ユーザーに影響を与えています。
                リアム: わかった。皆の意見はもっともだ。では、具体的なアクションプランを決めよう。まず、最優先事項として、**セキュリティ脆弱性は私が直接対応します。**
                ベン: 了解です。
                リアム: クロエ、君の指摘通りパフォーマンスは重要だ。**パフォーマンス改善の取り組みを君に率いてほしい。**
                クロエ: わかりました。リードします。
                リアム: そしてベン、新規ユーザーの問題は無視できない。まずは**クラッシュに関する追加調査を実施して**、影響範囲を特定してくれるかな？
                ベン: 承知しました。調査から始めます。

                ## 指示と選択肢（日本語訳）

                指示：次のスプリントで、各人にどのタスクが割り当てられましたか？下のボックスから3つの答えを選び、質問1-3の横に正しい文字(A-G)を記入しなさい。
                
                次のスプリントのタスク
                A. クラッシュに関する追加調査を実施する。
                B. セキュリティ脆弱性を自ら修正する。
                C. 軽微なUIの不整合を解決する。
                D. パフォーマンス改善の取り組みを率いる。
                E. ユーザー分析に関するレポートを作成する。
                F. ログイン画面全体をリファクタリングする。
                G. 非推奨のサードパーティライブラリを更新する。
                """,
                explanation: """
                ### 1. Liam: B. To personally fix a security vulnerability.
                - **解説**: 会話の結論部分で、Liamは「セキュリティ脆弱性は私が直接対応します (the security vulnerability; I'll take that on personally.)」と明確に宣言しています。選択肢(B)の `personally fix` (自ら修正する) が、この発言の意図と完全に一致します。
                - **学習ポイント**: 💡 `take something on` は「（責任を持って）〜を引き受ける」という意味の句動詞です。`personally` を加えることで、「自ら、直々に」というニュアンスが強調されます。

                ### 2. Chloe: D. To lead the effort on performance improvements.
                - **解説**: LiamはChloeに対して、「パフォーマンス改善の取り組みを君に率いてほしい (I need you to lead the effort on the performance improvements.)」と依頼しています。選択肢(D)の `lead the effort` (取り組みを率いる) がこの依頼内容を正確に言い換えています。
                - **学習ポイント**: 📚 `lead the effort on ~` は「〜に関する取り組みを主導する」という意味のビジネスでよく使われる表現です。単に「修正する(fix)」のではなく、より大きな責任範囲を示唆します。

                ### 3. Ben: A. To conduct further investigation on a crash.
                - **解説**: LiamはBenに対して、「クラッシュに関する追加調査を実施して、影響範囲を特定してくれるかな？ (Can you start by conducting some further investigation on the crash to define its scope?)」と具体的なタスクを依頼しています。選択肢(A)の `conduct further investigation` (追加調査を実施する) がこの部分と一致します。
                - **学習ポイント**: 🔧 `conduct investigation` は「調査を実施する」というフォーマルな表現です。`further` (追加の) を聞き取ることで、単なる調査ではなく、すでにある問題に対する深掘りであることがわかります。
                """,
                audioFileName: "listening_test2_q2",
                conversationScript: """
                Liam: Alright team, let's start today's bug triage meeting. We have three main tickets for the next sprint: a crash on login, a security vulnerability, and a performance issue with our main feed.
                Chloe: I think we should prioritize the performance issue. We're getting a lot of reports from active users about stuttering, and it's harming the core experience.
                Ben: Performance is important, but I'm worried about the new user experience. Analytics show our onboarding completion rate has dropped, and a crash on login could be fatal for retention.
                Liam: Both are valid concerns. However, the security vulnerability could potentially expose user data. In my opinion, this takes precedence.
                Chloe: Of course security is vital, but the performance issue is affecting users daily.
                Liam: Okay, I hear everyone's points. Let's decide on a concrete action plan. First, as the top priority, **the security vulnerability; I'll take that on personally.**
                Ben: Got it.
                Liam: Chloe, you're right about the performance. **I need you to lead the effort on the performance improvements.**
                Chloe: Understood. I'll lead it.
                Liam: And Ben, the new user issue is critical. **Can you start by conducting some further investigation on the crash** to define its scope?
                Ben: Sure. I'll start with the investigation.
                """
            ),
            Question(
                type: .multipleChoice,
                passage: """
                Instructions: Choose the correct letter, A, B, or C.
                
                1. What is the main purpose of this conversation?
                    A. To decide whether to adopt async/await for a new project.
                    B. To analyze and resolve a performance issue on a specific screen.
                    C. To plan the user interface for a new profile feature.
                
                2. According to Sarah, by how much have the screen's loading times increased on some devices?
                    A. By about 15%
                    B. By almost 30%
                    C. By over 50%
                
                3. What is the main problem users are experiencing with the Profile screen?
                    A. It feels unresponsive while loading data.
                    B. It often crashes, especially on older devices.
                    C. It sometimes displays incorrect user information.
                
                4. What does Sarah identify as the technical cause of the problem?
                    A. A single slow network request is delaying the entire view from appearing.
                    B. The `async let` syntax itself has a critical performance bug.
                    C. A database query is blocking the main thread.
                
                5. What is the agreed-upon solution to fix the issue?
                    A. To remove the friends list feature from the profile screen.
                    B. To revert the entire feature back to using completion handlers.
                    C. To load non-essential data after the main UI is already visible.
                """,
                questionText: "",
                options: nil,
                correctAnswer: "1. B\n2. C\n3. A\n4. A\n5. C",
                japaneseTranslation: """
                ## 会話スクリプト（日本語訳）

                サラ: レオ、ちょっといいかな。プロフィール画面のパフォーマンスについて、ユーザーからいくつか報告が上がってきているの。
                レオ: ああ、はい。聞きました。async/awaitを使ってリファクタリングした画面ですよね。
                サラ: そう。特に古いデバイスで、画面がもっさり感じるというフィードバックがあって。データを調べてみたら、一部のデバイスでは読み込み時間が50%以上も増加していたわ。
                レオ: 50%以上ですか！それは深刻ですね。`async let`を使って、ユーザー情報、投稿履歴、友達リストを並行して取得するようにしたんですが…。
                サラ: コードは見たわ。並行処理の考え方は正しいんだけど、一つ問題があるかもしれない。`async let`は全てのタスクが終わるのを待つでしょう？ログを見ると、`fetchFriendsList`のAPIコールが他よりずっと遅いことがあるみたい。これがボトルネックになって、他の速いリクエストの結果も待たせてしまっているの。だから、UI全体が表示されるのが遅くなる。
                レオ: なるほど…一番遅いリクエストが全体の表示をブロックしてしまっているんですね。
                サラ: その通り。そこで提案なんだけど、友達リストは画面の主要なコンテンツではないでしょう？まずはユーザー情報と投稿履歴だけを待って、メインのプロフィールコンテンツを描画するのはどうかしら。友達リストは、その後に別の`Task`で非同期に読み込んで、スピナーか何かを表示しておく。
                レオ: それは良い考えですね。ユーザーはすぐに主要な情報を見ることができますし、体感速度はかなり改善されそうです。
                サラ: ええ。じゃあ、その方向で修正をお願いできる？今日の終わりまでに対応して、次のテストビルドに含めたいの。
                レオ: 了解です。すぐに取り掛かります。

                ## 質問

                指示：正しい文字、A、B、またはCを選びなさい。
                
                1. この会話の主な目的は何ですか？
                    A. 新規プロジェクトにasync/awaitを採用するかどうかを決めるため。
                    B. 特定の画面のパフォーマンス問題を分析し、解決するため。
                    C. 新しいプロフィール機能のユーザーインターフェースを計画するため。
                
                2. サラによると、一部のデバイスで画面の読み込み時間はどれくらい増加しましたか？
                    A. 約15%
                    B. ほぼ30%
                    C. 50%以上
                
                3. ユーザーがプロフィール画面で経験している主な問題は何ですか？
                    A. データの読み込み中に反応が遅く感じること。
                    B. 特に古いデバイスで頻繁にクラッシュすること。
                    C. 時々、不正確なユーザー情報が表示されること。
                
                4. サラが指摘した問題の技術的な原因は何ですか？
                    A. 一つの遅いネットワークリクエストが、ビュー全体の表示を遅延させていること。
                    B. `async let`構文自体に、重大なパフォーマンス上のバグがあること。
                    C. データベースクエリがメインスレッドをブロックしていること。
                
                5. この問題を解決するために合意された解決策は何ですか？
                    A. プロフィール画面から友達リスト機能を完全に削除すること。
                    B. 機能全体を完了ハンドラ（completion handlers）を使う方式に戻すこと。
                    C. 主要でないデータは、メインのUIが表示された後に読み込むこと。
                """,
                explanation: """
                ### 1. 正解: B
                - **解説**: 会話全体を通じて、サラとレオはプロフィール画面の「パフォーマンス(performance)」に関する「問題(issue)」を「分析(analyze)」し、最終的に「解決策(solution)」に合意しています。選択肢Bがこの会話の目的を最も正確に表しています。
                - **間違いの選択肢**: (A) `async/await`は既に採用済みです。(C) UIの計画ではなく、既存UIのパフォーマンス改善が議題です。
                
                ### 2. 正解: C
                - **解説**: サラが "loading times have increased by over 50% on some devices" と明確に数値を述べています。`over 50%` は「50%以上」という意味で、選択肢Cと一致します。
                - **学習ポイント**: 💡 `increase by X%` は「X%増加する」という、数値を扱う際の頻出表現です。`over`, `about`, `almost` のような副詞を聞き分けることが重要です。

                ### 3. 正解: A
                - **解説**: サラはユーザーからのフィードバックとして "the screen is feeling sluggish" と述べています。`sluggish` は「動きが鈍い、もっさりした」という意味で、選択肢Aの "unresponsive while loading" (読み込み中に反応が鈍い) と同義です。
                - **間違いの選択肢**: (B) クラッシュ(crash)については言及されていません。(C) データが不正確(incorrect)であるという話も出ていません。
                
                ### 4. 正解: A
                - **解説**: サラは問題の原因を "the `fetchFriendsList` API call... that's the bottleneck" と説明し、その結果 "the entire UI is delayed" と述べています。これは、一つの遅いリクエストが全体の表示をブロックしていることを意味しており、選択肢Aの内容と一致します。
                - **学習ポイント**: 📚 `bottleneck` (ボトルネック) は、システム全体のパフォーマンスを低下させる原因となっている一部分を指す、IT分野の非常に重要な専門用語です。

                ### 5. 正解: C
                - **解説**: サラが提案し、レオが合意した解決策は "Let's render the main profile content first... and then load the friends list separately" です。これは、選択肢Cの "To load non-essential data after the main UI is already visible" (主要でないデータを、メインUIが表示された後に読み込む) を正確に言い換えたものです。
                - **学習ポイント**: 🔧 `render` は、データに基づいて画面にUIを描画することを指す開発者用語です。`non-essential data` (主要でないデータ) のような抽象的な表現が、会話中の具体的な `friends list` を指していることを見抜く力も試されます。
                """,
                audioFileName: "listening_test2_q3",
                conversationScript: """
                Sarah: Leo, have you got a moment? I've been looking at some user reports about the performance of the new Profile screen.

                Leo: Oh, right. I heard about that. That's the one we refactored with async/await.

                Sarah: Exactly. We're getting feedback that the screen is feeling sluggish, especially on older devices. I dug into the data, and it seems loading times have increased by over 50% on some devices.

                Leo: Over 50%? Wow, that's serious. I used `async let` to fetch the user details, post history, and friends list in parallel...

                Sarah: I saw the code. The parallel approach is the right idea, but I think there might be an issue. `async let` waits for all the tasks to complete, right? Looking at the logs, the `fetchFriendsList` API call is sometimes much slower than the others. That's the bottleneck. It's holding up the results from the other, faster requests. So the entire UI is delayed until that one slow request finishes.

                Leo: I see... so the slowest request is blocking the entire view from rendering.

                Sarah: Precisely. So, here's my proposal: the friends list isn't the most critical content on that screen, is it? What if we just wait for the user details and post history, and render the main profile content first? Then, we can load the friends list separately in another `Task`, and just show a spinner or something in its place initially.

                Leo: That makes a lot of sense. The user gets to see the most important information almost instantly. The perceived performance would improve dramatically.

                Sarah: Exactly. So, can you go ahead and implement that change? I'd like to get it into the next test build by the end of the day.

                Leo: Understood. I'll get right on it.
                """
            ),
            Question(
                type: .noteCompletion,
                passage: """
                Instructions: Complete the notes below. Write ONE WORD ONLY for each answer.
                
                Lecture Notes: Optimizing SwiftUI Applications
                
                Introduction
                • The primary goal of SwiftUI optimization is to reduce unnecessary view (1) ______________.
                • This is achieved by understanding SwiftUI's declarative nature.
                
                Core Principles of SwiftUI Rendering
                
                1. Identity
                • A view's identity helps SwiftUI understand its (2) ______________ across different rendering cycles.
                • A stable identity prevents the system from destroying and recreating views.
                
                2. Dependencies
                • A view's `body` is only re-evaluated when one of its direct dependencies (3) ______________.
                • Reading a value inside `body` implicitly creates this dependency.
                
                3. Invalidation
                • When a dependency is modified, the view is invalidated.
                • This re-computation can be an (4) ______________ process if the `body` contains complex logic.
                
                Key Best Practices
                
                • Use `LazyVStack` and `LazyHStack` as they only create items when they become (5) ______________.
                • Isolate state changes to limit the (6) ______________ of an update's impact.
                
                Tooling and Common Pitfalls
                • Use the `Instruments` tool to discover performance (7) ______________.
                • Avoid placing heavy calculations directly inside a view's `body`.
                """,
                questionText: "",
                options: nil,
                correctAnswer: "1. updates\n2. lifetime\n3. changes\n4. expensive\n5. visible\n6. scope\n7. bottlenecks",
                japaneseTranslation: """
                ## 会話スクリプト（日本語訳）

                こんにちは、皆さん。今日のセッションへようこそ。今回は、SwiftUIアプリケーションの最適化という、非常に重要なトピックについて深く掘り下げていきます。SwiftUIの宣言的な世界では、パフォーマンスはビューの更新をいかに賢く管理するかにかかっています。SwiftUI最適化の主な目標は、不要なビューの**更新**を減らすことです。

                まず、最も基本的な最初の概念、アイデンティティから始めましょう。ビューのアイデンティティは、SwiftUIが異なるレンダリングサイクルを通じてそのビューの**ライフタイム**を理解するのに役立ちます。アイデンティティが安定していれば、システムはビューを破棄して再作成するのではなく、単に更新するだけです。これにより、コストのかかる処理を大幅に節約できます。

                第二の原則は、依存関係です。これは非常に重要です。ビューの`body`は、その直接的な依存関係の一つが**変更**された場合にのみ再評価されます。`body`の内部で値を読み取ると、暗黙的にこの依存関係が作られます。SwiftUIは非常に効率的で、関係のない状態の変更によってビューが再レンダリングされることはありません。

                これにより、三つ目のポイント、無効化につながります。依存関係が変更されると、ビューは無効化され、その`body`が再計算されます。もし`body`に複雑なロジックや計算が含まれていると、この再計算は非常に**高コストな**プロセスになり得ます。

                では、これらの原則を念頭に置いた上で、いくつかのベストプラクティスを見ていきましょう。リスト表示には、常に`LazyVStack`や`LazyHStack`を使用してください。これらのコンテナは、項目が画面上に**表示**されるようになったときにのみ作成するため、メモリ使用量と起動時間を劇的に改善できます。

                もう一つの重要な実践方法は、状態を分離することです。状態の変更は、可能な限りそれに関連するビューの近くに保つべきです。これにより、更新の影響**範囲**を限定し、UIの広範囲にわたる再レンダリングの連鎖を防ぐことができます。

                最後に、ツールとよくある落とし穴について話しましょう。パフォーマンスの問題を特定するための最良の友は、Appleの`Instruments`ツールです。これにより、パフォーマンスの**ボトルネック**を発見し、何が遅延を引き起こしているかを正確に突き止めることができます。よくある落とし穴は、ビューの`body`の内部で直接、重い計算を行うことです。これは常に避けるべきです。

                ## 質問
                指示：以下のノートを完成させなさい。各解答は1単語のみで記入すること。
                
                レクチャーノート：SwiftUIアプリケーションの最適化
                
                導入
                • SwiftUI最適化の主な目標は、不要なビューの (1) ______________ を減らすことである。
                • これは、SwiftUIの宣言的な性質を理解することで達成される。
                
                SwiftUIレンダリングの基本原則
                
                1. アイデンティティ
                • ビューのアイデンティティは、SwiftUIが異なるレンダリングサイクルを通じてその (2) ______________ を理解するのに役立つ。
                • 安定したアイデンティティは、システムがビューを破棄・再作成するのを防ぐ。
                
                2. 依存関係
                • ビューの`body`は、その直接的な依存関係の一つが (3) ______________ 場合にのみ再評価される。
                • `body`内で値を読み込むと、暗黙的にこの依存関係が作られる。
                
                3. 無効化
                • 依存関係が変更されると、ビューは無効化される。
                • `body`に複雑なロジックが含まれている場合、この再計算は (4) ______________ プロセスになり得る。
                
                主要なベストプラクティス
                
                • `LazyVStack`と`LazyHStack`は、項目が (5) ______________ になったときにのみ作成するため、使用すること。
                • 更新の影響 (6) ______________ を限定するために、状態の変更を分離すること。
                
                ツールとよくある落とし穴
                • パフォーマンスの (7) ______________ を発見するために`Instruments`ツールを使用すること。
                • ビューの`body`内に直接、重い計算を配置することは避ける。
                """,
                explanation: """
                ### 1. updates
                - **解説**: 講義の冒頭で、講師は "The primary goal of SwiftUI optimization is to reduce unnecessary view updates." と明確に述べています。
                - **学習ポイント**: 💡 `primary goal` は「主な目標」という意味の頻出表現です。`updates` はソフトウェアの文脈で非常に重要な名詞です。

                ### 2. lifetime
                - **解説**: アイデンティティについて説明する際、"A view's identity helps SwiftUI understand its lifetime across different rendering cycles." と述べられています。
                - **学習ポイント**: 📚 `lifetime` (ライフタイム) は、オブジェクトがメモリ上に存在してから解放されるまでの期間を指す、オブジェクト指向プログラミングにおける基本的な概念です。

                ### 3. changes
                - **解説**: 依存関係の原則について、"A view's `body` is only re-evaluated when one of its direct dependencies changes." と説明されています。
                - **学習ポイント**: 🔧 `re-evaluated` は「再評価される」という意味です。`changes` は単純な単語ですが、ここでは状態の変化という重要な技術的概念を表しています。

                ### 4. expensive
                - **解説**: 無効化のプロセスについて、"this re-computation can be an expensive process if the `body` contains complex logic." と述べられています。
                - **学習ポイント**: 🤝 `expensive` は「高価な」という意味ですが、コンピューターサイエンスでは「時間やリソースを大量に消費する（コストの高い）」という意味で頻繁に使われます。

                ### 5. visible
                - **解説**: Lazyコンテナの利点として、"These containers only create items when they become visible on screen." と説明されています。
                - **学習ポイント**: 💼 `Lazy` (遅延) という接頭辞は、必要になるまで処理を行わないというプログラミングの概念を示します。`visible` (見える) という単語がその条件を具体的に示しています。

                ### 6. scope
                - **解説**: 状態の分離について、"This helps to limit the scope of an update's impact." と述べられています。
                - **学習ポイント**: 🌐 `scope` (スコープ) は、影響が及ぶ「範囲」を意味する単語で、プログラミングにおいて変数や変更が影響を与える範囲を指すのに使われます。

                ### 7. bottlenecks
                - **解説**: ツールの使用について、"This allows you to discover performance bottlenecks and pinpoint what's causing delays." と説明されています。
                - **学習ポイント**: 📈 `bottleneck` (ボトルネック) は、システム全体のパフォーマンスを制限している特定の部分を指す比喩的な表現で、パフォーマンスチューニングの文脈で不可欠な用語です。
                """,
                audioFileName: "listening_test2_q4",
                conversationScript: """
                Good morning, everyone, and welcome to our session. Today, we're going to dive deep into a crucial topic: optimizing SwiftUI applications. In the declarative world of SwiftUI, performance is all about intelligently managing how and when our views update. The primary goal of SwiftUI optimization is to reduce unnecessary view **updates**.

                Let's start with the first and most fundamental concept: identity. A view's identity helps SwiftUI understand its **lifetime** across different rendering cycles. If an identity is stable, the system will simply update the view instead of destroying and recreating it, which saves a lot of expensive work.

                The second principle is dependencies. This is critical. A view's `body` is only re-evaluated when one of its direct dependencies **changes**. Reading a value inside the `body` implicitly creates this dependency. SwiftUI is very efficient and won't re-render a view for a state change that it doesn't care about.

                This leads to our third point: invalidation. When a dependency is modified, the view is invalidated, and its `body` is re-computed. If your `body` contains complex logic or calculations, this re-computation can be an **expensive** process.

                So, with these principles in mind, let's look at a few best practices. For lists, always use `LazyVStack` and `LazyHStack`. These containers only create items when they become **visible** on screen, which can dramatically improve memory usage and launch times.

                Another key practice is to isolate state. You should keep state changes as close to the relevant view as possible. This helps to limit the **scope** of an update's impact and prevents a cascade of re-renders across your UI.

                Finally, let's talk about tooling and common pitfalls. Your best friend for identifying performance issues is Apple's `Instruments` tool. This allows you to discover performance **bottlenecks** and pinpoint what's causing delays. A common pitfall is to place heavy calculations directly inside a view's `body`. This should always be avoided.
                """
            )
        ],
        description: "Listening Test 2"
    )
    
    static let allTests: [Test] = [test1, test2]
} 