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
                """,
                explanation: """
                この問題は、iOSエンジニアが日常的に受け取る「コードレビュー」のフィードバックを題材にしています。IELTSリーディングでは、文章の中から特定の情報を正確に抜き出す力が問われます。

                1. profile avatar icon: 問題文の "not correctly aligned"（正しく配置されていない）という表現が、本文の "not vertically centered"（垂直方向に中央揃えでない）に対応します。具体的なUI要素名を正確に抜き出すことが求められます。

                2. color value: "extract into a shared constant"（共有の定数として抽出する）という指示の対象となっているものを探します。本文では「この色の値(this color value)を〜」と明記されています。#007AFFやhex codeではなく、指示の対象を指す一般的な名称を選ぶのがポイントです。

                3. data fetching logic: 問題文の "moved to the ViewModel"（ViewModelに移動されるべき）という部分を探します。本文に「このデータ取得ロジック(this data fetching logic)は〜移動すべきです」とあります。

                4. Unit tests: "add some..."（いくつか〜を追加する）という依頼内容が問われています。本文の最後で「ユニットテスト(Unit tests)を追加してもらえますか？」と明確に書かれています。

                学習のポイント: Pull Request, refactor, constant, magic number, MVVM, Unit tests といった単語は、英語圏での開発業務に必須の語彙です。これらの単語を知っていると、文章の意図を素早く正確に理解できます。
                """,
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
                audioFileName: nil
            )
        ],
        description: "Reading Test 3"
    )
    
    static let allTests: [Test] = [test1, test2, test3]
} 