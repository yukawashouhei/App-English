//
//  ReadingTests.swift
//  App English
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
                type: .shortAnswer,
                passage: """
                テーマ: コードレビュー (Code Review)
                形式: 短文回答問題 (Short Answer Questions)
                
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
                
                Questions
                
                Instructions: Answer the questions below. Choose NO MORE THAN THREE WORDS from the passage for each answer.
                1. What specific UI element is not correctly aligned?
                2. What should the developer extract into a shared constant?
                3. What needs to be moved to the ViewModel?
                4. What kind of tests are required for the new logic?
                """,
                questionText: "Instructions: Answer the questions below. Choose NO MORE THAN THREE WORDS from the passage for each answer.\n\n1. What specific UI element is not correctly aligned?\n2. What should the developer extract into a shared constant?\n3. What needs to be moved to the ViewModel?\n4. What kind of tests are required for the new logic?",
                options: nil,
                correctAnswer: "1. profile avatar icon\n2. color value\n3. data fetching logic\n4. Unit tests",
                japaneseTranslation: """
                宛先: 田中ケンジ
                差出人: サラ・ミラー
                件名: プルリクエスト #128: ユーザープロフィール画面の追加
                
                ケンジさん
                
                新しいユーザープロフィール画面の作業、ありがとうございます。プルリクエストにいくつかコメントを残しました。全体的には素晴らしいですが、マージする前にいくつか細かい点を修正してください。
                
                コメント1: プロフィール画像が少しずれているように見えます。制約を確認してもらえますか？ プロフィールのアバターアイコンがコンテナ内で垂直方向に中央揃えになっていないようです。
                
                コメント2: ボタンの色として、16進コード #007AFF を3つの異なる場所で直接使用しているのに気づきました。保守性を向上させるため、リファクタリングしてください。この色の値を、例えば Constants.swift ファイル内の共有の定数として抽出する方が良いでしょう。これにより「マジックナンバー」の使用を避けられます。
                
                コメント3: 現在、ユーザーデータを取得するロジックが UserProfileView.swift ファイル内にあります。MVVMパターンに正しく従うため、このデータ取得ロジックは UserProfileViewModel に移動すべきです。これにより、ビューのコードがよりクリーンでテストしやすくなります。
                
                コメント4: ローディング中とエラー状態の処理は素晴らしいです！とてもスムーズですね。次のステップとして、新しいViewModelのロジックに対してユニットテストを追加してもらえますか？すべてが期待通りに動作することを保証するためです。
                
                何か質問があれば教えてください。
                
                サラより
                
                質問
                
                指示：以下の質問に答えなさい。各解答は文章から3単語以内で選びなさい。
                1. どの特定のUI要素が正しく配置されていませんか？
                2. 開発者は何を共有の定数として抽出すべきですか？
                3. 何をViewModelに移動する必要がありますか？
                4. 新しいロジックにはどのようなテストが必要ですか？
                """,
                explanation: """
                この問題は、iOSエンジニアが日常的に受け取る「コードレビュー」のフィードバックを題材にしています。IELTSリーディングでは、文章の中から特定の情報を正確に抜き出す力が問われます。

                1. profile avatar icon: 問題文の "not correctly aligned"（正しく配置されていない）という表現が、本文の "not vertically centered"（垂直方向に中央揃えでない）に対応します。具体的なUI要素名を正確に抜き出すことが求められます。

                2. color value: "extract into a shared constant"（共有の定数として抽出する）という指示の対象となっているものを探します。本文では「この色の値(this color value)を〜」と明記されています。#007AFFやhex codeではなく、指示の対象を指す一般的な名称を選ぶのがポイントです。

                3. data fetching logic: 問題文の "moved to the ViewModel"（ViewModelに移動されるべき）という部分を探します。本文に「このデータ取得ロジック(this data fetching logic)は〜移動すべきです」とあります。

                4. Unit tests: "add some..."（いくつか〜を追加する）という依頼内容が問われています。本文の最後で「ユニットテスト(Unit tests)を追加してもらえますか？」と明確に書かれています。

                学習のポイント: Pull Request, refactor, constant, magic number, MVVM, Unit tests といった単語は、英語圏での開発業務に必須の語彙です。これらの単語を知っていると、文章の意図を素早く正確に理解できます。
                """,
                audioFileName: "reading_test1_q1",
                conversationScript: nil
            ),
            Question(
                type: .matching,
                passage: """
                The following passage is an excerpt from a guide for developers preparing to submit their applications to the App Store.
                
                Section A
                Apple's primary goal is to provide users with a safe and trustworthy place to discover apps. Your app submissions are therefore reviewed against a set of technical, content, and design criteria. These guidelines are designed to help you create high-quality apps that are respectful to users. While your app's core functionality is important, Apple also places a high value on the overall user experience, ensuring that every app on the store is intuitive, easy to use, and provides genuine value.
                
                Section B
                One of the most common reasons for an app to be rejected is a lack of sufficient content or functionality. Your app should not be a simple website wrapper or a reformatted version of a webpage. It must include features, content, and a user interface (UI) that go beyond what a mobile browser can provide. An app that only offers a single, overly simple function, such as a basic calculator or a flashlight, may also be rejected unless it provides a uniquely compelling user experience.
                
                Section C
                Your app idea should be your own. Directly copying another developer's app, or making only minor changes to its name or user interface, is strictly prohibited and will result in rejection. This "copycat" behavior not only infringes on the intellectual property of other developers but also clutters the App Store, making it difficult for users to find original, high-quality apps. Always strive to create something that provides a unique value and perspective.
                
                Section D
                Before you formally submit your app for review, it is crucial to test it thoroughly for crashes and bugs. An app that does not run as advertised or contains obvious flaws will be rejected immediately. Ensure that all app information and metadata, such as your app's description, screenshots, and previews, are accurate and truthfully represent the app's core functionality. Misleading users in any way is a serious violation of trust.
                """,
                questionText: """
                Instructions: The reading passage has four sections, A-D. Choose the correct heading for each section from the list of headings below.
                
                List of Headings
                i. The Importance of Pre-Submission Testing
                ii. Monetization and In-App Purchases
                iii. The Core Principles of App Review
                iv. Avoiding Imitation of Other Apps
                v. Requirements for App Functionality
                vi. Designing for a Specific Audience
                vii. Writing a Good App Description
                
                Match each section with the appropriate heading:
                Section A: ___
                Section B: ___
                Section C: ___
                Section D: ___
                """,
                options: nil,
                correctAnswer: "Section A: iii\nSection B: v\nSection C: iv\nSection D: i",
                japaneseTranslation: """
                以下の文章は、App Storeにアプリケーションを申請する準備をしている開発者向けのガイドからの抜粋です。
                
                セクションA
                Appleの主な目標は、ユーザーがアプリを発見するための安全で信頼できる場所を提供することです。したがって、あなたの申請アプリは、一連の技術、コンテンツ、デザインの基準に照らしてレビューされます。これらのガイドラインは、あなたがユーザーに配慮した高品質のアプリを作成するのを助けるために設計されています。アプリの核となる機能も重要ですが、Appleは全体的なユーザー体験にも高い価値を置いており、ストアにあるすべてのアプリが直感的で使いやすく、真の価値を提供することを保証しています。
                
                セクションB
                アプリがリジェクトされる（審査に落ちる）最も一般的な理由の一つは、十分なコンテンツや機能の不足です。あなたのアプリは、単なるウェブサイトのラッパーや、ウェブページを再フォーマットしたものであってはなりません。モバイルブラウザが提供できるものを超えた機能、コンテンツ、そしてユーザーインターフェース（UI）を含んでいる必要があります。基本的な計算機や懐中電灯のように、過度にシンプルな機能を一つだけ提供するアプリも、独自に説得力のあるユーザー体験を提供しない限り、リジェクトされる可能性があります。
                
                セクションC
                あなたのアプリのアイデアは、あなた自身のものであるべきです。他の開発者のアプリを直接コピーしたり、その名前やユーザーインターフェースにわずかな変更しか加えなかったりすることは固く禁じられており、リジェクトの原因となります。この「模倣（copycat）」行為は、他の開発者の知的財産を侵害するだけでなく、App Storeを煩雑にし、ユーザーが独創的で質の高いアプリを見つけるのを困難にします。常に独自の価値と視点を提供するものを創造するよう努めてください。
                
                セクションD
                レビューのためにアプリを正式に提出する前に、クラッシュやバグがないか徹底的にテストすることが極めて重要です。宣伝通りに動作しないアプリや、明らかな欠陥を含むアプリは即座にリジェクトされます。アプリの説明、スクリーンショット、プレビューといった、すべてのアプリ情報とメタデータが正確で、アプリの核となる機能を誠実に表現していることを確認してください。いかなる形であれユーザーを誤解させることは、信頼に対する深刻な違反です。
                """,
                explanation: """
                この問題は、各段落の「主題」や「要点」を素早く掴む能力を測ります。本文と関係のない選択肢（ii, vi, vii）に惑わされず、各段落の中心的なメッセージを見抜くことが鍵です。

                1. セクションA → iii (アプリレビューの基本原則)
                解説: この段落は、Appleのレビューの「主な目標 (primary goal)」や、レビューが「一連の基準 (set of criteria)」に基づいて行われること、そして「全体的なユーザー体験 (overall user experience)」に価値を置いていることなど、レビュープロセス全体の基本的な考え方について説明しています。したがって、「基本原則」という見出しが最も適しています。

                2. セクションB → v (アプリの機能性に対する要件)
                解説: この段落は、「十分なコンテンツや機能の不足 (lack of sufficient content or functionality)」がリジェクトの主な理由であると述べています。また、アプリが「機能、コンテンツ、そしてユーザーインターフェース（UI）を含んでいる必要がある (must include features, content, and a user interface)」と具体的な要件を説明しています。よって「機能性に対する要件」が的確な見出しです。

                3. セクションC → iv (他アプリの模倣を避ける)
                解説: この段落は、「直接コピーする (Directly copying)」ことや「模倣（copycat）行為」を「固く禁じている (strictly prohibited)」と明確に述べています。段落全体が、他人のアプリを真似ることの禁止について語っているため、「模倣を避ける」という見出しが一致します。

                4. セクションD → i (申請前テストの重要性)
                解説: この段落は、「提出する前に、〜徹底的にテストすることが極めて重要 (crucial to test it thoroughly)」と、申請前のテストについて強調しています。また、クラッシュやバグ、不正確なメタデータがリジェクトにつながることも述べられており、段落全体がテストの重要性を訴えています。

                学習のポイント: submission, guidelines, functionality, user interface (UI), rejection, copycat, metadata といった単語は、アプリをリリースする上で避けては通れない重要語彙です。これらの意味を理解することで、Appleの公式ドキュメントを読む際にも役立ちます。
                """,
                audioFileName: "reading_test1_q2",
                conversationScript: nil
            ),
            Question(
                type: .multipleChoice,
                passage: """
                For over a decade, UIKit was the undisputed king of UI development for iOS. It is an imperative framework, meaning developers manually describe every step of how the user interface should be built and how it should change in response to events. This approach provides developers with granular control over every pixel on the screen. However, it can also lead to complex code, often referred to as "spaghetti code," where the state of the UI is spread across many different parts of an application, making it difficult to manage and debug. The vast majority of existing iOS apps, including those from major corporations, are built on this mature and robust framework.
                
                In 2019, Apple introduced SwiftUI, a revolutionary new framework that represented a paradigm shift in how developers build interfaces. SwiftUI is a declarative framework. Instead of describing the steps to build the UI, developers simply declare what the UI should look like for a given state. When the state changes, SwiftUI automatically and efficiently updates the UI to match. This results in significantly less code, improved readability, and powerful features like live previews, which show code changes reflected in the UI in real-time. Furthermore, SwiftUI was designed from the ground up to be cross-platform, allowing developers to share UI code between iOS, macOS, and watchOS more easily than ever before.
                
                Despite the clear advantages of SwiftUI, the transition is not an overnight process. The primary reason for UIKit's continued relevance is its maturity. With over ten years of development, its ecosystem is vast, boasting countless third-party libraries, extensive documentation, and a massive community of developers who can offer solutions to virtually any problem. Many advanced UI features are still easier or only possible to implement using UIKit's powerful and flexible APIs. Consequently, companies with large, existing codebases cannot simply discard their well-tested UIKit code.
                
                As a result, the most valuable skill for an iOS developer today is not choosing one framework over the other, but knowing how to use both in harmony. The modern development landscape often requires a hybrid approach. Apple has provided tools like UIViewRepresentable and UIHostingController that act as bridges, allowing developers to embed UIKit components into a SwiftUI layout, or vice-versa. This pragmatic approach enables teams to gradually adopt SwiftUI for new features while maintaining and leveraging their existing UIKit codebase. For the foreseeable future, proficiency in both frameworks will be the hallmark of a top-tier iOS engineer.
                """,
                questionText: """
                Instructions: Choose the correct letter, A, B, C, or D.
                
                1. What is the main purpose of this passage?
                A. To announce that SwiftUI has completely replaced UIKit.
                B. To compare the two major UI frameworks for iOS and discuss the current transition.
                C. To provide a step-by-step tutorial on how to use UIKit.
                D. To criticize developers who are slow to adopt SwiftUI.
                
                2. According to the passage, what is a significant benefit of SwiftUI's declarative syntax?
                A. It gives developers more precise control over individual pixels.
                B. It makes the code longer but easier to manage.
                C. It reduces the amount of code and improves readability.
                D. It is supported by more third-party libraries than UIKit.
                
                3. Why does the author state that UIKit will remain relevant?
                A. Because it is newer and more innovative than SwiftUI.
                B. Because it is a declarative framework perfect for new apps.
                C. Because of its established ecosystem and ability to handle complex UI tasks.
                D. Because Apple has stopped providing updates for SwiftUI.
                
                4. What does the author suggest is the most practical approach for developers today?
                A. To exclusively use SwiftUI for all new projects.
                B. To rewrite all existing UIKit apps in SwiftUI immediately.
                C. To avoid using third-party libraries in their projects.
                D. To combine both UIKit and SwiftUI within the same application.
                """,
                options: nil,
                correctAnswer: "1. B\n2. C\n3. C\n4. D",
                japaneseTranslation: """
                10年以上にわたり、UIKitはiOSのUI開発において誰もが認める王者でした。これは命令形(imperative)のフレームワークであり、開発者はユーザーインターフェースがどのように構築され、イベントに応じてどのように変化すべきか、そのすべてのステップを手動で記述します。このアプローチは、開発者に画面上のすべてのピクセルに対するきめ細かな制御を提供します。しかし、それは「スパゲッティコード」としばしば呼ばれる複雑なコードにつながることもあり、UIの状態がアプリケーションの多くの異なる部分に分散し、管理やデバッグが困難になります。大手企業のものを含む、現存するiOSアプリの大多数は、この成熟し堅牢なフレームワーク上に構築されています。
                
                2019年、AppleはSwiftUIを発表しました。これは開発者がインターフェースを構築する方法におけるパラダイムシフトを意味する、革命的な新しいフレームワークです。SwiftUIは宣言形(declarative)のフレームワークです。UIを構築するためのステップを記述する代わりに、開発者はある特定の状態に対してUIがどのように見えるべきかを単に宣言します。状態が変化すると、SwiftUIはUIを自動的かつ効率的に更新して一致させます。これにより、コード量が大幅に削減され、可読性が向上し、コードの変更がリアルタイムでUIに反映されるライブプレビューのような強力な機能が実現します。さらに、SwiftUIは最初からクロスプラットフォームになるように設計されており、開発者はiOS、macOS、watchOS間でUIコードをこれまで以上に簡単に共有できます。
                
                SwiftUIの明確な利点にもかかわらず、移行は一夜にして行われるプロセスではありません。UIKitが依然として重要であり続ける主な理由は、その成熟度です。10年以上の開発期間を経て、そのエコシステムは広大であり、無数のサードパーティ製ライブラリ、広範なドキュメンテーション、そして事実上あらゆる問題に対する解決策を提供できる巨大な開発者コミュニティを誇っています。多くの高度なUI機能は、依然としてUIKitの強力で柔軟なAPIを使用して実装する方が簡単、あるいはそれでのみ可能です。その結果、大規模で既存のコードベースを持つ企業は、十分にテストされたUIKitコードを単純に捨てることはできません。
                
                結果として、今日のiOS開発者にとって最も価値のあるスキルは、一方のフレームワークを他方より優先して選ぶことではなく、両方を調和させて使用する方法を知ることです。現代の開発現場では、しばしばハイブリッドアプローチが求められます。AppleはUIViewRepresentableやUIHostingControllerのような、橋渡しとして機能するツールを提供しており、これにより開発者はUIKitコンポーネントをSwiftUIレイアウトに埋め込んだり、その逆を行ったりすることができます。この実用的なアプローチにより、チームは既存のUIKitコードベースを維持・活用しつつ、新機能に対して徐々にSwiftUIを導入することが可能になります。予見可能な将来において、両フレームワークへの習熟が、一流のiOSエンジニアの証となるでしょう。
                """,
                explanation: """
                この問題は、UIKitからSwiftUIへの技術的変遷を理解し、現代のiOS開発における実用的なアプローチを把握する能力を測ります。

                1. 正解: B
                理由: 文章全体が、UIKitとSwiftUIという「二つのフレームワークを比較」し、それらの長所と短所、そして現在の「移行」状況（ハイブリッドアプローチなど）について「議論」しています。選択肢Bは、この文章全体の趣旨を最も正確に要約しています。
                (A)の間違い: 最後の段落で「両方のスキルが必要」とあり、完全な置き換えは否定されています。
                (C)の間違い: これはチュートリアルではなく、概念を説明する文章です。
                (D)の間違い: 著者は批判的ではなく、客観的に現状を分析しています。

                2. 正解: C
                理由: 第2段落に「This results in significantly less code, improved readability... (これにより、コード量が大幅に削減され、可読性が向上し…)」と明確に書かれています。選択肢Cは、この記述を正しく言い換えています。
                (A)の間違い: 「きめ細かな制御(granular control)」は、第1段落で述べられているUIKitの特徴です。
                (B)の間違い: コードは長くなるのではなく、「大幅に削減される(significantly less)」とあります。
                (D)の間違い: サードパーティ製ライブラリが豊富であることは、第3段落で述べられているUIKitの利点です。

                3. 正解: C
                理由: 第3段落で、UIKitが重要であり続ける理由として「its maturity (その成熟度)」「its ecosystem is vast (そのエコシステムは広大)」「Many advanced UI features are still easier...to implement using UIKit (多くの高度なUI機能はUIKitを使う方が簡単)」といった点が挙げられています。選択肢Cは、これらの理由を「確立されたエコシステム」と「複雑なUIタスクを処理できる能力」としてまとめており、最も適切です。
                (A)の間違い: 新しいのはSwiftUIです。
                (B)の間違い: 宣言型なのはSwiftUIです。
                (D)の間違い: 本文にそのような記述はありません。

                4. 正解: D
                理由: 最後の段落で、最も価値のあるスキルは「knowing how to use both in harmony (両方を調和させて使用する方法を知ること)」であり、「hybrid approach (ハイブリッドアプローチ)」が求められると述べられています。選択肢Dは、このアプローチを具体的に言い換えたものです。
                (A)の間違い: 「排他的に(exclusively)」使用するのではなく、両方を使うべきだと述べられています。
                (B)の間違い: 「単純に捨てることはできない(cannot simply discard)」とあり、即時書き直しは非現実的だと示唆されています。
                (C)の間違い: サードパーティ製ライブラリはUIKitの利点として挙げられており、使用を避けるべきとは述べられていません。

                学習のポイント: imperative, declarative, ecosystem, hybrid approach, UIViewRepresentable, UIHostingController といった用語は、現代のiOS開発において重要な概念です。これらの理解により、技術的な変遷と実用的な開発戦略を把握できます。
                """,
                audioFileName: "reading_test1_q3",
                conversationScript: nil
            )
        ],
        description: "Reading Test 1"
    )
    
    static let test2 = Test(
        title: "Test 2",
        skillType: .reading,
        questions: [
            Question(
                type: .shortAnswer,
                passage: """
                Building layouts in SwiftUI is fundamentally different from traditional imperative approaches like UIKit's Auto Layout. SwiftUI employs a declarative syntax, allowing developers to describe what the UI should look like based on the current state. The primary tools for arranging views are stacks: VStack arranges views vertically, HStack horizontally, while a ZStack overlays views, arranging them in a back-to-front manner.

                Beyond stacks, developers use modifiers to customize a view's appearance and layout. Each modifier returns a new view that wraps the original, applying the specified change. For example, adding `.padding()` creates a larger view with space around the original content. The final size and position of any view are determined through a process known as layout negotiation. This is essentially a conversation between a parent view and a child view. The parent offers a size, and the child responds with the size it requires, resulting in a flexible and efficient layout system that adapts to different content and screen sizes.
                
                Questions
                
                Answer the questions below.
                Choose NO MORE THAN THREE WORDS from the passage for each answer.
                
                1. What kind of syntax does SwiftUI use to define user interfaces?
                2. Which stack type places views on top of each other?
                3. What is the term for the methods used to alter a view's appearance?
                4. What is the three-step dialogue between parent and child views called?
                """,
                questionText: """
                Answer the questions below.
                Choose NO MORE THAN THREE WORDS from the passage for each answer.

                1. What kind of syntax does SwiftUI use to define user interfaces?
                2. Which stack type places views on top of each other?
                3. What is the term for the methods used to alter a view's appearance?
                4. What is the three-step dialogue between parent and child views called?
                """,
                options: nil,
                correctAnswer: "1. declarative syntax\n2. a ZStack\n3. modifiers\n4. layout negotiation",
                japaneseTranslation: """
                SwiftUIでのレイアウト構築は、UIKitのAuto Layoutのような従来の命令的なアプローチとは根本的に異なります。SwiftUIは宣言的構文を採用しており、開発者は現在の状態に基づいてUIがどのように見えるべきかを記述することができます。ビューを配置するための主要なツールはスタックです。VStackはビューを垂直に、HStackは水平に配置し、一方ZStackはビューを重ね合わせ、奥から手前へと配置します。

                スタック以外に、開発者は修飾子を使用してビューの外観とレイアウトをカスタマイズします。各修飾子は元のビューをラップする新しいビューを返し、指定された変更を適用します。例えば、`.padding()`を追加すると、元のコンテンツの周りにスペースを持つより大きなビューが作成されます。あらゆるビューの最終的なサイズと位置は、レイアウトネゴシエーションとして知られるプロセスを通じて決定されます。これは本質的に、親ビューと子ビュー間の対話です。親がサイズを提案し、子がそれに必要なサイズで応答することで、異なるコンテンツや画面サイズに適応する、柔軟で効率的なレイアウトシステムが実現します。

                以下の質問に答えなさい。
                各回答について、本文中から3単語以内で選びなさい。

                1. SwiftUIがユーザーインターフェースを定義するために使用する構文の種類は何ですか？
                2. どのスタックタイプがビューを互いの上に配置しますか？
                3. ビューの外観を変更するために使用されるメソッドの用語は何ですか？
                4. 親ビューと子ビューの間で行われる3ステップの対話は何と呼ばれますか？
                """,
                explanation: """
                1. declarative syntax
                - **解説**: 第1パラグラフの第2文、"SwiftUI employs a declarative syntax..." に答えが明確に述べられています。
                - **学習ポイント**: 💡 `employ` は `use`（使う）のよりフォーマルな同義語で、技術文書で頻繁に見られます。「宣言的構文 (`declarative syntax`)」は、*何を(What)*達成したいかを記述するスタイルで、*どのように(How)*達成するかを記述する「命令的構文 (`imperative syntax`)」との対比で理解すると記憶に定着しやすいです。

                2. a ZStack
                - **解説**: 第1パラグラフの最終文、"...while a ZStack overlays views, arranging them in a back-to-front manner." から、ビューを重ね合わせる（奥から手前へ配置する）のがZStackであることがわかります。
                - **学習ポイント**: 📚 `overlay` は「重ねる、覆う」という意味の動詞です。`back-to-front` は「奥から手前へ」という意味で、Z軸（奥行き）を意識させます。これが `ZStack` の名前の由来です。

                3. modifiers
                - **解説**: 第2パラグラフの冒頭、"...developers use modifiers to customize a view's appearance and layout." に直接的な答えがあります。
                - **学習ポイント**: 🔧 `modifier`（修飾子）は、動詞 `modify`（修正する、変更する）の名詞形です。SwiftUIでは `.padding()` や `.frame()` のように、ビューを「修飾」して新しいビューを返すメソッドを指します。単語の成り立ちを理解すると、意味を推測しやすくなります。

                4. layout negotiation
                - **解説**: 第2パラグラフの中盤、"...determined through a process known as layout negotiation." と明記されています。
                - **学習ポイント**: 🤝 `negotiation` は「交渉」を意味します。SwiftUIのレイアウトシステムが、親ビューと子ビューの間でサイズの「交渉」を行うという比喩的な表現は、このプロセスの本質を理解するのに役立ちます。技術文書では、このような比喩表現が複雑な概念を分かりやすくするために使われることがあります。
                """,
                audioFileName: "reading_test2_q1",
                conversationScript: nil
            ),
            Question(
                type: .matching,
                passage: """
                The following passage is an excerpt from a guide on modern SwiftUI data flow best practices.
                
                Section A
                The introduction of the `@Observable` macro in recent versions of Swift has fundamentally streamlined how developers manage state in their applications. This macro automatically synthesizes the necessary code to make a class's properties observable, effectively superseding the older `ObservableObject` protocol and the need for `@Published` property wrappers. By simply annotating a class with `@Observable`, it is transformed into a robust source of truth. Any changes to its properties can be tracked by the SwiftUI framework, which is the foundational step for creating a reactive user interface that responds to data model mutations.
                
                Section B
                Once a data model is made observable, SwiftUI views can subscribe to its changes in a remarkably seamless manner. This is primarily achieved through property wrappers like `@State` for owning a source of truth within a view, or `@Environment` for accessing shared data passed down through the view hierarchy. When a view's body reads a property from an observable object, SwiftUI automatically establishes a dependency. Consequently, whenever that specific property is modified, the framework intelligently invalidates the view and triggers a re-rendering process to ensure the UI always reflects the latest state of the data.
                
                Section C
                It is a common misconception that any property change within an observable object will cause all observing views to update. The reality is more granular and efficient. SwiftUI's observation system is precise: a view will only be re-rendered if a property that it *actually reads* during the execution of its `body` is modified. If a view displays a user's name but not their age, a change to the age property will not trigger an update for that particular view. This precise tracking of dependencies is a key feature that prevents unnecessary UI refreshes and contributes to better application performance.
                
                Section D
                Effective application architecture relies on a clear and predictable data flow. A recommended pattern is to define your observable models as the single source of truth and inject them into the view hierarchy where needed. For global or widely-shared state, such as user authentication status or app settings, leveraging the `@Environment` property wrapper is an ideal approach. This avoids "prop drilling," the cumbersome practice of passing data through many intermediate views. By centralizing state management and using dependency injection, you create a more maintainable, testable, and scalable codebase.
                
                Questions
                
                Instructions: The reading passage has four sections, A-D. Choose the correct heading for each section from the list of headings below.
                
                List of Headings
                i. Migrating from the old ObservableObject protocol
                ii. Automatic view updates through state observation
                iii. Comparing SwiftUI's Observation with Combine
                iv. The specific conditions that trigger a view refresh
                v. Defining a source of truth with the Observable macro
                vi. Best practices for data flow in an application
                vii. Handling complex data transformations
                
                Match each section with the appropriate heading:
                Section A: ___
                Section B: ___
                Section C: ___
                Section D: ___
                """,
                questionText: """
                Instructions: The reading passage has four sections, A-D. Choose the correct heading for each section from the list of headings below.
                
                List of Headings
                i. Migrating from the old ObservableObject protocol
                ii. Automatic view updates through state observation
                iii. Comparing SwiftUI's Observation with Combine
                iv. The specific conditions that trigger a view refresh
                v. Defining a source of truth with the Observable macro
                vi. Best practices for data flow in an application
                vii. Handling complex data transformations
                
                Match each section with the appropriate heading:
                Section A: ___
                Section B: ___
                Section C: ___
                Section D: ___
                """,
                options: nil,
                correctAnswer: "Section A: v\nSection B: ii\nSection C: iv\nSection D: vi",
                japaneseTranslation: """
                以下の文章は、最新のSwiftUIにおけるデータフローのベストプラクティスに関するガイドからの抜粋です。
                
                セクション A
                近年のSwiftバージョンで導入された`@Observable`マクロは、開発者がアプリケーションの状態を管理する方法を根本的に合理化しました。このマクロは、クラスのプロパティを観測可能にするために必要なコードを自動的に合成し、古い`ObservableObject`プロトコルや`@Published`プロパティラッパーの必要性を事実上なくします。クラスに`@Observable`と注釈を付けるだけで、それは堅牢な「真実の源」に変わります。そのプロパティへのいかなる変更もSwiftUIフレームワークによって追跡可能となり、これはデータモデルの変更に応答するリアクティブなユーザーインターフェースを作成するための基礎的なステップです。
                
                セクション B
                データモデルが観測可能になると、SwiftUIのビューは驚くほどシームレスな方法でその変更を購読できます。これは主に、ビュー内で「真実の源」を所有するための`@State`や、ビュー階層を通じて渡される共有データにアクセスするための`@Environment`のようなプロパティラッパーによって達成されます。ビューのbodyが観測可能なオブジェクトからプロパティを読み取ると、SwiftUIは自動的に依存関係を確立します。その結果、その特定のプロパティが変更されるたびに、フレームワークは賢明にもビューを無効化し、UIが常にデータの最新状態を反映するように再レンダリングプロセスをトリガーします。
                
                セクション C
                観測可能なオブジェクト内のいかなるプロパティ変更も、それを観測しているすべてのビューを更新させるというのは、よくある誤解です。現実はもっと粒度が高く、効率的です。SwiftUIの観測システムは精密です。ビューは、その`body`の実行中に*実際に読み取った*プロパティが変更された場合にのみ再レンダリングされます。もしビューがユーザーの名前を表示しているが年齢は表示していない場合、年齢プロパティへの変更はその特定のビューの更新をトリガーしません。この正確な依存関係の追跡は、不要なUIリフレッシュを防ぎ、より良いアプリケーションパフォーマンスに貢献する重要な機能です。
                
                セクション D
                効果的なアプリケーションアーキテクチャは、明確で予測可能なデータフローに依存します。推奨されるパターンは、観測可能なモデルを単一の「真実の源」として定義し、必要な場所にビュー階層へ注入することです。ユーザーの認証状態やアプリ設定など、グローバルまたは広範囲で共有される状態には、`@Environment`プロパティラッパーを活用するのが理想的なアプローチです。これにより、多くの仲介ビューを通じてデータを渡すという面倒な実践である「プロップドリル」を回避できます。状態管理を一元化し、依存性注入を使用することで、より保守、テスト、拡張が容易なコードベースを作成できます。
                
                指示：このリーディングパッセージにはAからDの4つのセクションがあります。以下の見出しのリストから、各セクションに最も適切な見出しを選びなさい。
                
                見出しのリスト
                i. 古いObservableObjectプロトコルからの移行
                ii. 状態観測による自動的なビューの更新
                iii. SwiftUIのObservationとCombineの比較
                iv. ビューのリフレッシュを引き起こす特定の条件
                v. Observableマクロによる「真実の源」の定義
                vi. アプリケーションにおけるデータフローのベストプラクティス
                vii. 複雑なデータ変換の処理
                
                各セクションと適切な見出しを組み合わせなさい：
                セクション A: ___
                セクション B: ___
                セクション C: ___
                セクション D: ___
                """,
                explanation: """
                Section A: v. Defining a source of truth with the Observable macro
                - **解説**: セクションAは、`@Observable`マクロがクラスを「真実の源 (source of truth)」に変える方法を説明しています。`superseding the older ObservableObject protocol`（古いプロトコルを置き換える）という記述はありますが、主題はあくまで`@Observable`の役割の定義です。したがって、(i)「移行」よりも(v)「定義」の方がセクション全体の主題として適切です。
                - **学習ポイント**: 💡 `supersede` は「〜に取って代わる、〜を時代遅れにする」という意味の動詞で、技術の進化を説明する際によく使われます。
                
                Section B: ii. Automatic view updates through state observation
                - **解説**: セクションBは、`@State`や`@Environment`を使い、ビューが観測可能なオブジェクトの変更を「購読 (subscribe)」し、変更があった際に「自動的に (automatically)」再レンダリングされる仕組みを説明しています。`Automatic view updates`（自動的なビューの更新）が見事に要約しています。
                - **学習ポイント**: 📚 `seamless` は「継ぎ目のない、スムーズな」という意味の形容詞です。ここでは、開発者が複雑なコードを書かなくても、データとUIがスムーズに連携する様子を表しています。
                
                Section C: iv. The specific conditions that trigger a view refresh
                - **解説**: このセクションは「よくある誤解 (common misconception)」を正し、ビューの更新がトリガーされるのは、ビューが「実際に読み取った (actually reads)」プロパティが変更された場合のみである、という「特定の条件 (specific conditions)」に焦点を当てています。主題はパフォーマンスの仕組みであり、(iv)が最も的確です。
                - **学習ポイント**: 🔧 `granular` は「粒度の細かい」という意味です。ここでは、観測システムが大雑把ではなく、非常に精密であることを示しています。IT分野で頻出する単語です。
                
                Section D: vi. Best practices for data flow in an application
                - **解説**: セクションDは、「効果的なアプリケーションアーキテクチャ (Effective application architecture)」や「推奨されるパターン (recommended pattern)」、「プロップドリルの回避」など、単一の機能ではなく、アプリケーション全体におけるデータフローの設計指針、つまり「ベストプラクティス (Best practices)」について論じています。
                - **学習ポイント**: 🤝 `cumbersome` は「厄介な、面倒な」という意味です。「プロップドリル」が開発者にとってどれほど非効率な作業であるかを強調しています。
                """,
                audioFileName: "reading_test2_q2",
                conversationScript: nil
            ),
            Question(
                type: .multipleChoice,
                passage: """
                Asynchronous programming is a cornerstone of modern iOS development, essential for creating responsive user interfaces that are not blocked by long-running tasks like network requests or database access. For years, developers navigated this complexity with tools like closures and third-party libraries. However, the landscape has been reshaped by two principal Apple-backed technologies: the Combine framework and the async/await syntax integrated into the Swift language. Understanding the distinct philosophies and ideal use cases for each is now a critical skill for any proficient iOS developer. This passage aims to dissect their differences and provide a pragmatic guide for when to leverage one over the other.

                First introduced with Swift 5.5, async/await provides a model of structured concurrency that fundamentally simplifies asynchronous code. Its primary allure is readability; it allows developers to write asynchronous operations in a linear, sequential style that is remarkably similar to synchronous code. This approach effectively eliminates the "pyramid of doom"—deeply nested completion handlers that were notoriously difficult to read and maintain. Error handling is also streamlined, as it integrates seamlessly with Swift's existing `try/catch` mechanism. Consequently, async/await excels in scenarios involving discrete, one-off asynchronous tasks, such as fetching a single piece of data from an API or loading a file from disk.

                Combine, on the other hand, is a declarative framework designed for processing values over time. It is Apple's native implementation of functional reactive programming. The core concept of Combine is the "publisher," which emits a stream of values, and the "subscriber," which receives them. In between, a chain of "operators" can be used to transform, filter, or combine these values in powerful ways. This pipeline-based approach makes Combine exceptionally well-suited for handling continuous streams of events, such as user input from a text field, real-time data from a WebSocket, or any scenario where data changes dynamically and requires a reactive response.

                Ultimately, the choice between async/await and Combine is not a matter of one being universally superior; they are complementary tools designed to solve different kinds of asynchronous problems. Async/await is concerned with *when* a value will be returned, making it perfect for replacing simple completion handlers. Combine is concerned with *how* a stream of values is processed over its lifetime. For modern iOS development, a hybrid approach is often the most effective. Developers should default to the simplicity and clarity of async/await for straightforward asynchronous calls, while reaching for the expressive power of Combine when faced with complex event streams and the need for a reactive data flow.
                
                Questions
                
                Instructions: Choose the correct letter, A, B, C, or D.
                
                1. What is the main purpose of this passage?
                A. To argue that the Combine framework is now obsolete.
                B. To provide a step-by-step tutorial for implementing async/await.
                C. To compare two major approaches to asynchronous programming and guide developers on their usage.
                D. To announce a new framework that will replace both Combine and async/await.
                
                2. According to the passage, what is a significant advantage of async/await?
                A. It significantly improves the readability of asynchronous code.
                B. It can handle complex event streams more effectively than Combine.
                C. It is a core component of the legacy UIKit framework.
                D. It requires the use of powerful operators for data transformation.
                
                3. Why does the author suggest that the Combine framework remains important?
                A. It is the only available method for performing basic network requests.
                B. It generally offers better performance for all types of asynchronous tasks.
                C. It is considered easier for beginners to learn than async/await.
                D. Because of its powerful capabilities for handling continuous streams of events.
                
                4. What does the author recommend as the best approach for modern iOS developers?
                A. To exclusively use async/await in all new application development.
                B. To choose the tool that best fits the specific problem, as both have their own strengths.
                C. To work on completely replacing all existing Combine code with async/await.
                D. To avoid asynchronous programming as much as possible to ensure code simplicity.
                """,
                questionText: """
                Instructions: Choose the correct letter, A, B, C, or D.
                
                1. What is the main purpose of this passage?
                A. To argue that the Combine framework is now obsolete.
                B. To provide a step-by-step tutorial for implementing async/await.
                C. To compare two major approaches to asynchronous programming and guide developers on their usage.
                D. To announce a new framework that will replace both Combine and async/await.
                
                2. According to the passage, what is a significant advantage of async/await?
                A. It significantly improves the readability of asynchronous code.
                B. It can handle complex event streams more effectively than Combine.
                C. It is a core component of the legacy UIKit framework.
                D. It requires the use of powerful operators for data transformation.
                
                3. Why does the author suggest that the Combine framework remains important?
                A. It is the only available method for performing basic network requests.
                B. It generally offers better performance for all types of asynchronous tasks.
                C. It is considered easier for beginners to learn than async/await.
                D. Because of its powerful capabilities for handling continuous streams of events.
                
                4. What does the author recommend as the best approach for modern iOS developers?
                A. To exclusively use async/await in all new application development.
                B. To choose the tool that best fits the specific problem, as both have their own strengths.
                C. To work on completely replacing all existing Combine code with async/await.
                D. To avoid asynchronous programming as much as possible to ensure code simplicity.
                """,
                options: nil,
                correctAnswer: "1. C\n2. A\n3. D\n4. B",
                japaneseTranslation: """
                非同期プログラミングは現代のiOS開発の礎であり、ネットワークリクエストやデータベースアクセスのような時間のかかるタスクによってブロックされない、応答性の高いユーザーインターフェースを作成するために不可欠です。長年、開発者はクロージャやサードパーティライブラリのようなツールでこの複雑さを乗り越えてきました。しかし、この状況はAppleが支援する2つの主要技術、すなわちCombineフレームワークとSwift言語に統合されたasync/await構文によって一変しました。それぞれの明確な思想と理想的なユースケースを理解することは、今や熟練したiOS開発者にとって重要なスキルです。この文章は、それらの違いを分析し、どちらをいつ活用すべきかについての実践的なガイドを提供することを目的としています。
                
                Swift 5.5で初めて導入されたasync/awaitは、非同期コードを根本的に単純化する構造化された並行処理モデルを提供します。その主な魅力は可読性です。これにより、開発者は非同期処理を、驚くほど同期コードに似た直線的で逐次的なスタイルで書くことができます。このアプローチは、読解や保守が非常に困難であることで悪名高かった、深くネストした完了ハンドラ、いわゆる「破滅のピラミッド」を効果的に排除します。エラーハンドリングも、Swiftの既存の`try/catch`メカニズムとシームレスに統合されるため、合理化されています。結果として、async/awaitは、APIから単一のデータを取得したり、ディスクからファイルを読み込んだりするなど、個別で一回限りの非同期タスクを含むシナリオで優れた性能を発揮します。
                
                一方、Combineは、時間とともに変化する値を処理するために設計された宣言的なフレームワークです。これは、Appleによる関数リアクティブプログラミングのネイティブ実装です。Combineの中核概念は、値のストリームを発行する「publisher」と、それらを受け取る「subscriber」です。その間には、これらの値を強力な方法で変換、フィルタリング、または結合するために使用できる「operator」の連鎖が存在します。このパイプラインベースのアプローチにより、Combineは、テキストフィールドからのユーザー入力、WebSocketからのリアルタイムデータ、またはデータが動的に変化しリアクティブな応答を必要とするあらゆるシナリオなど、連続的なイベントストリームの処理に非常に適しています。
                
                最終的に、async/awaitとCombineの間の選択は、一方が普遍的に優れているという問題ではありません。それらは異なる種類の非同期問題を解決するために設計された補完的なツールです。async/awaitは値が*いつ*返されるかに関心があり、単純な完了ハンドラを置き換えるのに最適です。Combineは値のストリームがそのライフタイムを通じて*どのように*処理されるかに関心があります。現代のiOS開発では、ハイブリッドなアプローチがしばしば最も効果的です。開発者は、単純な非同期呼び出しにはasync/awaitのシンプルさと明快さをデフォルトとし、複雑なイベントストリームやリアクティブなデータフローの必要性に直面したときにはCombineの表現力を頼るべきです。

                指示：正しい選択肢 A, B, C, Dを選びなさい。
                
                1. この文章の主な目的は何ですか？
                A. Combineフレームワークが今や時代遅れだと主張するため。
                B. async/awaitを実装するためのステップバイステップのチュートリアルを提供するため。
                C. 非同期プログラミングの2つの主要なアプローチを比較し、その使い方について開発者を導くため。
                D. Combineとasync/awaitの両方を置き換える新しいフレームワークを発表するため。
                
                2. 文章によると、async/awaitの重要な利点は何ですか？
                A. 非同期コードの可読性を大幅に向上させること。
                B. 複雑なイベントストリームをCombineよりも効果的に扱えること。
                C. レガシーなUIKitフレームワークの中核コンポーネントであること。
                D. データ変換のために強力なオペレータの使用を必要とすること。
                
                3. 筆者がCombineフレームワークが依然として重要であると示唆しているのはなぜですか？
                A. それが基本的なネットワークリクエストを実行する唯一利用可能な方法だから。
                B. それが全ての種類の非同期タスクにおいて、一般的により良いパフォーマンスを提供するから。
                C. それが初心者にとってasync/awaitよりも学ぶのが簡単だと考えられているから。
                D. 連続的なイベントストリームを処理するためのその強力な能力のため。
                
                4. 筆者が現代のiOS開発者にとって最善のアプローチとして推奨していることは何ですか？
                A. 全ての新規アプリケーション開発で排他的にasync/awaitを使用すること。
                B. 両方にそれぞれの強みがあるため、特定の問題に最も合ったツールを選択すること。
                C. 既存のCombineコードを全てasync/awaitで完全に置き換える作業をすること。
                D. コードのシンプルさを確保するために、可能な限り非同期プログラミングを避けること。
                """,
                explanation: """
                1. 正解: C
                - **解説**: 第1段落の最終文 "This passage aims to dissect their differences and provide a pragmatic guide for when to leverage one over the other." (この文章は、それらの違いを分析し、どちらをいつ活用すべきかについての実践的なガイドを提供することを目的としています) が、文章全体の目的を明確に示しています。選択肢Cは、この文の意図を最も正確に言い換えています。
                - **間違いの選択肢**: (A) 最終段落で両者は「補完的(complementary)」と述べており、間違いです。(B) この文章は高レベルな比較であり、実装方法を教えるチュートリアルではありません。(D) 新しいフレームワークに関する言及は一切ありません。
                
                2. 正解: A
                - **解説**: 第2段落では、async/awaitの「主な魅力(primary allure)」として「可読性(readability)」を挙げています。非同期コードを「直線的で逐次的なスタイル(linear, sequential style)」で書けるようにすることが、その大きな利点であると説明されています。
                - **間違いの選択肢**: (B) 複雑なイベントストリームの扱いはCombineの長所として説明されています。(C) async/awaitはSwift言語の機能であり、UIKitフレームワークのコンポーネントではありません。(D) オペレータはCombineの特徴です。
                - **学習ポイント**: 💡 `allure` は「魅力」を意味する名詞です。`appeal` や `attraction` と同義で、技術的な利点を表現する際に使うとお洒落な印象を与えます。
                
                3. 正解: D
                - **解説**: 第3段落では、Combineが「連続的なイベントストリームの処理に非常に適している(exceptionally well-suited for handling continuous streams of events)」と説明されています。これが、単純な非同期処理を得意とするasync/awaitが登場した後も、Combineが重要な理由です。
                - **間違いの選択肢**: (A) async/awaitもネットワークリクエストに使えます。(B) パフォーマンスに関する一般的な優劣は述べられていません。(C) むしろasync/awaitの方がコードがシンプルで初心者には理解しやすいと示唆されています。
                - **学習ポイント**: 📚 `declarative` (宣言的) はSwiftUIやCombineの思想を理解する上で非常に重要な単語です。*How* (どのように) を記述する `imperative` (命令的) と対比して、*What* (何を) を記述するスタイルを指します。
                
                4. 正解: B
                - **解説**: 最終段落は、両者が「補完的なツール(complementary tools)」であると結論付けています。そして「ハイブリッドなアプローチ(hybrid approach)」を推奨し、「単純な呼び出しにはasync/awaitを、複雑なイベントストリームにはCombineを」と具体的な使い分けを提案しています。これは、問題に応じて最適なツールを選ぶべきだという考え方です。
                - **間違いの選択肢**: (A, C) 筆者は排他的な使用や完全な置き換えではなく、共存を推奨しています。(D) 最初の段落で非同期プログラミングは「不可欠(essential)」と述べており、避けるべきだという考えとは正反対です。
                - **学習ポイント**: 🔧 `pragmatic` (実用的な、実践的な) は、理論だけでなく現実的な解決策を重視する姿勢を示す形容詞です。エンジニアリングの文脈で頻繁に使われます。
                """,
                audioFileName: "reading_test2_q3",
                conversationScript: nil
            )
        ],
        description: "Reading Test 2"
    )
    
    static let test3 = Test(
        title: "Test 3",
        skillType: .reading,
        questions: [
            Question(
                type: .shortAnswer,
                passage: """
                Apple's WWDC 2025 keynote introduced a significant evolution in its design philosophy with the unveiling of Liquid Glass, the new system-wide design language for iOS 26, macOS Tahoe, and visionOS 26. This aesthetic replaces the flatter, more opaque design of previous years with a dynamic, translucent material that mimics the optical properties of glass. Key characteristics include the refraction of content beneath it, subtle specular highlights that react to device motion, and a distinct lensing effect along its edges. For developers, adopting Liquid Glass is not merely a stylistic choice but a fundamental aspect of creating a modern, integrated user experience.

                Transitioning to this new design requires a shift in how developers approach UI implementation. While SwiftUI will automatically apply the Liquid Glass effect to standard components like TabView and NavigationSplitView when an app is compiled with Xcode 26, achieving a truly seamless look demands more attention to detail. A new key API, the `.toolbarBackgroundStyle()` modifier, allows for granular control over the material's appearance in toolbars. Developers can use it to create a sense of depth and hierarchy. For instance, applying a thicker, more frosted glass effect can distinguish a primary toolbar from a secondary one.

                Performance is a critical consideration when implementing these advanced visual effects. The framework's rendering engine has been heavily optimized to handle the complex calculations of refraction and blur without compromising the device's responsiveness. However, Apple's guidelines caution against excessive use of custom views with complex geometries layered behind the glass. The official recommendation is to leverage standard SwiftUI views wherever possible and to use the new `DrawingGroup()` on complex custom graphics before applying glass effects. This pre-rasterizes the view into an offscreen buffer, preventing performance bottlenecks.

                Beyond system components, Liquid Glass is designed to work harmoniously with immersive 3D content, particularly in visionOS. The tight integration between SwiftUI and RealityKit is crucial here. RealityKit entities can now be directly observed by SwiftUI, allowing the UI to update in real-time based on the state of a 3D object. A practical application of this is presenting a SwiftUI view as a popover that appears to emanate directly from a virtual object, sharing its material properties and lighting conditions. This creates a cohesive experience where the line between UI and 3D content is beautifully blurred.
                """,
                questionText: """
                Answer the questions below.

                Choose NO MORE THAN THREE WORDS from the passage for each answer.

                1. What visual characteristic of Liquid Glass is noticeable at its periphery?
                2. Which new modifier provides detailed control over toolbar materials?
                3. What should be used on complex custom graphics to avoid performance issues?
                4. What type of content is Liquid Glass designed to integrate seamlessly with?
                """,
                options: nil,
                correctAnswer: "1. lensing effect\n2. .toolbarBackgroundStyle()\n3. DrawingGroup()\n4. immersive 3D content",
                japaneseTranslation: """
                **パッセージ日本語訳**

                AppleのWWDC 2025基調講演では、iOS 26、macOS Tahoe、そしてvisionOS 26のシステム全体にわたる新しいデザイン言語である「Liquid Glass」が発表され、そのデザイン哲学における重要な進化が示されました。この美学は、近年のよりフラットで不透明なデザインに代わり、ガラスの光学的特性を模倣した動的で半透明なマテリアルを採用しています。主な特徴として、下にあるコンテンツの屈折、デバイスの動きに反応する微かなスペキュラハイライト、そしてその端に沿った特徴的なレンズ効果が挙げられます。開発者にとって、Liquid Glassの採用は単なるスタイルの選択ではなく、モダンで統合されたユーザー体験を創造するための基本的な側面です。

                この新しいデザインへの移行は、開発者がUI実装に取り組む方法の変化を要求します。アプリがXcode 26でコンパイルされると、SwiftUIはTabViewやNavigationSplitViewのような標準コンポーネントに自動的にLiquid Glass効果を適用しますが、真にシームレスな外観を実現するには、細部へのさらなる注意が必要です。新しい主要なAPIである`.toolbarBackgroundStyle()`モディファイアは、ツールバーのマテリアルの外観をきめ細かく制御することを可能にします。開発者はこれを使用して、奥行きと階層の感覚を生み出すことができます。例えば、より厚く、よりすりガラス状の効果を適用することで、プライマリツールバーをセカンダリツールバーから区別できます。

                これらの高度な視覚効果を実装する際には、パフォーマンスが重要な考慮事項です。フレームワークのレンダリングエンジンは、デバイスの応答性を損なうことなく、屈折とぼかしの複雑な計算を処理するために大幅に最適化されています。しかし、Appleのガイドラインは、ガラスの背後に複雑なジオメトリを持つカスタムビューを過度に使用することに対して警告しています。公式の推奨事項は、可能な限り標準のSwiftUIビューを活用し、ガラス効果を適用する前に新しい`DrawingGroup()`を複雑なカスタムグラフィックスに使用することです。これにより、ビューがオフスクリーンバッファに事前ラスタライズされ、パフォーマンスのボトルネックが防止されます。

                システムコンポーネントを超えて、Liquid Glassは、特にvisionOSにおいて、没入型の3Dコンテンツと調和して機能するように設計されています。ここでは、SwiftUIとRealityKitの緊密な統合が不可欠です。RealityKitのエンティティは、SwiftUIによって直接監視できるようになり、3Dオブジェクトの状態に基づいてUIがリアルタイムで更新されることを可能にします。この実用的な応用例は、仮想オブジェクトから直接現れるように見えるポップオーバーとしてSwiftUIビューを提示し、そのマテリアルのプロパティと照明条件を共有することです。これにより、UIと3Dコンテンツの境界線が美しく曖昧になる、一体感のある体験が生まれます。

                **質問日本語訳**

                以下の質問に答えなさい。

                それぞれの答えについて、パッセージから3語以内で選びなさい。

                1. Liquid Glassの視覚的特徴のうち、その周辺部で顕著なものは何ですか？
                2. ツールバーのマテリアルを詳細に制御できる新しいモディファイアは何ですか？
                3. パフォーマンスの問題を避けるために、複雑なカスタムグラフィックスには何を使用すべきですか？
                4. Liquid Glassは、どのような種類のコンテンツとシームレスに統合するように設計されていますか？
                """,
                explanation: """
                ### 1. lensing effect
                - **解説**: パッセージの第1段落に "a distinct lensing effect along its edges"（その端に沿った特徴的なレンズ効果）という記述があります。`periphery`（周辺部）は `edges`（端）に対応しており、3単語以内で的確に特徴を捉えているのが `lensing effect` です。
                - **学習ポイント**: `distinct` (明確な、はっきりした), `periphery` (周辺), `along its edges` (その端に沿って) といった表現は、技術文書でUIの特定の部分を指す際によく使われます。

                ### 2. .toolbarBackgroundStyle()
                - **解説**: 第2段落に "A new key API, the `.toolbarBackgroundStyle()` modifier, allows for granular control..." と明確に記載されています。API名を正確に抜き出す問題です。
                - **学習ポイント**: `.modifierName()` のように、コード内の特定の要素を指す表現に慣れることが重要です。`granular control` は「きめ細かい制御」を意味する頻出表現です。

                ### 3. DrawingGroup()
                - **解説**: 第3段落のパフォーマンスに関する記述の中に、"The official recommendation is to ... use the new `DrawingGroup()` on complex custom graphics" とあります。パフォーマンスのボトルネックを避けるための具体的な解決策として提示されています。
                - **学習ポイント**: `official recommendation` (公式推奨), `performance bottlenecks` (パフォーマンスのボトルネック), `pre-rasterizes` (事前ラスタライズする) などは、パフォーマンス最適化に関する議論で必須の語彙です。

                ### 4. immersive 3D content
                - **解説**: 第4段落の冒頭で "Liquid Glass is designed to work harmoniously with immersive 3D content" と述べられています。特にvisionOSとの関連で、3Dコンテンツとの調和が強調されています。
                - **学習ポイント**: `work harmoniously with` (〜と調和して機能する), `cohesive experience` (一体感のある体験), `the line is blurred` (境界線が曖昧になる) といった表現は、異なる技術間の連携や統合を説明する際に役立ちます。
                """,
                audioFileName: "reading_test_wwdc2025_liquid_glass",
                conversationScript: nil
            ),
            Question(
                type: .matching,
                passage: """
                The following passage is an excerpt from a guide on best practices for iOS application architecture.
                
                Section A
                A fundamental principle in creating scalable and maintainable applications is the separation of concerns. This architectural pattern isolates the application's domain logic and state from the presentation layer. In this model, a specific component, often called a ViewModel, acts as an intermediary. It prepares data from the model for the view, handles user interactions, and manages the view's state. By doing so, it allows the view to be a passive element, merely reflecting the state provided by the ViewModel. This decoupling simplifies testing, as the view logic can be validated independently of the UI.
                
                Section B
                As applications grow in complexity, managing the flow between different screens can become a significant challenge, often leading to monolithic and tightly-coupled ViewControllers. To address this, a dedicated object can be introduced to encapsulate all navigation logic. This object is responsible for creating and configuring view controllers and managing the presentation sequence, such as pushing a new view or presenting a modal. By centralizing this responsibility, it removes navigational duties from the ViewControllers themselves, making them more reusable and focused on their primary role of displaying content. This approach greatly improves the overall structure and testability of the app's user flow.
                
                Section C
                Modern applications frequently need to fetch data from multiple sources, such as a remote server via a network request or a local database for offline access. A robust architectural solution is to introduce an abstraction layer that mediates between the data sources and the rest of the application. This layer, often implemented as a set of objects, provides a clean and consistent API for data retrieval and storage operations. It hides the underlying complexity of data fetching and caching logic, allowing other components, like ViewModels, to request data without needing to know its origin. This simplifies data management and enhances modularity.
                
                Section D
                To build a flexible and loosely-coupled system, it is crucial to manage how components acquire their external dependencies. Instead of allowing objects to create their own dependencies internally, these dependencies should be provided from an external source. This practice, known as inversion of control, allows for dependencies to be easily swapped, which is particularly beneficial for testing. For example, a real network service can be replaced with a mock implementation during unit tests. This approach not inverts the responsibility for object creation but also makes the relationships and requirements between different components explicit and clear.
                """,
                questionText: """
                Instructions: The reading passage has four sections, A-D. Choose the correct heading for each section from the list of headings below.
                
                List of Headings
                i.   Managing data sources with an abstraction layer
                ii.  The benefits of optimizing database queries
                iii. Centralizing application flow control
                iv.  Strategies for effective UI testing
                v.   Providing objects with their external requirements
                vi.  Decoupling state management from the user interface
                vii. Improving performance with background threads
                
                Match each section with the appropriate heading:
                Section A: ___
                Section B: ___
                Section C: ___
                Section D: ___
                """,
                options: nil,
                correctAnswer: "Section A: vi\nSection B: iii\nSection C: i\nSection D: v",
                japaneseTranslation: """
                **パッセージ日本語訳**

                以下の文章は、iOSアプリケーションアーキテクチャのベストプラクティスに関するガイドからの抜粋です。

                セクションA
                スケーラブルで保守性の高いアプリケーションを作成するための基本原則は、関心の分離です。このアーキテクチャパターンは、アプリケーションのドメインロジックと状態をプレゼンテーション層から分離します。このモデルでは、しばしばViewModelと呼ばれる特定のコンポーネントが仲介役として機能します。それはビューのためにモデルからデータを準備し、ユーザーインタラクションを処理し、ビューの状態を管理します。そうすることで、ビューはViewModelによって提供された状態を単に反映するだけの受動的な要素になることができます。この分離により、ビューのロジックをUIとは独立して検証できるため、テストが簡素化されます。

                セクションB
                アプリケーションが複雑になるにつれて、異なる画面間のフローを管理することは大きな課題となり、しばしば巨大で密結合なViewControllerを生み出すことにつながります。これに対処するため、すべてのナビゲーションロジックをカプセル化する専用のオブジェクトを導入することができます。このオブジェクトは、ビューコントローラの作成と設定、および新しいビューをプッシュしたりモーダルを表示したりといった表示シーケンスの管理を担当します。この責務を一元化することで、ViewController自身からナビゲーションの責務を取り除き、より再利用可能で、コンテンツ表示という主要な役割に集中させることができます。このアプローチは、アプリのユーザーフロー全体の構造とテスト可能性を大幅に向上させます。

                セクションC
                現代のアプリケーションは、ネットワークリクエストを介したリモートサーバーや、オフラインアクセスのためのローカルデータベースなど、複数のソースからデータを取得する必要が頻繁にあります。堅牢なアーキテクチャ上の解決策は、データソースとアプリケーションの他の部分との間を仲介する抽象化レイヤーを導入することです。このレイヤーは、しばしばオブジェクトのセットとして実装され、データ取得およびストレージ操作のためのクリーンで一貫性のあるAPIを提供します。それはデータ取得とキャッシングロジックの根底にある複雑さを隠蔽し、ViewModelsのような他のコンポーネントがデータの出所を知る必要なくデータを要求できるようにします。これにより、データ管理が簡素化され、モジュール性が向上します。

                セクションD
                柔軟で疎結合なシステムを構築するためには、コンポーネントが外部の依存関係をどのように取得するかを管理することが不可欠です。オブジェクトが内部で自身の依存関係を作成することを許可する代わりに、これらの依存関係は外部ソースから提供されるべきです。この制御の反転として知られる実践は、依存関係を簡単に交換可能にすることを可能にし、これはテストに特に有益です。例えば、実際のネットワークサービスを単体テスト中にモック実装に置き換えることができます。このアプローチは、オブジェクト作成の責任を反転させるだけでなく、異なるコンポーネント間の関係と要件を明示的かつ明確にします。

                **質問日本語訳**

                指示：このリーディングパッセージにはAからDまでの4つのセクションがあります。以下の見出しのリストから各セクションに最も適切な見出しを選びなさい。

                見出しのリスト
                i.   抽象化レイヤーによるデータソースの管理
                ii.  データベースクエリ最適化の利点
                iii. アプリケーションのフロー制御の一元化
                iv.  効果的なUIテストのための戦略
                v.   オブジェクトへの外部要件の提供
                vi.  ユーザーインターフェースからの状態管理の分離
                vii. バックグラウンドスレッドによるパフォーマンス向上

                各セクションと適切な見出しを一致させなさい：
                セクションA： ___
                セクションB： ___
                セクションC： ___
                セクションD： ___
                """,
                explanation: """
                ### Section A: vi (Decoupling state management from the user interface)
                - **解説**: セクションAは、ViewModelが状態(state)とロジックをUI(view)から分離するMVVMパターンについて説明しています。見出しviの`Decoupling`（分離）、`state management`（状態管理）、`user interface`が、パッセージの`separation of concerns`、`isolates ... state from the presentation layer`という内容と完全に一致します。
                - **学習ポイント**: `separation of concerns` (関心の分離), `decoupling` (分離、疎結合化), `intermediary` (仲介役) はアーキテクチャ設計における最重要語彙です。

                ### Section B: iii (Centralizing application flow control)
                - **解説**: セクションBは、Coordinatorパターンを用いてナビゲーションロジックを一元化することを説明しています。見出しiiiの`Centralizing`（一元化）と`application flow control`（アプリのフロー制御）が、パッセージの`dedicated object to encapsulate all navigation logic`や`centralizing this responsibility`という記述の要点を的確に捉えています。
                - **学習ポイント**: `encapsulate` (カプセル化する), `monolithic` (一枚岩の、巨大な), `centralize` (一元化する) は、複雑な処理を整理する文脈で頻出します。

                ### Section C: i (Managing data sources with an abstraction layer)
                - **解説**: セクションCは、Repositoryパターンを用いてネットワークやローカルDBといった複数のデータソースを抽象化レイヤーで管理する方法を述べています。見出しiの`Managing data sources`と`abstraction layer`が、パッセージの`fetch data from multiple sources`や`introduce an abstraction layer`と直接対応しています。
                - **学習ポイント**: `abstraction layer` (抽象化レイヤー), `mediate` (仲介する), `underlying complexity` (根底にある複雑さ) は、API設計やデータ管理の議論で重要です。

                ### Section D: v (Providing objects with their external requirements)
                - **解説**: セクションDは、Dependency Injection (依存性の注入) について説明しています。オブジェクトが必要とする依存関係（`external requirements`）を外部から与える（`Providing`）という概念が見出しvで表現されています。パッセージ内の`dependencies should be provided from an external source`がこの見出しを裏付けています。
                - **学習ポイント**: `dependency` (依存関係), `inversion of control` (制御の反転), `loosely-coupled` (疎結合) といった用語は、柔軟でテスト可能なコードを書く上で必須の概念です。

                ### ダミーの見出しについて
                - **ii. The benefits of optimizing database queries**: データソースに触れていますが、「クエリの最適化」という具体的なパフォーマンスの話はしていません。
                - **iv. Strategies for effective UI testing**: テストの容易さには触れていますが、主題はUIテストの「戦略」ではありません。
                - **vii. Improving performance with background threads**: パフォーマンスに関する言及はなく、スレッドの話も出てきません。
                """,
                audioFileName: "reading_test3_q2",
                conversationScript: nil
            ),
            Question(
                type: .multipleChoice,
                passage: """
                The rapid rise of generative AI has reshaped user expectations for intelligent features in modern applications. In response, Apple introduced the Foundation Models framework, a developer toolkit that enables on-device access to carefully optimized large language models (LLMs) and diffusion models. This initiative highlights Apple's strategic emphasis on privacy-preserving, low-latency, and responsive AI by running inference locally, instead of relying solely on remote cloud services. While cloud-based AI requires constant connectivity and processes data on external servers, the Foundation Models framework empowers developers to build features that are secure, efficient, and available even offline, ensuring a seamless user experience.

                At its core, the Foundation Models framework provides a streamlined API for running inference with a curated set of models tailored for Apple silicon. These models are designed to fully utilize the Neural Engine and other hardware accelerators, delivering capabilities like text generation, summarization, question answering, and image creation with efficient power usage. A key architectural technique is model quantization, which reduces memory and compute demands with minimal loss of accuracy. Such optimizations are essential to fitting advanced AI within the constraints of mobile devices, making powerful generative capabilities broadly accessible across Apple's ecosystem.

                For developers, integration is intentionally straightforward. The framework abstracts away much of the complexity of model management and execution. With just a few lines of code, developers can initialize a model, set parameters, and request results through a simple asynchronous API. For example, generating a text summary from a long article can be done by loading a pre-trained summarization model and passing the text to its prediction method. This ease of use lowers the barrier to entry for AI adoption, enabling developers to focus on crafting compelling user experiences rather than managing machine learning infrastructure.

                Importantly, choosing between on-device and cloud-based AI is not an either-or decision, but one of strategic trade-offs. The Foundation Models framework excels where privacy, low latency, and offline functionality are critical—for instance, real-time text suggestions or personalized content. By contrast, cloud solutions from providers such as OpenAI or Google may offer access to larger, domain-specific models for more demanding tasks. In practice, a hybrid approach often works best: handling sensitive or time-critical features locally, while offloading compute-intensive workloads to the cloud. This balance maximizes both performance and flexibility.
                """,
                questionText: """
                Instructions: Choose the correct letter, A, B, C, or D.
                
                1. What is the main purpose of this passage?
                A. To argue that on-device AI is superior to cloud-based AI.
                B. To provide a technical overview and practical guidance on using Apple's Foundation Models framework.
                C. To announce the new hardware requirements for running generative AI on iOS.
                D. To compare the performance of various large language models on the market.
                
                2. According to the passage, what is a key benefit of model quantization?
                A. It increases the theoretical accuracy of the AI models.
                B. It allows models to run efficiently on mobile hardware.
                C. It enables models to connect to cloud-based services.
                D. It helps developers write machine learning code faster.
                
                3. The passage contrasts the Foundation Models framework with cloud-based AI to highlight...
                A. the higher cost associated with on-device processing.
                B. the framework's advantages in terms of privacy and offline capability.
                C. the limited range of features available in on-device models.
                D. the necessity of the Neural Engine for any AI task.
                
                4. What can be inferred from the passage as a recommendation for developers?
                A. They should always prefer using the Foundation Models framework for all AI features.
                B. They should exclusively use cloud APIs for the most powerful AI capabilities.
                C. They should evaluate their app's specific needs to choose the right AI approach, potentially combining both.
                D. They should wait for Apple to release larger models before adopting the framework.
                """,
                options: nil,
                correctAnswer: "1. B\n2. B\n3. B\n4. C",
                japaneseTranslation: """
                **パッセージ日本語訳**

                生成AIの急速な普及は、現代アプリにおけるインテリジェント機能に対するユーザーの期待を一変させました。これに応じてAppleはFoundation Modelsフレームワークを導入し、厳選された大規模言語モデル（LLM）や拡散モデルをオンデバイスで利用できるようにしました。この取り組みは、リモートのクラウドサービスに依存せず、ローカルで推論を実行することで、プライバシー保護・低遅延・応答性を重視するというAppleの戦略を明確に示しています。クラウドベースのAIが常時接続と外部サーバーでの処理を必要とするのに対し、このフレームワークはセキュアかつ効率的でオフラインでも利用可能な機能を開発者に提供し、シームレスなユーザー体験を実現します。

                Foundation Modelsフレームワークの中核は、Appleシリコンに最適化されたモデル群を使った推論を提供する合理化されたAPIです。これらのモデルはNeural Engineや他のハードウェアアクセラレータを活用するよう設計されており、効率的な電力使用でテキスト生成・要約・質疑応答・画像生成といった機能を実現します。重要な技術としてモデル量子化があり、精度を大きく損なうことなくメモリや計算資源を削減します。こうした最適化は、モバイルデバイスの制約内で高度なAIを展開するために不可欠であり、Appleの幅広いデバイスに強力な生成AIを普及させます。

                開発者にとって、このフレームワークの統合は非常に簡単です。モデル管理や実行の複雑さは抽象化されており、数行のコードでモデルを初期化し、パラメータを設定し、非同期APIを通じて結果を得られます。例えば、長文記事の要約は、事前学習済みの要約モデルを読み込み、テキストを予測メソッドに渡すだけで実行可能です。この使いやすさはAI導入の参入障壁を大きく下げ、開発者がMLインフラの管理ではなく魅力的なユーザー体験の設計に集中できるようにします。

                重要なのは、オンデバイスAIとクラウドベースAIの選択は二者択一ではなく、戦略的なトレードオフを伴うという点です。Foundation Modelsフレームワークは、リアルタイムのテキスト提案やパーソナライズされた生成など、プライバシー・低遅延・オフライン利用が重要な場面で優れています。一方で、OpenAIやGoogleなどのクラウドソリューションは、より大規模で特定領域に特化したモデルを提供し、より計算負荷の高いタスクに対応できます。実際には、機密性や即応性が必要な機能をローカルで処理し、計算負荷の大きな処理をクラウドに任せるハイブリッド型が、性能と柔軟性を最大化する現実的な解となります。
                """,
                explanation: """
                ### 1. What is the main purpose of this passage?
                - **正解: B**. この文章は、Foundation Modelsフレームワークが何であるか（第1, 2段落）、どう使うか（第3段落）、そしていつ使うべきか（第4段落）を説明しており、技術的な概要と実践的なガイダンスを提供しています。
                - **Aの解説**: 文章は両方のアプローチの利点とトレードオフを提示しており、一方的に「優れている」とは主張していません。
                - **Cの解説**: Neural Engineへの言及はありますが、新しい「要件」を発表するものではありません。
                - **Dの解説**: Appleのフレームワークに焦点を当てており、市場の様々なLLMのパフォーマンス比較は行っていません。
                - **学習ポイント**: `main purpose`を問う問題は、各段落の要旨を掴み、全体の流れを理解することが重要です。

                ### 2. According to the passage, what is a key benefit of model quantization?
                - **正解: B**. 第2段落に「reduces memory and compute demands with minimal loss of accuracy」とあり、モバイルハードウェアの制約内で効率的に動作させるための重要な最適化であることがわかります。
                - **Aの解説**: 精度を「大幅に損なうことなく」とあり、向上させるとは書かれていません。
                - **Cの解説**: 量子化はオンデバイス処理の最適化技術であり、クラウド接続とは関係ありません。
                - **Dの解説**: 開発者のコーディング速度ではなく、モデルの実行効率に関する技術です。
                - **学習ポイント**: `quantization`, `memory`, `compute demands`, `mobile constraints` はAI/MLの基盤技術理解で重要なキーワードです。

                ### 3. The passage contrasts the Foundation Models framework with cloud-based AI to highlight...
                - **正解: B**. 第1段落と第4段落で、オンデバイス処理の利点として「privacy」「offline」「low latency」を挙げてクラウドと比較しており、これが対比の主目的です。
                - **Aの解説**: コストに関する言及はありません。
                - **Cの解説**: クラウドの方がより強力なモデルにアクセスできると書かれていますが、オンデバイスの制約を「強調」するのが目的ではありません。
                - **Dの解説**: Neural Engineは利点の一部ですが、クラウドとの対比の中心的論点ではありません。

                ### 4. What can be inferred from the passage as a recommendation for developers?
                - **正解: C**. 第4段落で「a hybrid approach … often works best」と述べられており、ユースケースに応じて両者を組み合わせるのが最適とされています。
                - **Aの解説**: すべての場面でオンデバイスを優先せよ、とは書かれていません。
                - **Bの解説**: クラウドのみを使え、という推奨はされていません。
                - **Dの解説**: Appleが将来大規模モデルを出すまで待つべき、とも書かれていません。
                - **学習ポイント**: inference questions では「直接は書かれていないが、文脈から導ける」答えを選ぶ訓練が重要です。
                """,
                audioFileName: "reading_test3_q3",
                conversationScript: nil
            )
        ],
        description: "Reading Test 3"
    )
    
    static let allTests: [Test] = [test1, test2, test3]
} 