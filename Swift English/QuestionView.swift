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
    @Environment(\.presentationMode) var presentationMode
    
    private var currentQuestion: Question {
        test.questions[currentQuestionIndex]
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Test info header
                VStack(alignment: .leading, spacing: 8) {
                    Text(test.title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Text("問題 \(currentQuestionIndex + 1) / \(test.questions.count)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal)
                
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
                .animation(.none)
                
                // Answer controls
                VStack(spacing: 12) {
                    // Answer button
                    DisclosureGroup(isExpanded: $showAnswer) {
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
                            
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.clear)
                                .padding(.bottom, 4)
                        }
                        .padding(.top, 8)
                    } label: {
                        Label("答えを見る", systemImage: "checkmark.bubble")
                            .font(.headline)
                            .foregroundColor(.green)
                    }
                    .padding()
                    .background(Color.green.opacity(0.1))
                    .cornerRadius(12)
                    
                    // Translation button
                    DisclosureGroup(isExpanded: $showTranslation) {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("日本語訳:")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(.blue)
                            
                            Text(currentQuestion.japaneseTranslation)
                                .font(.body)
                                .foregroundColor(.primary)
                                .padding(.bottom, 4)
                        }
                        .padding(.top, 8)
                    } label: {
                        Label("日本語訳を見る", systemImage: "translate")
                            .font(.headline)
                            .foregroundColor(.blue)
                    }
                    .padding()
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(12)
                    
                    // Explanation button
                    DisclosureGroup(isExpanded: $showExplanation) {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("解説:")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(.orange)
                            
                            Text(currentQuestion.explanation)
                                .font(.body)
                                .foregroundColor(.primary)
                                .padding(.bottom, 4)
                        }
                        .padding(.top, 8)
                    } label: {
                        Label("解説を見る", systemImage: "lightbulb")
                            .font(.headline)
                            .foregroundColor(.orange)
                    }
                    .padding()
                    .background(Color.orange.opacity(0.1))
                    .cornerRadius(12)
                    
                    // Conversation Script button (for listening questions with script)
                    if test.skillType == .listening, let script = currentQuestion.conversationScript {
                        DisclosureGroup(isExpanded: $showConversationScript) {
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Conversation Script:")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.purple)
                                
                                Text(script)
                                    .font(.body)
                                    .foregroundColor(.primary)
                                    .padding(.bottom, 4)
                            }
                            .padding(.top, 8)
                        } label: {
                            Label("会話スクリプトを見る", systemImage: "text.bubble")
                                .font(.headline)
                                .foregroundColor(.purple)
                        }
                        .padding()
                        .background(Color.purple.opacity(0.1))
                        .cornerRadius(12)
                    }
                }
                .padding(.horizontal)
                
                // Navigation buttons
                HStack {
                    Button(action: previousQuestion) {
                        Label("前の問題", systemImage: "chevron.left")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .disabled(currentQuestionIndex == 0)
                    
                    Button(action: nextQuestion) {
                        Label(currentQuestionIndex < test.questions.count - 1 ? "次の問題" : "完了", systemImage: currentQuestionIndex < test.questions.count - 1 ? "chevron.right" : "checkmark")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .animation(.none, value: currentQuestionIndex)
                .padding(.horizontal)
                .padding(.bottom, 30)
            }
            .animation(.none, value: currentQuestionIndex)
            .id(currentQuestionIndex)
        }
        .animation(.none, value: currentQuestionIndex)
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
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
    
    private func resetAnswerStates() {
        withAnimation(nil) {
            showAnswer = false
            showTranslation = false
            showExplanation = false
            showConversationScript = false
        }
    }
}

struct AudioControlsView: View {
    let audioFileName: String
    @Binding var audioPlayer: AVAudioPlayer?
    @State private var isPlaying = false
    @State private var progress: Double = 0
    @State private var duration: Double = 0
    @State private var currentTime: Double = 0
    
    var body: some View {
        VStack(spacing: 16) {
            Text("音声")
                .font(.headline)
                .foregroundColor(.primary)
            
            VStack(spacing: 12) {
                // Progress bar
                if duration > 0 {
                    VStack(spacing: 4) {
                        ProgressView(value: progress, total: 1.0)
                            .progressViewStyle(LinearProgressViewStyle(tint: .blue))
                        
                        HStack {
                            Text(formatTime(currentTime))
                                .font(.caption)
                                .foregroundColor(.secondary)
                            
                            Spacer()
                            
                            Text(formatTime(duration))
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                }
                
                // Play controls
                HStack(spacing: 20) {
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
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            if isPlaying && currentTime < duration {
                currentTime += 0.1
                progress = currentTime / duration
            } else if currentTime >= duration {
                isPlaying = false
                timer.invalidate()
            } else if !isPlaying {
                timer.invalidate()
            }
        }
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
                            .animation(.easeInOut(duration: 1).repeatForever(), value: isRecording)
                        
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
                        Text("本文")
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
    NavigationView {
        QuestionView(test: ListeningTests.test1)
    }
} 