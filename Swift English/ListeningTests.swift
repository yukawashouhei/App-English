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
                audioFileName: "listening_part2_matching",
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
                audioFileName: "listening_part3_multiple_choice",
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
            )
        ],
        description: "Listening Part 1: Form Completion, Matching & Multiple Choice - Complete Test Suite"
    )
    
    static let allTests: [Test] = [test1]
} 