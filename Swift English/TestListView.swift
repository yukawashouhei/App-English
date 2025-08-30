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
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            // Header
            VStack(spacing: 10) {
                Image(systemName: skillType.icon)
                    .font(.system(size: 50))
                    .foregroundStyle(.blue)
                
                Text(skillType.rawValue)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.primary)
            }
            .padding(.top, 20)
            .padding(.bottom, 30)
            
            // Test List
            ScrollView {
                LazyVStack(spacing: 16) {
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
        .navigationTitle(skillType.rawValue)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            loadTests()
        }
    }
    
    private func loadTests() {
        switch skillType {
        case .reading:
            tests = ReadingTests.allTests
        case .listening:
            tests = ListeningTests.allTests
        case .speaking:
            tests = SpeakingTests.allTests
        case .writing:
            tests = WritingTests.allTests
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
                    .foregroundStyle(.primary)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.blue)
                    .font(.system(size: 16, weight: .medium))
            }
            
            Text(test.description)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.leading)
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
    NavigationStack {
        TestListView(skillType: .reading)
    }
} 