//
//  Models.swift
//  Swift English
//
//  Created by 湯川昇平 on 2025/08/02.
//

import Foundation

enum SkillType: String, CaseIterable, Codable {
    case reading = "Reading"
    case listening = "Listening"
    case speaking = "Speaking"
    case writing = "Writing"
    
    var icon: String {
        switch self {
        case .reading: return "doc.text"
        case .listening: return "headphones"
        case .speaking: return "mic"
        case .writing: return "square.and.pencil"
        }
    }
}

enum QuestionType: Codable {
    case shortAnswer
    case multipleChoice
    case matching
    case formCompletion
    case noteCompletion
    case essay
}

struct Test: Identifiable, Codable {
    let id = UUID()
    let title: String
    let skillType: SkillType
    let questions: [Question]
    let description: String
}

struct Question: Identifiable, Codable {
    let id = UUID()
    let type: QuestionType
    let passage: String?
    let questionText: String
    let options: [String]?
    let correctAnswer: String
    let japaneseTranslation: String
    let explanation: String
    let audioFileName: String?
} 