//
//  OnboardingView.swift
//  App English
//
//  Created by Assistant on 2024
//

import SwiftUI

struct OnboardingView: View {
    @Binding var isPresented: Bool
    @State private var currentPage = 0
    
    private let onboardingPages = [
        OnboardingPage(
            title: "iOSアプリ開発に特化した英語学習を効率的に！",
            description: "リスニング、リーディング、スピーキング、ライティングの4技能を体系的に学習できます！",
            imageName: nil
        ),
        OnboardingPage(
            title: "手元のノートで学習",
            description: "問題を解く → 答え合わせ → 解説で理解を深める！",
            imageName: "OnboardingImage"
        ),
        OnboardingPage(
            title: "繰り返しで確実に上達！",
            description: "同じ問題を繰り返し解くことで、英語力が着実に向上します！",
            imageName: nil
        )
    ]
    
    var body: some View {
        ZStack {
            // 背景色
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                // スキップボタン
                HStack {
                    Spacer()
                    Button("スキップ") {
                        isPresented = false
                    }
                    .foregroundStyle(.secondary)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                }
                
                // ページコンテンツ
                TabView(selection: $currentPage) {
                    ForEach(0..<onboardingPages.count, id: \.self) { index in
                        OnboardingPageView(page: onboardingPages[index])
                            .tag(index)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .animation(.easeInOut(duration: 0.3), value: currentPage)
                
                // ページインジケーター
                HStack(spacing: 8) {
                    ForEach(0..<onboardingPages.count, id: \.self) { index in
                        Circle()
                            .fill(currentPage == index ? Color.accentColor : Color.secondary.opacity(0.3))
                            .frame(width: 8, height: 8)
                            .animation(.easeInOut(duration: 0.3), value: currentPage)
                    }
                }
                .padding(.bottom, 20)
                
                // Startボタン（最後のページのみ表示）- 固定位置で表示
                if currentPage == onboardingPages.count - 1 {
                    Button(action: {
                        isPresented = false
                    }) {
                        Text("Start")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.accentColor)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 30)
                    .transition(.opacity)
                    .animation(.easeInOut(duration: 0.5), value: currentPage)
                } else {
                    // Startボタンが表示されない場合のスペーサー（レイアウトを固定）
                    Spacer()
                        .frame(height: 80) // Startボタンと同じ高さ
                }
            }
        }
    }
}

struct OnboardingPageView: View {
    let page: OnboardingPage
    
    var body: some View {
        VStack(spacing: 30) {
            Spacer()
            
            // SwiftUIロゴ（1ページ目の場合のみ表示）
            if page.title.contains("iOSアプリ開発に特化") {
                Image(systemName: "swift")
                    .font(.system(size: 80))
                    .foregroundStyle(.blue)
                    .padding(.bottom, 20)
            }
            
            // 画像（存在する場合のみ表示）
            if let imageName = page.imageName {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 280, maxHeight: 280)
                    .padding(.horizontal, 20)
            }
            
            // テキストコンテンツ
            VStack(spacing: 16) {
                Text(page.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.primary)
                    .lineLimit(2)
                    .minimumScaleFactor(0.8)
                
                Text(page.description)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding(.horizontal, 40)
            
            Spacer()
        }
    }
}

struct OnboardingPage {
    let title: String
    let description: String
    let imageName: String?
}

#Preview {
    OnboardingView(isPresented: .constant(true))
} 
