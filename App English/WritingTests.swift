//
//  WritingTests.swift
//  App English
//
//  Created by 湯川昇平 on 2025/08/02.
//

import Foundation

struct WritingTests {
    static let test1 = Test(
        title: "Test 1",
        skillType: .writing,
        questions: [
            Question(
                type: .essay,
                passage: nil,
                questionText: """
                形式: 与えられた状況に基づき、指定された3つの要点を含んだ150語以上の手紙を書きます。今回は、上司に許可と支援を求める「フォーマル」な手紙です。

                Question

                You are an iOS engineer and you want to attend a well-known international developer conference next month. You believe it will be very beneficial for your work and for the company.

                Write a letter to your manager to request permission and financial support to attend the conference. In your letter:
                • state which conference you want to attend and why
                • explain how attending will benefit your team and the company
                • outline the estimated costs and the support you are requesting

                Write at least 150 words. You do not need to write any addresses.
                Begin your letter as follows: Dear [Manager's Name],
                """,
                options: nil,
                correctAnswer: """
                Dear Mr. Smith,

                I am writing to formally request your permission and company sponsorship to attend the upcoming Worldwide Developer Conference (WWDC) in California next month. As Apple's official annual conference, it is the most important event for any serious iOS engineer to learn about the future direction of the platform.

                Attending WWDC would be an invaluable opportunity. I would be able to participate in technical sessions and labs hosted by Apple engineers, gaining direct insights into the upcoming changes in iOS 19 and Swift. This knowledge would be directly applicable to our current and future projects, helping us to build more modern and efficient applications. Upon my return, I would prepare a detailed report and a presentation to share what I have learned with the entire mobile development team.

                The primary expenses would be the conference ticket, return flights to California, and accommodation for the week. I have researched the approximate costs, which I can provide in a separate document. I would be very grateful if the company could consider covering these costs as a professional development investment.

                Thank you for considering my request. I look forward to discussing this with you further.

                Yours sincerely,
                Kaito Hoshino

                (188 words)
                """,
                japaneseTranslation: """
                問題

                あなたはiOSエンジニアで、来月開催される有名な国際開発者会議に参加したいと考えています。その会議は、あなたの仕事と会社にとって非常に有益であると信じています。

                その会議への参加許可と金銭的支援を求める手紙を、あなたの上司に書きなさい。手紙には以下の内容を含めてください：
                • どの会議に参加したいか、そしてその理由
                • 会議への参加が、あなたのチームと会社にどのように利益をもたらすかの説明
                • 推定される費用と、あなたが求めている支援の概要

                150語以上で記述してください。住所を書く必要はありません。
                手紙の書き出しは以下のようにしてください： Dear [上司の名前],

                模範解答例（日本語訳）

                スミス様

                来月カリフォルニアで開催されます、来たるWorldwide Developer Conference (WWDC)への参加許可と、会社からのスポンサーシップを正式に申請いたしたく、筆を執っております。Appleの公式な年次カンファレンスとして、これは真剣なiOSエンジニアがプラットフォームの将来の方向性について学ぶための、最も重要なイベントです。

                WWDCへの参加は、非常に価値のある機会となります。Appleのエンジニアが主催する技術セッションやラボに参加することができ、iOS 19やSwiftの次期変更点に関する直接的な洞察を得ることができます。この知識は、私たちの現在および将来のプロジェクトに直接応用可能であり、よりモダンで効率的なアプリケーションを構築するのに役立ちます。帰国後には、学んだことをモバイル開発チーム全体で共有するため、詳細なレポートとプレゼンテーションを準備する所存です。

                主な費用は、カンファレンスのチケット代、カリフォルニアへの往復航空券、そして一週間の宿泊費となります。概算費用については調査済みで、別途資料として提出できます。会社がこれらの費用を専門能力開発への投資としてご検討いただけましたら、大変幸甚に存じます。

                ご検討いただき、ありがとうございます。この件について、さらにご相談できることを楽しみにしております。

                敬具
                星野カイト
                """,
                explanation: """
                このタスクでは、与えられた状況に対して、手紙形式で適切に情報を伝達する能力が試されます。評価されるのは以下の点です。
                1. 目的の達成: 手紙の目的（今回は「許可と支援を求めること」）を明確に伝えられているか。
                2. 要点の網羅: 問題文で指示された3つの要点をすべて含んでいるか。
                3. トーンと形式: 状況に合った適切なトーン（今回は上司へのフォーマルな形式）で書かれているか。
                4. 構成と語彙: 論理的な段落構成で、語彙や文法を正確に使えているか。

                模範解答の分析：なぜこの手紙は高評価なのか？

                この模範解答は、上記の評価基準をすべて満たした、優れたフォーマルレターの構成になっています。

                1. 構成：各段落が明確な役割を持つ
                この手紙は、問題文の3つの要点に沿って、明確に3つのボディパラグラフ（本文の段落）に分かれています。これは非常に効果的な構成です。

                • 挨拶 (Dear Mr. Smith,)
                    相手の名前が分かっている場合（Mr. Smith）、Dear [相手の姓],で始めるのがフォーマルな手紙の基本です。

                • 第1段落：要点1「どの会議に参加したいか、そしてその理由」
                    I am writing to formally request... という一文で、手紙の目的を冒頭に明確に伝えています。これはフォーマルな依頼文の定石です。
                    具体的な会議名 Worldwide Developer Conference (WWDC) と、その理由 most important event for any serious iOS engineer... を簡潔に説明し、1つ目の要点を完璧にカバーしています。

                • 第2段落：要点2「会社やチームへの利益」
                    この段落は、ただ「自分のため」ではなく、「会社のため」という視点を加えることで、リクエストの説得力を高めています。
                    gaining direct insights into the upcoming changes (次期変更への直接的な洞察を得る)
                    helping us to build more modern and efficient applications (よりモダンで効率的なアプリ構築に役立つ)
                    prepare a detailed report and a presentation to share what I have learned (学んだことをチーム全体に共有する)
                    このように、得た知識をチームに還元するという具体的な約束は、リクエストを承認してもらうための非常に強力なアピールになります。

                • 第3段落：要点3「費用と支援の要請」
                    The primary expenses would be... と、必要な費用を具体的にリストアップしています。
                    お金に関する依頼は、I would be very grateful if the company could consider... (会社が～をご検討いただけましたら大変幸甚に存じます) のように、丁寧で控えめな表現を使うのが適切です。
                    professional development investment (専門能力開発への投資) という言葉を選ぶことで、単なる「経費」ではなく、会社にとっても有益な「投資」であるという印象を与えています。

                • 結び (Yours sincerely,)
                    Dear Mr. Smith, のように相手の名前で始めた手紙は、Yours sincerely, で結ぶのがイギリス英語の正式なマナーです。これも覚えておくべき重要なポイントです。

                2. 語彙とトーン
                formally request (正式に要請する), invaluable opportunity (非常に価値のある機会), sponsorship (後援、資金援助), consideration (配慮) など、ビジネスシーンにふさわしいフォーマルな語彙が選ばれています。また、 contractions (I'm, it'sなど) を使わず、I am, it is と書くこともフォーマルさを保つ上で重要です。

                この模範解答のように、明確な目的、論理的な構成、説得力のある理由、そして丁寧な言葉遣いを意識することで、タスク1で高得点を狙うことができます。
                """,
                audioFileName: nil,
                conversationScript: nil
            ),
            Question(
                type: .essay,
                passage: nil,
                questionText: """
                形式: 与えられたトピックについて、自分の意見を理由や例と共に、250語以上のエッセイ形式で記述します。今回は、2つの対立する見解を論じ、自身の意見を述べる形式です。

                Question

                Many companies now allow their employees to work from home. Some argue that this arrangement increases productivity and improves work-life balance. Others believe that it harms teamwork and company culture.

                Discuss both these views and give your own opinion.

                Give reasons for your answer and include any relevant examples from your own knowledge or experience. Write at least 250 words.
                """,
                options: nil,
                correctAnswer: """
                The rise of remote work has become one of the most significant transformations in the modern professional landscape. While some champion it as the future of work, others raise valid concerns about its drawbacks. This essay will examine both the benefits of working from home, such as increased productivity, and the disadvantages, like its negative impact on collaboration, before presenting my own perspective.

                Proponents of remote work argue that it offers substantial advantages. The most frequently cited benefit is increased productivity. At home, employees often face fewer interruptions than in a busy office, allowing for longer periods of deep focus, which is particularly beneficial for tasks like software development. Furthermore, the elimination of daily commuting saves both time and money, contributing to a better work-life balance and higher job satisfaction. This flexibility can lead to a more motivated and loyal workforce.

                On the other hand, critics of remote work point to its detrimental effect on teamwork and corporate culture. Spontaneous collaboration, such as quick brainstorming sessions or casual conversations that can spark new ideas, is largely lost when team members are not physically present. Mentoring junior employees also becomes more challenging, as they miss out on learning through observation and informal interactions. Over time, a lack of regular face-to-face contact can weaken team cohesion and erode the sense of a shared company culture.

                In my opinion, while both arguments have merit, the optimal solution is not a complete shift to either model but a flexible hybrid approach. The ideal work arrangement depends on the nature of the task and the needs of the team. For tasks requiring deep concentration, remote work is highly effective. However, for activities that thrive on creative energy and collaboration, such as project kick-offs or design workshops, in-person interaction remains superior. Therefore, companies should aim to combine the focus of remote work with the collaborative benefits of being in the office to create the most effective and balanced working environment.

                (295 words)
                """,
                japaneseTranslation: """
                問題

                現在、多くの企業が従業員の在宅勤務を許可しています。この働き方は生産性を高め、ワークライフバランスを改善すると主張する人々がいます。一方で、チームワークや企業文化を損なうと信じる人々もいます。

                これら両方の見解について論じ、あなた自身の意見を述べなさい。

                自身の知識や経験から関連する例を挙げ、答えの理由を述べなさい。250語以上で記述してください。

                模範解答例（日本語訳）

                リモートワークの台頭は、現代の職業環境における最も大きな変革の一つとなりました。これを仕事の未来として支持する人々もいれば、その欠点について妥当な懸念を提起する人々もいます。このエッセイでは、生産性の向上といった在宅勤務の利点と、協力関係への悪影響といった欠点の両方を検証した上で、私自身の見解を提示します。

                リモートワークの支持者たちは、それが実質的な利点をもたらすと主張します。最も頻繁に挙げられる利点は、生産性の向上です。自宅では、従業員は忙しいオフィスよりも妨害が少ないことが多く、長時間の深い集中が可能となり、これは特にソフトウェア開発のようなタスクに有益です。さらに、日々の通勤がなくなることで時間と費用の両方が節約され、より良いワークライフバランスと高い仕事満足度に貢献します。この柔軟性は、より意欲的で忠実な労働力につながる可能性があります。

                一方、リモートワークの批判者たちは、チームワークや企業文化への有害な影響を指摘します。即席のブレインストーミングセッションや、新しいアイデアの火種となりうる気軽な会話といった、自発的な協力関係は、チームメンバーが物理的に存在しない場合にはほとんど失われます。若手従業員の指導もまた、観察や非公式な交流を通じた学習の機会を逃すため、より困難になります。長期的に見れば、定期的な対面での接触の欠如は、チームの一体感を弱め、共通の企業文化という感覚を侵食する可能性があります。

                私の意見では、両方の議論に長所があるものの、最適な解決策はどちらかのモデルへ完全に移行することではなく、柔軟なハイブリッドアプローチです。理想的な働き方は、タスクの性質とチームのニーズに依存します。深い集中を必要とするタスクには、リモートワークは非常に効果的です。しかし、プロジェクトのキックオフやデザインワークショップのように、創造的なエネルギーと協力によって活性化する活動には、対面での交流が依然として優れています。したがって、企業はリモートワークの集中力と、オフィスにいることの協力的な利点を組み合わせ、最も効果的でバランスの取れた労働環境を創造することを目指すべきです。
                """,
                explanation: """
                このタスクでは、与えられたトピックに対して、論理的で説得力のあるエッセイを250語以上で書く能力が評価されます。特にこの「両方の意見を論じ、自身の意見を述べる」形式の問題では、以下の点が重要になります。
                1. 課題への的確な応答: 対立する2つの見解を公平に論じ、さらに自分自身の明確な意見を述べる、という全ての要求に応えられているか。
                2. 一貫性と結束性: エッセイ全体が論理的な構成（序論・本論・結論）を持ち、段落や文がスムーズにつながっているか。
                3. 語彙力: トピックに合った、幅広く的確な語彙を使えているか。
                4. 文法の多様性と正確性: 様々な文の構造を、間違いなく使えるか。

                高得点を狙うためのエッセイ構成（4段落構成）

                この種類の問題に最も効果的なのが、以下の4段落構成です。この模範解答も、この「型」に沿って書かれています。

                • 第1段落：序論 (Introduction)
                    1. 背景の提示: 問題文のテーマを自分の言葉で言い換え、トピックを紹介します。（例：「リモートワークの台頭は大きな変革の一つとなりました…」）
                    2. 両論の提示: これから本文で、対立する2つの意見（メリットとデメリット）を論じることを示唆します。
                    3. 自分の意見の表明（任意）: この時点で自分の立場を簡潔に述べても良いですし、結論で詳しく述べても構いません。

                • 第2段落：ボディ1 (View 1 - 利点の議論)
                    問題文にある一方の見解（今回はリモートワークの利点）について、その理由や具体例を挙げて詳しく説明します。この段落は、完全に「賛成派」の視点に立って書きます。

                • 第3段落：ボディ2 (View 2 - 欠点の議論)
                    On the other hand などの接続詞を使い、もう一方の見解（今回はリモートワークの欠点）に焦点を当てます。この段落では「反対派」の視点から、その主張と理由を述べます。

                • 第4段落：結論 (Conclusion & Your Opinion)
                    1. 要約: ボディ1と2で述べた両論を簡潔にまとめます。
                    2. 自分の意見の明確化: In my opinion... (私の意見では…) と始め、自分の立場を明確に、そして力強く述べます。なぜそのように考えるのか、最終的な理由をここで展開します。

                模範解答の分析：なぜこのエッセイは高評価なのか？

                このエッセイは、上記の4段落構成を見事に体現しています。

                • 序論: リモートワークの議論を紹介し、「このエッセイでは両方の利点と欠点を検証し、私自身の見解を提示します」と、構成を明確に示しています。

                • ボディ1: Proponents of remote work argue that... (支持者たちは～と主張する) と始め、生産性向上やワークライフバランスといった利点だけを深掘りしています。

                • ボディ2: On the other hand, critics... point to... (一方、批判者たちは～を指摘する) と、明確に視点を切り替え、チームワークや企業文化への悪影響という欠点に焦点を当てています。

                • 結論: In my opinion... the optimal solution is... a flexible hybrid approach. (私の意見では、最適な解決策は柔軟なハイブリッドアプローチです) と、両論を踏まえた上で、単なる賛成・反対ではない、より成熟した独自の結論を提示しています。

                2. 論理的な議論の展開
                各段落の主張が、For example... や Furthermore... といった接続詞によって、具体的な理由や例で補強されています。これにより、エッセイ全体に説得力が生まれています。

                3. 高度な語彙
                significant transformations (大きな変革), proponents (支持者), detrimental effect (有害な影響), spontaneous collaboration (自発的な協力), team cohesion (チームの一体感), optimal solution (最適な解決策) など、テーマに合ったアカデミックな語彙が効果的に使われており、文章のレベルを引き上げています。

                このように、明確な構成の「型」を持ち、各段落でその役割に集中し、適切な接続詞と語彙を使って論理的に主張を展開することが、タスク2で高得点を獲得するための鍵となります。
                """,
                audioFileName: nil,
                conversationScript: nil
            )
        ],
        description: "Writing Test 1"
    )
    
    static let test2 = Test(
        title: "Test 2",
        skillType: .writing,
        questions: [
            Question(
                type: .essay,
                passage: nil,
                questionText: """
                形式: 与えられた状況に基づき、指定された3つの要点を含んだ150語以上の手紙を書きます。今回は、エンジニアリングマネージャーへの「フォーマル」な提案の手紙です。

                Question

                You are an iOS developer on a team where the computers are old and slow. This is affecting your team's productivity.

                Write a letter to your manager, Ms. Evans. In your letter:
                • explain the problems the development team is currently facing
                • suggest a solution to these problems
                • outline the expected benefits for the team and the company

                Write at least 150 words. You do not need to write any addresses.
                Begin your letter as follows: Dear Ms. Evans,
                """,
                options: nil,
                correctAnswer: """
                Dear Ms. Evans,

                I am writing to formally propose an essential upgrade to the hardware used by the iOS development team. Our current iMacs are several years old and are now struggling to keep up with the demands of modern iOS development.

                Specifically, the team is experiencing significant slowdowns in Xcode build times, which leads to considerable wasted time each day. Furthermore, crucial tools like the SwiftUI Previews and the iOS Simulator frequently become unresponsive. These performance bottlenecks not only disrupt our workflow but also hinder our ability to iterate on new features efficiently.

                To address these issues, I strongly recommend that we upgrade the entire team's machines to the new M-series MacBook Pros. These computers are specifically engineered for high-performance development tasks and would resolve our current performance problems.

                The benefits of this investment would be substantial. Most importantly, it would lead to a dramatic increase in our team's productivity by minimizing waiting times. This, in turn, would accelerate our development cycles and allow for more rigorous testing, resulting in higher-quality features. I believe this upgrade is a crucial step for improving our team's efficiency and morale.

                I would be grateful if we could discuss this proposal at your earliest convenience.

                Yours sincerely,

                [Your Name]

                (193 words)
                """,
                japaneseTranslation: """
                ## 問題

                あなたはiOS開発チームの一員ですが、チームのコンピューターは古くて遅く、生産性に影響が出ています。

                **あなたの上司であるエバンスさん(Ms. Evans)に手紙を書いてください。手紙には以下の要点を含めてください：**
                • 開発チームが現在直面している問題を説明する
                • これらの問題に対する解決策を提案する
                • チームと会社にとって期待される利益を概説する

                **少なくとも150語で記述してください。住所を書く必要はありません。**
                **手紙の書き出しは以下のようにしてください: Dear Ms. Evans,**

                ## 模範解答例（日本語訳）

                エバンス様

                iOS開発チームが使用しているハードウェアの不可欠なアップグレードを正式に提案するため、筆を執っております。私たちの現在のiMacは数年前のものであり、現代のiOS開発の要求に応えるのに苦労しています。

                具体的には、チームはXcodeのビルド時間の大幅な遅延を経験しており、これが毎日かなりの時間の無駄につながっています。さらに、SwiftUIプレビューやiOSシミュレータのような重要なツールが頻繁に無反応になります。これらのパフォーマンスのボトルネックは、私たちのワークフローを妨げるだけでなく、新機能のイテレーションを効率的に行う能力をも阻害しています。

                これらの問題に対処するため、チーム全員のマシンを新しいMシリーズのMacBook Proにアップグレードすることを強く推奨します。これらのコンピュータは、高性能な開発タスクのために特別に設計されており、私たちの現在のパフォーマンス問題を解決するでしょう。

                この投資による利益は相当なものになるでしょう。最も重要なのは、待ち時間を最小限に抑えることで、チームの生産性が劇的に向上することです。これが、ひいては開発サイクルを加速させ、より厳密なテストを可能にし、結果としてより高品質な機能につながります。このアップグレードは、チームの効率と士気を向上させるための重要な一歩であると信じています。

                ご都合の良い時に、この提案についてご相談させていただけますと幸いです。

                敬具

                [あなたの名前]
                """,
                explanation: """
                このタスクでは、与えられた状況に対して、手紙形式で適切に情報を伝達する能力が試されます。評価されるのは以下の点です。
                1.  **目的の達成**: 手紙の目的（今回は「ハードウェアのアップグレード提案」）を明確に伝えられているか。
                2.  **要点の網羅**: 問題文で指示された3つの要点をすべて含んでいるか。
                3.  **トーンと形式**: 状況に合った適切なトーン（今回は上司へのフォーマルな形式）で書かれているか。
                4.  **構成と語彙**: 論理的な段落構成で、語彙や文法を正確に使えているか。

                ## 模範解答の分析：なぜこの手紙は高評価なのか？

                -   **明確な目的と構成**: 第1段落で「ハードウェアのアップグレードを提案するため (to formally propose an essential upgrade)」と手紙の目的を明確に述べています。その後の段落は、問題点、解決策、期待される効果という、指示された3つの要点に沿って明確に構成されています。
                -   **具体的で説得力のある問題提起**: 問題点を単に「遅い」と述べるのではなく、「Xcode build times」「SwiftUI Previews」「iOS Simulator」といった具体的なツール名を挙げ、「performance bottlenecks (パフォーマンスのボトルネック)」という専門用語を使うことで、問題の深刻さと専門性を効果的に伝えています。
                -   **フォーマルで丁寧な語彙と表現**: `I am writing to formally propose...` (〜を正式に提案するため筆を執っております)、`I strongly recommend that...` (〜を強く推奨します)、`The benefits would be substantial.` (利益は相当なものになるでしょう)、`I would be grateful if...` (〜していただけると幸いです) のような、ビジネスレターに適した丁寧でフォーマルな表現を一貫して使用しています。
                -   **ビジネス価値への言及**: 提案の利点を単なる「快適さ」に留めず、「productivity (生産性)」「accelerate our development cycles (開発サイクルの加速)」「higher-quality features (高品質な機能)」「efficiency and morale (効率と士気)」といった、会社やチームの利益に繋がる言葉で表現しており、説得力のあるビジネス提案となっています。
                """,
                audioFileName: "writing_test2_q1",
                conversationScript: nil
            ),
            Question(
                type: .essay,
                passage: nil,
                questionText: """
                形式: 与えられたトピックについて、自分の意見を理由や例と共に、250語以上のエッセイ形式で記述します。今回は、2つの対立する見解を論じ、自身の意見を述べる形式です。

                Question

                Some developers believe that the top priority in software development is to release features as quickly as possible to stay ahead of the competition. Others argue that maintaining high code quality is more important, even if it slows down the development process.

                Discuss both these views and give your own opinion.

                Give reasons for your answer and include any relevant examples from your own knowledge or experience. Write at least 250 words.
                """,
                options: nil,
                correctAnswer: """
                In the fast-paced world of mobile app development, a persistent debate exists between the need for rapid feature delivery and the imperative of maintaining high-quality code. While both perspectives have valid arguments, I firmly believe that prioritizing code quality is the more sustainable and ultimately more successful strategy in the long run.

                On the one hand, the argument for prioritizing development speed is compelling, particularly from a business standpoint. In a competitive market, being the first to introduce an innovative feature can be a significant advantage, capturing users and establishing market share. This "speed-to-market" approach often means taking shortcuts, such as omitting tests or writing less-than-perfect code, to meet aggressive deadlines. For a startup trying to validate a product idea with a Minimum Viable Product (MVP), this can be a justifiable tactic. The immediate goal is survival and user feedback, not architectural perfection.

                On the other hand, a disciplined focus on code quality offers profound long-term benefits. High-quality, well-documented code is fundamentally easier and cheaper to maintain. It reduces the likelihood of bugs, making the application more stable and reliable for users. Furthermore, it significantly improves developer productivity in the future. When new developers join a project, a clean codebase allows them to become productive much faster. Neglecting quality leads to an accumulation of "technical debt," where every new feature becomes progressively slower and more difficult to implement, eventually grinding development to a halt.

                In my opinion, while short-term speed can provide a temporary advantage, it is often a shortsighted strategy. The initial gains from a rapid release are frequently nullified by the extensive costs of fixing bugs and refactoring a fragile codebase later on. A sustainable development process should treat code quality not as an obstacle to speed, but as an enabler of it. By investing in practices like automated testing and regular refactoring, teams can maintain a healthy codebase that allows them to build and release new features both quickly and reliably over the long term.

                (298 words)
                """,
                japaneseTranslation: """
                ## 問題

                ソフトウェア開発における最優先事項は、競合他社に先んじるためにできるだけ速く機能をリリースすることだと信じる開発者もいます。一方で、たとえ開発プロセスが遅くなったとしても、高いコード品質を維持することの方が重要だと主張する人々もいます。

                **これら両方の見解を論じ、あなた自身の意見を述べなさい。**

                あなたの答えの理由を述べ、あなた自身の知識や経験から関連する例を挙げてください。少なくとも250語で記述してください。

                ## 模範解答例（日本語訳）

                ペースの速いモバイルアプリ開発の世界では、迅速な機能提供の必要性と、高品質なコードを維持するという責務との間で、絶え間ない議論が存在します。どちらの視点にも妥当な主張がありますが、私は、長期的にはコード品質を優先することが、より持続可能で、最終的により成功する戦略であると固く信じています。

                一方では、開発速度を優先するという主張は、特にビジネスの観点からは説得力があります。競争の激しい市場では、革新的な機能を最初に導入することが大きなアドバンテージとなり、ユーザーを獲得し市場シェアを確立することができます。この「市場投入までの速さ」を重視するアプローチは、厳しい締め切りに間に合わせるために、テストを省略したり、完璧とは言えないコードを書いたりといった近道をすることをしばしば意味します。実用最小限の製品（MVP）で製品アイデアを検証しようとするスタートアップにとって、これは正当化できる戦術かもしれません。当面の目標は、アーキテクチャの完璧さではなく、生存とユーザーからのフィードバックです。

                他方で、規律をもってコード品質に焦点を当てることは、深刻な長期的利益をもたらします。高品質で、よく文書化されたコードは、基本的に維持がより簡単で安価です。それはバグの可能性を減らし、アプリケーションをユーザーにとってより安定的で信頼性の高いものにします。さらに、将来の開発者の生産性を大幅に向上させます。新しい開発者がプロジェクトに参加したとき、クリーンなコードベースは彼らがずっと速く生産的になることを可能にします。品質を軽視することは「技術的負債」の蓄積につながり、新しい機能を追加するたびに開発が次第に遅く、困難になり、最終的には開発が停止してしまいます。

                私の意見では、短期的な速さは一時的な利点を提供するかもしれませんが、それはしばしば近視眼的な戦略です。迅速なリリースから得られる初期の利益は、後になって壊れやすいコードベースを修正し、リファクタリングするための莫大なコストによって無効にされることが頻繁にあります。持続可能な開発プロセスは、コード品質を速度の障害としてではなく、それを可能にするものとして扱うべきです。自動テストや定期的なリファクタリングといったプラクティスに投資することで、チームは長期間にわたって迅速かつ確実に新機能を構築し、リリースできる健全なコードベースを維持することができるのです。
                """,
                explanation: """
                このタスクでは、与えられたトピックに対して、論理的で説得力のあるエッセイを250語以上で書く能力が評価されます。特にこの「両方の意見を論じ、自身の意見を述べる」形式の問題では、以下の点が重要になります。
                1.  **課題への的確な応答**: 対立する2つの見解（開発速度 vs コード品質）を公平に論じ、さらに自分自身の明確な意見を述べる、という全ての要求に応えられているか。
                2.  **一貫性と結束性**: エッセイ全体が論理的な構成（序論・本論・結論）を持ち、段落や文がスムーズにつながっているか。
                3.  **語彙力**: トピックに合った、幅広く的確な語彙を使えているか。
                4.  **文法の多様性と正確性**: 様々な文の構造を、間違いなく使えるか。

                ## 高得点を狙うためのエッセイ構成（4段落構成）

                この種類の問題に最も効果的なのが、以下の4段落構成です。この模範解答も、この「型」に沿って書かれています。

                •   **第1段落：序論 (Introduction)**
                    1.  **背景の提示**: 問題文のテーマを自分の言葉で言い換え、トピックを紹介します。 (e.g., "In the fast-paced world of mobile app development, a persistent debate exists...")
                    2.  **両論の提示**: これから本文で、対立する2つの意見を論じることを示唆します。
                    3.  **自分の意見の表明**: 自身の立場を明確に述べます。 (e.g., "I firmly believe that prioritizing code quality is the more sustainable...")

                •   **第2段落：ボディ1 (View 1 - 速度優先の議論)**
                    `On the one hand` を使い、「速度」を優先する見解について、その理由（市場投入までの速さ）や具体例（MVPを開発するスタートアップ）を挙げて詳しく説明します。

                •   **第3段落：ボディ2 (View 2 - 品質優先の議論)**
                    `On the other hand` を使い、「品質」を優先する見解に焦点を当てます。その主張（保守性、安定性、生産性）と理由（技術的負債の危険性）を述べます。

                •   **第4段落：結論 (Conclusion & Your Opinion)**
                    1.  **要約**: ボディ1と2で述べた両論を簡潔にまとめます。
                    2.  **自分の意見の明確化**: `In my opinion...` と始め、序論で述べた自分の立場を、より力強く、そして最終的な理由と共に展開します。「品質は速度の障害ではなく、それを可能にするもの」という洞察で締めくくっています。

                ## 模範解答の分析：なぜこのエッセイは高評価なのか？

                -   **バランスの取れた議論**: 第2段落と第3段落で、対立する両方の見解を公平に、かつ説得力を持って論じています。一方の意見を不当に貶めることなく、それぞれの利点を客観的に説明しています。
                -   **明確な構成と接続詞**: `On the one hand`, `On the other hand`, `Furthermore`, `In my opinion` といった接続詞や句を効果的に使い、段落間や文間の論理的なつながりを明確に示しています。
                -   **高度で的確な語彙**: `persistent debate` (絶え間ない議論), `imperative` (責務), `compelling` (説得力のある), `sustainable` (持続可能な), `shortsighted` (近視眼的な), `nullified` (無効にされる) のような、議論を豊かにする高度な語彙を使用しています。
                -   **専門用語の適切な使用**: `speed-to-market` (市場投入までの速さ), `Minimum Viable Product (MVP)`, `technical debt` (技術的負債), `refactoring` (リファクタリング) といったiOS開発の文脈に合った専門用語を的確に使い、説得力を高めています。
                """,
                audioFileName: "writing_test2_q2",
                conversationScript: nil
            )
        ],
        description: "Writing Test 2"
    )
    
    static let allTests: [Test] = [test1, test2]
} 