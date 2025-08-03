//
//  TestListView.swift
//  Swift English
//
//  Created by 湯川昇平 on 2025/08/02.
//

import SwiftUI

struct TestListView: View {
    let skillType: SkillType
    @State private var tests: [Test] = []
    
    var body: some View {
        VStack {
            // Header
            VStack(spacing: 10) {
                Image(systemName: skillType.icon)
                    .font(.system(size: 50))
                    .foregroundColor(.blue)
                
                Text(skillType.rawValue)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                
                Text("英語テスト for iOS Engineer")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding(.top, 20)
            .padding(.bottom, 30)
            
            // Test List
            ScrollView {
                LazyVStack(spacing: 15) {
                    ForEach(tests) { test in
                        NavigationLink(destination: QuestionView(test: test)) {
                            TestCard(test: test)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding(.horizontal, 20)
            }
            
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(false)
        .onAppear {
            loadTests()
        }
    }
    
    private func loadTests() {
        // Load sample tests based on skill type
        switch skillType {
        case .reading:
            tests = [
                Test.sampleReadingTest,
                Test.sampleReadingTest2,
                Test.sampleReadingTest3
            ]
        case .listening:
            tests = [
                Test.sampleListeningTest,
                Test.sampleListeningTest2,
                Test.sampleListeningTest3
            ]
        case .speaking:
            tests = [
                Test.sampleSpeakingTest,
                Test.sampleSpeakingTest2,
                Test.sampleSpeakingTest3
            ]
        case .writing:
            tests = [
                Test.sampleWritingTest,
                Test.sampleWritingTest2,
                Test.sampleWritingTest3
            ]
        }
    }
}

struct TestCard: View {
    let test: Test
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text(test.title)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.blue)
                    .font(.system(size: 16, weight: .medium))
            }
            
            Text(test.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.leading)
            
            HStack {
                Label("\(test.questions.count) 問題", systemImage: "questionmark.circle")
                    .font(.caption)
                    .foregroundColor(.blue)
                
                Spacer()
                
                Text("約15分")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding(16)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(color: .gray.opacity(0.2), radius: 8, x: 0, y: 2)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray.opacity(0.1), lineWidth: 1)
        )
    }
}

#Preview {
    NavigationView {
        TestListView(skillType: .reading)
    }
} 