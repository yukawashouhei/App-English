//
//  QuestionView.swift
//  Swift English
//
//  Created by 湯川昇平 on 2025/08/02.
//

import SwiftUI
import AVFoundation

struct QuestionView: View {
    let test: Test
    @State private var currentQuestionIndex = 0
    @State private var showAnswer = false
    @State private var showTranslation = false
    @State private var showExplanation = false
    @State private var showConversationScript = false
    @State private var audioPlayer: AVAudioPlayer?
    @State private var isRecording = false
    @State private var audioRecorder: AVAudioRecorder?
    @State private var recordingURL: URL?
    @Environment(\.dismiss) private var dismiss
    
    private var currentQuestion: Question {
        guard currentQuestionIndex >= 0 && currentQuestionIndex < test.questions.count else {
            // フォールバック: 最初の問題を返すか、デフォルト問題を作成
            return test.questions.first ?? Question(
                type: .shortAnswer,
                passage: nil,
                questionText: "問題が見つかりません",
                options: nil,
                correctAnswer: "",
                japaneseTranslation: "問題が見つかりません",
                explanation: "エラーが発生しました",
                audioFileName: nil,
                conversationScript: nil
            )
        }
        return test.questions[currentQuestionIndex]
    }
    
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                VStack(spacing: 20) {
                    // Test info header
                    VStack(alignment: .leading, spacing: 8) {
                        Text(test.title)
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        Text("問題 \(currentQuestionIndex + 1) / \(test.questions.count)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .accessibilityLabel("Question \(currentQuestionIndex + 1) of \(test.questions.count)")
                            .accessibilityHint("Current question number in the test")
                    }
                    .padding(.horizontal)
                    .id("top") // スクロール位置のアンカー
                    
                    Divider()
                    
                    // Dynamic question content
                    QuestionContentView(
                        currentQuestion: currentQuestion,
                        test: test,
                        audioPlayer: $audioPlayer,
                        isRecording: $isRecording,
                        audioRecorder: $audioRecorder,
                        recordingURL: $recordingURL
                    )
                    
                    // Answer controls
                    VStack(spacing: 12) {
                        // Answer button
                        VStack(spacing: 8) {
                            Button(action: {
                                print("DEBUG: Answer button tapped for test: \(test.title), question: \(currentQuestionIndex + 1)")
                                print("DEBUG: showAnswer before toggle: \(showAnswer)")
                                showAnswer.toggle()
                                print("DEBUG: showAnswer after toggle: \(showAnswer)")
                            }) {
                                HStack {
                                    Label(test.skillType == .speaking ? "模範解答を見る" : "答えを見る", systemImage: "checkmark.bubble")
                                        .font(.headline)
                                        .foregroundColor(.green)
                                    
                                    Spacer()
                                    
                                    Image(systemName: showAnswer ? "chevron.up" : "chevron.down")
                                        .foregroundColor(.green)
                                }
                            }
                            .padding()
                            .background(Color.green.opacity(0.1))
                            .cornerRadius(12)
                            
                            if showAnswer {
                                VStack(alignment: .leading, spacing: 8) {
                                    Text("正解:")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.green)
                                    
                                    if currentQuestion.type == .formCompletion {
                                        VStack(alignment: .leading, spacing: 8) {
                                            ForEach(currentQuestion.correctAnswer.components(separatedBy: "\n"), id: \.self) { answer in
                                                Text(answer)
                                                    .font(.body)
                                                    .foregroundColor(.primary)
                                            }
                                        }
                                    } else {
                                        Text(currentQuestion.correctAnswer)
                                            .font(.body)
                                            .foregroundColor(.primary)
                                    }
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                                .background(Color.green.opacity(0.05))
                                .cornerRadius(12)
                            }
                        }
                        
                        // Translation button
                        VStack(spacing: 8) {
                            Button(action: {
                                print("DEBUG: Translation button tapped for test: \(test.title), question: \(currentQuestionIndex + 1)")
                                print("DEBUG: showTranslation before toggle: \(showTranslation)")
                                showTranslation.toggle()
                                print("DEBUG: showTranslation after toggle: \(showTranslation)")
                            }) {
                                HStack {
                                    Label("日本語訳を見る", systemImage: "translate")
                                        .font(.headline)
                                        .foregroundColor(.blue)
                                    
                                    Spacer()
                                    
                                    Image(systemName: showTranslation ? "chevron.up" : "chevron.down")
                                        .foregroundColor(.blue)
                                }
                            }
                            .padding()
                            .background(Color.blue.opacity(0.1))
                            .cornerRadius(12)
                            
                            if showTranslation {
                                VStack(alignment: .leading, spacing: 8) {
                                    Text("日本語訳:")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.blue)
                                    
                                    Text(currentQuestion.japaneseTranslation)
                                        .font(.body)
                                        .foregroundColor(.primary)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                                .background(Color.blue.opacity(0.05))
                                .cornerRadius(12)
                            }
                        }
                        
                        // Explanation button
                        VStack(spacing: 8) {
                            Button(action: {
                                print("DEBUG: Explanation button tapped for test: \(test.title), question: \(currentQuestionIndex + 1)")
                                print("DEBUG: showExplanation before toggle: \(showExplanation)")
                                showExplanation.toggle()
                                print("DEBUG: showExplanation after toggle: \(showExplanation)")
                            }) {
                                HStack {
                                    Label("解説を見る", systemImage: "lightbulb")
                                        .font(.headline)
                                        .foregroundColor(.orange)
                                    
                                    Spacer()
                                    
                                    Image(systemName: showExplanation ? "chevron.up" : "chevron.down")
                                        .foregroundColor(.orange)
                                }
                            }
                            .padding()
                            .background(Color.orange.opacity(0.1))
                            .cornerRadius(12)
                            
                            if showExplanation {
                                VStack(alignment: .leading, spacing: 8) {
                                    Text("解説:")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.orange)
                                    
                                    Text(currentQuestion.explanation)
                                        .font(.body)
                                        .foregroundColor(.primary)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                                .background(Color.orange.opacity(0.05))
                                .cornerRadius(12)
                            }
                        }
                        
                        // Conversation Script button (for listening questions with script)
                        if test.skillType == .listening, let script = currentQuestion.conversationScript {
                            VStack(spacing: 8) {
                                Button(action: {
                                    print("DEBUG: Conversation Script button tapped for test: \(test.title), question: \(currentQuestionIndex + 1)")
                                    print("DEBUG: showConversationScript before toggle: \(showConversationScript)")
                                    showConversationScript.toggle()
                                    print("DEBUG: showConversationScript after toggle: \(showConversationScript)")
                                }) {
                                    HStack {
                                        Label("会話スクリプトを見る", systemImage: "text.bubble")
                                            .font(.headline)
                                            .foregroundColor(.purple)
                                        
                                        Spacer()
                                        
                                        Image(systemName: showConversationScript ? "chevron.up" : "chevron.down")
                                            .foregroundColor(.purple)
                                    }
                                }
                                .padding()
                                .background(Color.purple.opacity(0.1))
                                .cornerRadius(12)
                                
                                if showConversationScript {
                                    VStack(alignment: .leading, spacing: 8) {
                                        Text("Conversation Script:")
                                            .font(.subheadline)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.purple)
                                        
                                        Text(script)
                                            .font(.body)
                                            .foregroundColor(.primary)
                                    }
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding()
                                    .background(Color.purple.opacity(0.05))
                                    .cornerRadius(12)
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                    
                    // Navigation buttons
                    HStack {
                        Button(action: {
                            if currentQuestionIndex > 0 {
                                currentQuestionIndex -= 1
                                resetAnswerStates()
                                proxy.scrollTo("top", anchor: .top) // 前の問題にスクロール
                            }
                        }) {
                            Label("前の問題", systemImage: "chevron.left")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.gray)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .disabled(currentQuestionIndex == 0)
                        .accessibilityLabel("Previous question")
                        .accessibilityHint("Go to the previous question")
                        
                        Button(action: {
                            if currentQuestionIndex < test.questions.count - 1 {
                                currentQuestionIndex += 1
                                resetAnswerStates()
                                proxy.scrollTo("top", anchor: .top) // 次の問題にスクロール
                            } else {
                                // Test completed - navigate back to previous screen
                                dismiss()
                            }
                        }) {
                            Label(currentQuestionIndex < test.questions.count - 1 ? "次の問題" : "完了", systemImage: currentQuestionIndex < test.questions.count - 1 ? "chevron.right" : "checkmark")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .accessibilityLabel(currentQuestionIndex == test.questions.count - 1 ? "Complete test" : "Next question")
                        .accessibilityHint(currentQuestionIndex == test.questions.count - 1 ? "Finish the test and return to menu" : "Go to the next question")
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 30)
                }
                .id(currentQuestionIndex)
            }
        }
        .navigationTitle(test.title)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            resetAnswerStates()
        }
    }
    
    private func previousQuestion() {
        withAnimation(nil) {
            if currentQuestionIndex > 0 {
                currentQuestionIndex -= 1
                resetAnswerStates()
            }
        }
    }
    
    private func nextQuestion() {
        withAnimation(nil) {
            if currentQuestionIndex < test.questions.count - 1 {
                currentQuestionIndex += 1
                resetAnswerStates()
            } else {
                // Test completed - navigate back to previous screen
                dismiss()
            }
        }
    }
    
    private func resetAnswerStates() {
        withAnimation(nil) {
            print("DEBUG: Resetting answer states for test: \(test.title), question: \(currentQuestionIndex + 1)")
            print("DEBUG: Before reset - showAnswer: \(showAnswer), showTranslation: \(showTranslation), showExplanation: \(showExplanation), showConversationScript: \(showConversationScript)")
            showAnswer = false
            showTranslation = false
            showExplanation = false
            showConversationScript = false
            print("DEBUG: After reset - all states should be false")
        }
    }
}

struct AudioControlsView: View {
    let audioFileName: String
    @Binding var audioPlayer: AVAudioPlayer?
    @State private var isPlaying = false
    @State private var currentTime: Double = 0
    @State private var duration: Double = 100
    @State private var progress: Double = 0
    @State private var progressTimer: Timer? // Timer参照を保持
    
    var body: some View {
        VStack(spacing: 16) {
            Text("音声再生")
                .font(.headline)
                .foregroundColor(.primary)
            
            VStack(spacing: 12) {
                // Progress bar
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text(formatTime(currentTime))
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                        Spacer()
                        
                        Text(formatTime(duration))
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    
                    ProgressView(value: progress)
                        .progressViewStyle(LinearProgressViewStyle(tint: .blue))
                }
                
                // Control buttons
                HStack(spacing: 30) {
                    Button(action: rewind) {
                        Image(systemName: "gobackward.15")
                            .font(.title2)
                            .foregroundColor(.blue)
                    }
                    
                    Button(action: togglePlayback) {
                        Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                    }
                    
                    Button(action: fastForward) {
                        Image(systemName: "goforward.15")
                            .font(.title2)
                            .foregroundColor(.blue)
                    }
                }
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(12)
        }
        .onAppear {
            setupAudio()
        }
        .onDisappear {
            // メモリリーク防止: Timer を確実にinvalidate
            stopTimer()
        }
    }
    
    private func setupAudio() {
        // Note: In a real app, you would load the audio file from bundle or network
        // For now, we'll just simulate the setup
        duration = 60.0 // Simulated duration
    }
    
    private func togglePlayback() {
        isPlaying.toggle()
        // Simulate playback
        if isPlaying {
            startProgressTimer()
        } else {
            stopTimer()
        }
    }
    
    private func rewind() {
        currentTime = max(0, currentTime - 15)
        progress = currentTime / duration
    }
    
    private func fastForward() {
        currentTime = min(duration, currentTime + 15)
        progress = currentTime / duration
    }
    
    private func startProgressTimer() {
        stopTimer() // 既存のTimerを停止
        progressTimer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            if isPlaying && currentTime < duration {
                currentTime += 0.1
                progress = currentTime / duration
            } else if currentTime >= duration {
                isPlaying = false
                stopTimer()
            } else if !isPlaying {
                stopTimer()
            }
        }
    }
    
    private func stopTimer() {
        progressTimer?.invalidate()
        progressTimer = nil
    }
    
    private func formatTime(_ time: Double) -> String {
        let minutes = Int(time) / 60
        let seconds = Int(time) % 60
        return String(format: "%d:%02d", minutes, seconds)
    }
}

struct RecordingControlsView: View {
    @Binding var isRecording: Bool
    @Binding var audioRecorder: AVAudioRecorder?
    @Binding var recordingURL: URL?
    @State private var recordingTime: Double = 0
    @State private var timer: Timer?
    
    var body: some View {
        VStack(spacing: 16) {
            Text("音声録音")
                .font(.headline)
                .foregroundColor(.primary)
            
            VStack(spacing: 12) {
                // Recording indicator and time
                if isRecording {
                    HStack {
                        Circle()
                            .fill(Color.red)
                            .frame(width: 12, height: 12)
                            .opacity(0.8)
                            .scaleEffect(1.2)
                            .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: isRecording)
                        
                        Text("録音中: \(formatTime(recordingTime))")
                            .font(.subheadline)
                            .foregroundColor(.red)
                    }
                } else {
                    Text("録音の準備ができました")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                // Record button
                Button(action: toggleRecording) {
                    Image(systemName: isRecording ? "stop.circle.fill" : "mic.circle.fill")
                        .font(.system(size: 60))
                        .foregroundColor(isRecording ? .red : .blue)
                }
                
                // Playback button (if recording exists)
                if recordingURL != nil && !isRecording {
                    Button(action: playRecording) {
                        Label("録音を再生", systemImage: "play.circle")
                            .font(.headline)
                            .foregroundColor(.green)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 8)
                            .background(Color.green.opacity(0.1))
                            .cornerRadius(8)
                    }
                }
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(12)
        }
    }
    
    private func toggleRecording() {
        if isRecording {
            stopRecording()
        } else {
            startRecording()
        }
    }
    
    private func startRecording() {
        // Note: In a real app, you would request microphone permission
        // and implement actual recording functionality
        isRecording = true
        recordingTime = 0
        
        // Simulate recording
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            recordingTime += 1
        }
        
        // Create a dummy recording URL
        recordingURL = FileManager.default.temporaryDirectory.appendingPathComponent("recording.m4a")
    }
    
    private func stopRecording() {
        isRecording = false
        timer?.invalidate()
        timer = nil
    }
    
    private func playRecording() {
        // Note: In a real app, you would implement audio playback
        print("Playing recording...")
    }
    
    private func formatTime(_ time: Double) -> String {
        let minutes = Int(time) / 60
        let seconds = Int(time) % 60
        return String(format: "%d:%02d", minutes, seconds)
    }
}

struct QuestionContentView: View {
    let currentQuestion: Question
    let test: Test
    @Binding var audioPlayer: AVAudioPlayer?
    @Binding var isRecording: Bool
    @Binding var audioRecorder: AVAudioRecorder?
    @Binding var recordingURL: URL?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // Audio controls for listening questions
            if test.skillType == .listening, let audioFileName = currentQuestion.audioFileName {
                AudioControlsView(
                    audioFileName: audioFileName,
                    audioPlayer: $audioPlayer
                )
                .padding(.horizontal)
            }
            
            // Form or Passage display
            if let passage = currentQuestion.passage {
                VStack(alignment: .leading, spacing: 12) {
                    if currentQuestion.type == .formCompletion {
                        Text("Questions")
                            .font(.headline)
                            .foregroundColor(.primary)
                        
                        FormCompletionView(passage: passage)
                    } else {
                        Text(test.skillType == .speaking ? "質問" : "本文")
                            .font(.headline)
                            .foregroundColor(.primary)
                        
                        Text(passage)
                            .font(.body)
                            .lineSpacing(6)
                            .foregroundColor(.primary)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(12)
                    }
                }
                .padding(.horizontal)
            }
            
            // Question text display (for speaking when no passage)
            if currentQuestion.passage == nil && !currentQuestion.questionText.isEmpty {
                VStack(alignment: .leading, spacing: 12) {
                    Text("質問")
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    Text(currentQuestion.questionText)
                        .font(.body)
                        .lineSpacing(6)
                        .foregroundColor(.primary)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(12)
                }
                .padding(.horizontal)
            }
            
            // Options (for multiple choice)
            if let options = currentQuestion.options {
                VStack(alignment: .leading, spacing: 8) {
                    Text("選択肢")
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    ForEach(Array(options.enumerated()), id: \.offset) { index, option in
                        HStack {
                            Text("\(Character(UnicodeScalar(65 + index)!))")
                                .font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .frame(width: 24, height: 24)
                                .background(Color.blue)
                                .clipShape(Circle())
                            
                            Text(option)
                                .font(.body)
                                .foregroundColor(.primary)
                            
                            Spacer()
                        }
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                    }
                }
                .padding(.horizontal)
            }
            
            // Recording controls for speaking questions
            if test.skillType == .speaking {
                RecordingControlsView(
                    isRecording: $isRecording,
                    audioRecorder: $audioRecorder,
                    recordingURL: $recordingURL
                )
                .padding(.horizontal)
            }
        }
    }
}

struct FormCompletionView: View {
    let passage: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Parse and display the form with proper formatting
            let lines = passage.components(separatedBy: "\n")
            
            ForEach(Array(lines.enumerated()), id: \.offset) { index, line in
                if line.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                    // Empty line
                    Text("")
                        .frame(height: 8)
                } else if line.contains("Instructions:") {
                    // Instructions
                    Text(line)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.orange)
                        .padding(.bottom, 4)
                } else if line.contains("Mobile Device Lab - Request Form") || line.contains("モバイルデバイスラボ - 貸出依頼書") {
                    // Form title
                    Text(line)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .padding(.bottom, 8)
                } else if line.contains("(") && line.contains(")") && line.contains("_") {
                    // Form field with blank
                    HStack {
                        if let colonIndex = line.firstIndex(of: ":") {
                            let beforeColon = String(line[..<colonIndex])
                            let afterColon = String(line[line.index(after: colonIndex)...])
                            
                            Text(beforeColon + ":")
                                .font(.body)
                                .foregroundColor(.primary)
                            
                            Text(afterColon)
                                .font(.body)
                                .foregroundColor(.blue)
                                .fontWeight(.medium)
                        } else {
                            Text(line)
                                .font(.body)
                                .foregroundColor(.blue)
                                .fontWeight(.medium)
                        }
                        
                        Spacer()
                    }
                } else if line.hasPrefix("•") || line.hasPrefix("*") {
                    // Bullet points (form fields)
                    Text(line)
                        .font(.body)
                        .foregroundColor(.primary)
                } else {
                    // Regular text
                    Text(line)
                        .font(.body)
                        .foregroundColor(.primary)
                }
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
    }
}

#Preview {
    NavigationStack {
        QuestionView(test: ListeningTests.test1)
    }
} 