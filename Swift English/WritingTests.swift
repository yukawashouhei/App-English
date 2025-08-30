//
//  WritingTests.swift
//  Swift English
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
        description: "Writing Task 1 & 2: Formal Letter and Essay - iOS Professional Context"
    )
    
    static let test2 = Test(
        title: "Test 2",
        skillType: .writing,
        questions: [
            Question(
                type: .essay,
                passage: nil,
                questionText: """
                形式: 与えられた状況に基づき、指定された要点を含んだ150語以上の手紙を書きます。
                
                Question
                
                [問題文は後で更新されます]
                
                Write a letter to [相手]. In your letter:
                • [要点1は後で更新されます]
                • [要点2は後で更新されます]
                • [要点3は後で更新されます]
                
                Write at least 150 words. You do not need to write any addresses.
                Begin your letter as follows: Dear [Name],
                """,
                options: nil,
                correctAnswer: "[模範解答1は後で更新されます]",
                japaneseTranslation: "[日本語訳は後で更新されます]",
                explanation: "[解説は後で更新されます]",
                audioFileName: "writing_test2_q1",
                conversationScript: nil
            ),
            Question(
                type: .essay,
                passage: nil,
                questionText: """
                形式: 与えられたトピックについて、250語以上のエッセイを書きます。
                
                Question
                
                [問題文は後で更新されます]
                
                Give reasons for your answer and include any relevant examples from your own knowledge or experience.
                
                Write at least 250 words.
                """,
                options: nil,
                correctAnswer: "[模範解答2は後で更新されます]",
                japaneseTranslation: "[日本語訳は後で更新されます]",
                explanation: "[解説は後で更新されます]",
                audioFileName: "writing_test2_q2",
                conversationScript: nil
            )
        ],
        description: "Writing Test 2: 問題内容は後で更新されます"
    )
    
    static let allTests: [Test] = [test1, test2]
} 