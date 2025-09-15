//
//  QuestionView.swift
//  App English
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
                            .foregroundStyle(.primary)
                        
                        Text("問題 \(currentQuestionIndex + 1) / \(test.questions.count)")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
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
                                    Label(test.skillType == .speaking || test.skillType == .writing ? "模範解答を見る" : "答えを見る", systemImage: "checkmark.bubble")
                                        .font(.headline)
                                        .foregroundStyle(.green)
                                    
                                    Spacer()
                                    
                                    Image(systemName: showAnswer ? "chevron.up" : "chevron.down")
                                        .foregroundStyle(.green)
                                }
                            }
                            .padding()
                            .background(Color.green.opacity(0.1))
                            .cornerRadius(12)
                            
                            if showAnswer {
                                VStack(alignment: .leading, spacing: 12) {
                                    Text(test.skillType == .speaking ? "模範解答:" : "正解:")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(.green)
                                    
                                    if currentQuestion.type == .formCompletion {
                                        VStack(alignment: .leading, spacing: 8) {
                                            ForEach(currentQuestion.correctAnswer.components(separatedBy: "\n"), id: \.self) { answer in
                                                Text(answer)
                                                    .font(.body)
                                                    .foregroundStyle(.primary)
                                            }
                                        }
                                    } else {
                                        Text(currentQuestion.correctAnswer)
                                            .font(.body)
                                            .foregroundStyle(.primary)
                                    }
                                    
                                    // Speaking用の音声再生コントロール
                                    if test.skillType == .speaking, let audioFileName = currentQuestion.audioFileName {
                                        Divider()
                                            .padding(.vertical, 4)
                                        
                                        AudioControlsView(
                                            audioFileName: audioFileName,
                                            audioPlayer: $audioPlayer
                                        )
                                        .id(audioFileName) // 音声ファイル名が変わったら強制的に再作成
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
                                        .foregroundStyle(.blue)
                                    
                                    Spacer()
                                    
                                    Image(systemName: showTranslation ? "chevron.up" : "chevron.down")
                                        .foregroundStyle(.blue)
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
                                        .foregroundStyle(.blue)
                                    
                                    Text(currentQuestion.japaneseTranslation)
                                        .font(.body)
                                        .foregroundStyle(.primary)
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
                                        .foregroundStyle(.orange)
                                    
                                    Spacer()
                                    
                                    Image(systemName: showExplanation ? "chevron.up" : "chevron.down")
                                        .foregroundStyle(.orange)
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
                                        .foregroundStyle(.orange)
                                    
                                    Text(currentQuestion.explanation)
                                        .font(.body)
                                        .foregroundStyle(.primary)
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
                                            .foregroundStyle(.purple)
                                        
                                        Spacer()
                                        
                                        Image(systemName: showConversationScript ? "chevron.up" : "chevron.down")
                                            .foregroundStyle(.purple)
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
                                            .foregroundStyle(.purple)
                                        
                                        Text(script)
                                            .font(.body)
                                            .foregroundStyle(.primary)
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
                                .foregroundStyle(.white)
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
                                .foregroundStyle(.white)
                                .cornerRadius(10)
                        }
                        .accessibilityLabel(currentQuestionIndex == test.questions.count - 1 ? "Complete test" : "Next question")
                        .accessibilityHint(currentQuestionIndex == test.questions.count - 1 ? "Finish the test and return to menu" : "Go to the next question")
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 30)
                }
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
            
            // 音声プレーヤーもリセット
            audioPlayer?.stop()
            audioPlayer = nil
            
            print("DEBUG: After reset - all states should be false, audio player cleared")
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
                .foregroundStyle(.primary)
            
            VStack(spacing: 12) {
                // Progress bar
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text(formatTime(currentTime))
                            .font(.caption)
                            .foregroundStyle(.secondary)
                        
                        Spacer()
                        
                        Text(formatTime(duration))
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                    
                    ProgressView(value: progress)
                        .progressViewStyle(LinearProgressViewStyle(tint: .blue))
                }
                
                // Control buttons
                HStack(spacing: 30) {
                    Button(action: rewind) {
                        Image(systemName: "gobackward.15")
                            .font(.title2)
                            .foregroundStyle(.blue)
                    }
                    
                    Button(action: togglePlayback) {
                        Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.blue)
                    }
                    
                    Button(action: fastForward) {
                        Image(systemName: "goforward.15")
                            .font(.title2)
                            .foregroundStyle(.blue)
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
        guard !audioFileName.isEmpty else {
            duration = 60.0 // デフォルト時間
            return
        }
        
        // 既存のプレーヤーを確実にクリア
        audioPlayer?.stop()
        audioPlayer = nil
        
        print("🔍 音声ファイル検索開始: \(audioFileName)")
        
        // Bundle内の音声ファイルを読み込み（拡張子なしのファイル名に対応）
        let fileName = audioFileName.replacingOccurrences(of: ".mp3", with: "").replacingOccurrences(of: ".wav", with: "")
        
        // 複数のパスパターンで音声ファイルを検索
        var audioPath: String?
        
        // パターン1: Audio/Speaking ディレクトリ内
        if let mp3Path = Bundle.main.path(forResource: fileName, ofType: "mp3", inDirectory: "Audio/Speaking") {
            audioPath = mp3Path
            print("音声ファイル発見 (Audio/Speaking): \(mp3Path)")
        } else if let wavPath = Bundle.main.path(forResource: fileName, ofType: "wav", inDirectory: "Audio/Speaking") {
            audioPath = wavPath
            print("音声ファイル発見 (Audio/Speaking): \(wavPath)")
        }
        // パターン2: Audio/Reading ディレクトリ内
        else if let mp3Path = Bundle.main.path(forResource: fileName, ofType: "mp3", inDirectory: "Audio/Reading") {
            audioPath = mp3Path
            print("音声ファイル発見 (Audio/Reading): \(mp3Path)")
        } else if let wavPath = Bundle.main.path(forResource: fileName, ofType: "wav", inDirectory: "Audio/Reading") {
            audioPath = wavPath
            print("音声ファイル発見 (Audio/Reading): \(wavPath)")
        }
        // パターン3: Audio/Listening ディレクトリ内
        else if let mp3Path = Bundle.main.path(forResource: fileName, ofType: "mp3", inDirectory: "Audio/Listening") {
            audioPath = mp3Path
            print("音声ファイル発見 (Audio/Listening): \(mp3Path)")
        } else if let wavPath = Bundle.main.path(forResource: fileName, ofType: "wav", inDirectory: "Audio/Listening") {
            audioPath = wavPath
            print("音声ファイル発見 (Audio/Listening): \(wavPath)")
        }
        // パターン4: Listening ディレクトリ内
        else if let mp3Path = Bundle.main.path(forResource: fileName, ofType: "mp3", inDirectory: "Listening") {
            audioPath = mp3Path
            print("音声ファイル発見 (Listening): \(mp3Path)")
        } else if let wavPath = Bundle.main.path(forResource: fileName, ofType: "wav", inDirectory: "Listening") {
            audioPath = wavPath
            print("音声ファイル発見 (Listening): \(wavPath)")
        }
        // パターン5: メインバンドル直下
        else if let mp3Path = Bundle.main.path(forResource: fileName, ofType: "mp3") {
            audioPath = mp3Path
            print("音声ファイル発見 (メインバンドル): \(mp3Path)")
        } else if let wavPath = Bundle.main.path(forResource: fileName, ofType: "wav") {
            audioPath = wavPath
            print("音声ファイル発見 (メインバンドル): \(wavPath)")
        }
        // パターン6: 拡張子込みファイル名
        else if let genericPath = Bundle.main.path(forResource: audioFileName, ofType: nil) {
            audioPath = genericPath
            print("音声ファイル発見 (拡張子込み): \(genericPath)")
        }
        
        guard let validPath = audioPath else {
            print("❌ 音声ファイルが見つかりません: \(audioFileName)")
            print("🔍 検索したパターン:")
            print("  - Audio/Speaking/\(fileName).mp3")
            print("  - Audio/Speaking/\(fileName).wav")
            print("  - Audio/Reading/\(fileName).mp3")
            print("  - Audio/Reading/\(fileName).wav")
            print("  - Audio/Listening/\(fileName).mp3")
            print("  - Audio/Listening/\(fileName).wav")
            print("  - Listening/\(fileName).mp3") 
            print("  - Listening/\(fileName).wav")
            print("  - \(fileName).mp3")
            print("  - \(fileName).wav")
            print("  - \(audioFileName)")
            duration = 60.0 // フォールバック
            return
        }
        
        let audioURL = URL(fileURLWithPath: validPath)
        
        do {
            // AVAudioSessionの設定（参考記事より）
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [])
            try AVAudioSession.sharedInstance().setActive(true)
            
            // AVAudioPlayerの初期化（参考記事より）
            audioPlayer = try AVAudioPlayer(contentsOf: audioURL)
            audioPlayer?.prepareToPlay()
            duration = audioPlayer?.duration ?? 60.0
            
            print("✅ 音声ファイル読み込み成功: \(validPath)")
            print("🎵 再生時間: \(duration)秒")
        } catch {
            print("❌ 音声ファイルの読み込みに失敗しました: \(error.localizedDescription)")
            duration = 60.0 // フォールバック
        }
    }
    
    private func togglePlayback() {
        guard let player = audioPlayer else {
            // フォールバック: シミュレーション再生
            isPlaying.toggle()
            if isPlaying {
                startProgressTimer()
            } else {
                stopTimer()
            }
            return
        }
        
        // 参考記事の実装を元にした音声制御
        if isPlaying {
            player.pause()
            stopTimer()
        } else {
            player.play()
            startProgressTimer()
        }
        isPlaying.toggle()
    }
    
    private func rewind() {
        if let player = audioPlayer {
            let newTime = max(0, player.currentTime - 15)
            player.currentTime = newTime
            currentTime = newTime
        } else {
            currentTime = max(0, currentTime - 15)
        }
        progress = currentTime / duration
    }
    
    private func fastForward() {
        if let player = audioPlayer {
            let newTime = min(duration, player.currentTime + 15)
            player.currentTime = newTime
            currentTime = newTime
        } else {
            currentTime = min(duration, currentTime + 15)
        }
        progress = currentTime / duration
    }
    
    private func startProgressTimer() {
        stopTimer() // 既存のTimerを停止
        progressTimer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            if let player = audioPlayer, isPlaying {
                currentTime = player.currentTime
                progress = currentTime / duration
                
                // 再生終了チェック
                if !player.isPlaying && currentTime >= duration {
                    isPlaying = false
                    stopTimer()
                }
            } else if isPlaying && currentTime < duration {
                // フォールバック: シミュレーション
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
    @State private var playbackPlayer: AVAudioPlayer?
    @StateObject private var recordingManager = RecordingManager()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("音声録音")
                .font(.headline)
                .foregroundStyle(.primary)
            
            VStack(spacing: 16) {
                // Recording indicator and time
                if isRecording {
                    HStack {
                        Spacer()
                        Circle()
                            .fill(Color.red)
                            .frame(width: 12, height: 12)
                            .opacity(0.8)
                            .scaleEffect(1.2)
                            .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: isRecording)
                        
                        Text("録音中: \(formatTime(recordingTime))")
                            .font(.subheadline)
                            .foregroundStyle(.red)
                        Spacer()
                    }
                } else {
                    HStack {
                        Spacer()
                        Text("録音の準備ができました")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        Spacer()
                    }
                }
                
                // Record button
                HStack {
                    Spacer()
                    Button(action: toggleRecording) {
                        Image(systemName: isRecording ? "stop.circle.fill" : "mic.circle.fill")
                            .font(.system(size: 60))
                            .foregroundStyle(isRecording ? .red : .blue)
                    }
                    Spacer()
                }
                
                // Playback button (if recording exists)
                if recordingURL != nil && !isRecording {
                    HStack {
                        Spacer()
                        Button(action: playRecording) {
                            Label("録音を再生", systemImage: "play.circle")
                                .font(.headline)
                                .foregroundStyle(.green)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 8)
                                .background(Color.green.opacity(0.1))
                                .cornerRadius(8)
                        }
                        Spacer()
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
        // Request microphone permission (iOS 17+ compatible)
        if #available(iOS 17.0, *) {
            AVAudioApplication.requestRecordPermission { granted in
                DispatchQueue.main.async {
                    if granted {
                        self.setupAndStartRecording()
                    } else {
                        print("マイクロフォンの使用許可が必要です")
                    }
                }
            }
        } else {
            AVAudioSession.sharedInstance().requestRecordPermission { granted in
            DispatchQueue.main.async {
                if granted {
                    self.setupAndStartRecording()
                } else {
                    print("マイクロフォンの使用許可が必要です")
                }
            }
        }
    }
    }
    
    private func setupAndStartRecording() {
        do {
            // Configure audio session
            let audioSession = AVAudioSession.sharedInstance()
            try audioSession.setCategory(.playAndRecord, mode: .default, options: [.defaultToSpeaker])
            try audioSession.setActive(true)
            
            // Create recording URL
            let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
            let audioFilename = documentsPath.appendingPathComponent("recording_\(Date().timeIntervalSince1970).m4a")
            recordingURL = audioFilename
            
            // Configure recording settings
            let settings: [String: Any] = [
                AVFormatIDKey: kAudioFormatMPEG4AAC,
                AVSampleRateKey: 44100.0,
                AVNumberOfChannelsKey: 1,
                AVEncoderAudioQualityKey: AVAudioQuality.high.rawValue
            ]
            
            // Create and start recorder
            audioRecorder = try AVAudioRecorder(url: audioFilename, settings: settings)
            audioRecorder?.delegate = recordingManager
            audioRecorder?.isMeteringEnabled = true
            audioRecorder?.record()
            
            isRecording = true
            recordingTime = 0
            
            // Start timer for recording time
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                recordingTime += 1
            }
            
            print("録音を開始しました: \(audioFilename)")
        } catch {
            print("録音の開始に失敗しました: \(error.localizedDescription)")
        }
    }
    
    private func stopRecording() {
        isRecording = false
        timer?.invalidate()
        timer = nil
        
        audioRecorder?.stop()
        audioRecorder = nil
        
        // 録音ファイルの確認
        if let recordingURL = recordingURL {
            let fileManager = FileManager.default
            if fileManager.fileExists(atPath: recordingURL.path) {
                do {
                    let attributes = try fileManager.attributesOfItem(atPath: recordingURL.path)
                    let fileSize = attributes[.size] as? Int64 ?? 0
                    print("録音ファイルが作成されました: \(recordingURL)")
                    print("ファイルサイズ: \(fileSize) bytes")
                    
                    if fileSize == 0 {
                        print("⚠️ 録音ファイルのサイズが0です - 録音が正常に行われていない可能性があります")
                    }
                } catch {
                    print("録音ファイルの情報取得に失敗: \(error.localizedDescription)")
                }
            } else {
                print("❌ 録音ファイルが見つかりません: \(recordingURL.path)")
            }
        }
        
        do {
            try AVAudioSession.sharedInstance().setActive(false)
            print("録音を停止しました")
        } catch {
            print("オーディオセッションの停止に失敗しました: \(error.localizedDescription)")
        }
    }
    
    private func playRecording() {
        guard let recordingURL = recordingURL else {
            print("再生する録音ファイルがありません")
            return
        }
        
        // 既存の再生を停止
        playbackPlayer?.stop()
        playbackPlayer = nil
        
        do {
            // Configure audio session for playback
            let audioSession = AVAudioSession.sharedInstance()
            try audioSession.setCategory(.playback, mode: .default)
            try audioSession.setActive(true)
            
            // Create and play audio player
            playbackPlayer = try AVAudioPlayer(contentsOf: recordingURL)
            playbackPlayer?.prepareToPlay()
            playbackPlayer?.play()
            
            print("録音を再生中: \(recordingURL)")
            print("ファイルサイズ: \(try? FileManager.default.attributesOfItem(atPath: recordingURL.path)[.size] ?? 0) bytes")
        } catch {
            print("録音の再生に失敗しました: \(error.localizedDescription)")
        }
    }
    
    private func formatTime(_ time: Double) -> String {
        let minutes = Int(time) / 60
        let seconds = Int(time) % 60
        return String(format: "%d:%02d", minutes, seconds)
    }
    
}

class RecordingManager: NSObject, ObservableObject, AVAudioRecorderDelegate {
    
    // MARK: - AVAudioRecorderDelegate
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        DispatchQueue.main.async {
            if flag {
                print("録音が正常に完了しました")
            } else {
                print("録音に失敗しました")
            }
        }
    }
    
    func audioRecorderEncodeErrorDidOccur(_ recorder: AVAudioRecorder, error: Error?) {
        DispatchQueue.main.async {
            if let error = error {
                print("録音エラーが発生しました: \(error.localizedDescription)")
            } else {
                print("録音エラーが発生しました: 不明なエラー")
            }
        }
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
                .id(audioFileName) // 音声ファイル名が変わったら強制的に再作成
                .onAppear {
                    print("🎵 QuestionContentView - Audio controls appeared for: \(audioFileName)")
                    print("🎵 Current question type: \(currentQuestion.type)")
                }
            }
            
            // Form or Passage display
            if let passage = currentQuestion.passage {
                VStack(alignment: .leading, spacing: 12) {
                    if currentQuestion.type == .formCompletion || currentQuestion.type == .matching {
                        Text("Questions")
                            .font(.headline)
                            .foregroundStyle(.primary)
                        
                        FormCompletionView(passage: passage)
                    } else {
                        Text(test.skillType == .speaking ? "質問" : "本文")
                            .font(.headline)
                            .foregroundStyle(.primary)
                        
                        Text(passage)
                            .font(.body)
                            .lineSpacing(6)
                            .foregroundStyle(.primary)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(12)
                    }
                }
                .padding(.horizontal)
            }
            
            // Audio controls for reading questions (between passage and answers)
            if test.skillType == .reading, let audioFileName = currentQuestion.audioFileName {
                AudioControlsView(
                    audioFileName: audioFileName,
                    audioPlayer: $audioPlayer
                )
                .padding(.horizontal)
                .id(audioFileName) // 音声ファイル名が変わったら強制的に再作成
                .onAppear {
                    print("🎵 QuestionContentView - Reading audio controls appeared for: \(audioFileName)")
                    print("🎵 Current question type: \(currentQuestion.type)")
                }
            }
            
            // Question text display (for speaking when no passage)
            if currentQuestion.passage == nil && !currentQuestion.questionText.isEmpty {
                VStack(alignment: .leading, spacing: 12) {
                    Text("質問")
                        .font(.headline)
                        .foregroundStyle(.primary)
                    
                    Text(currentQuestion.questionText)
                        .font(.body)
                        .lineSpacing(6)
                        .foregroundStyle(.primary)
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
                        .foregroundStyle(.primary)
                    
                    ForEach(Array(options.enumerated()), id: \.offset) { index, option in
                        HStack {
                            Text("\(Character(UnicodeScalar(65 + index)!))")
                                .font(.body)
                                .fontWeight(.medium)
                                .foregroundStyle(.white)
                                .frame(width: 24, height: 24)
                                .background(Color.blue)
                                .clipShape(Circle())
                            
                            Text(option)
                                .font(.body)
                                .foregroundStyle(.primary)
                            
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
                        .foregroundStyle(.orange)
                        .padding(.bottom, 4)
                } else if line.contains("Mobile Device Lab - Request Form") || line.contains("モバイルデバイスラボ - 貸出依頼書") {
                    // Form title
                    Text(line)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundStyle(.primary)
                        .padding(.bottom, 8)
                } else if (line.contains("(") && line.contains(")") && line.contains("_")) || (line.contains(":") && line.contains("_")) {
                    // Form field with blank or matching question with blank
                    HStack {
                        if let colonIndex = line.firstIndex(of: ":") {
                            let beforeColon = String(line[..<colonIndex])
                            let afterColon = String(line[line.index(after: colonIndex)...])
                            
                            Text(beforeColon + ":")
                                .font(.body)
                                .foregroundStyle(.primary)
                            
                            Text(afterColon)
                                .font(.body)
                                .foregroundStyle(.blue)
                                .fontWeight(.medium)
                        } else {
                            Text(line)
                                .font(.body)
                                .foregroundStyle(.blue)
                                .fontWeight(.medium)
                        }
                        
                        Spacer()
                    }
                } else if line.hasPrefix("•") || line.hasPrefix("*") {
                    // Bullet points (form fields)
                    Text(line)
                        .font(.body)
                        .foregroundStyle(.primary)
                } else {
                    // Regular text
                    Text(line)
                        .font(.body)
                        .foregroundStyle(.primary)
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