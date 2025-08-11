//
//  QuestionView.swift
//  Swift English
//
//  音声再生機能付きの問題表示画面
//

import SwiftUI
import AVFoundation  // 🎵 音声再生に必要

struct QuestionView: View {
    let test: Test
    
    // 📊 状態管理
    @State private var currentQuestionIndex = 0
    @State private var audioPlayer: AVAudioPlayer?
    @State private var isRecording = false
    @State private var audioRecorder: AVAudioRecorder?
    @State private var recordingURL: URL?
    
    // 📱 環境変数
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // 📋 ヘッダー情報
                VStack(spacing: 10) {
                    Text(test.title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(.primary)
                    
                    Text("問題 \(currentQuestionIndex + 1) / \(test.questions.count)")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                .padding(.horizontal)
                
                // 🎵 問題コンテンツ（音声制御含む）
                if currentQuestionIndex < test.questions.count {
                    QuestionContentView(
                        currentQuestion: test.questions[currentQuestionIndex],
                        test: test,
                        audioPlayer: $audioPlayer,
                        isRecording: $isRecording,
                        audioRecorder: $audioRecorder,
                        recordingURL: $recordingURL
                    )
                }
                
                // 🎛️ ナビゲーションボタン
                HStack(spacing: 20) {
                    // ⏮️ 前の問題ボタン
                    Button(action: previousQuestion) {
                        Label("前の問題", systemImage: "chevron.left")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.gray)
                            .foregroundStyle(.white)
                            .cornerRadius(10)
                    }
                    .disabled(currentQuestionIndex == 0)
                    
                    // ⏭️ 次の問題 / 完了ボタン
                    Button(action: nextQuestion) {
                        Label(
                            currentQuestionIndex < test.questions.count - 1 ? "次の問題" : "完了",
                            systemImage: currentQuestionIndex < test.questions.count - 1 ? "chevron.right" : "checkmark"
                        )
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundStyle(.white)
                        .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
            }
        }
        .navigationTitle("問題")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    // ⏮️ 前の問題に移動
    private func previousQuestion() {
        if currentQuestionIndex > 0 {
            currentQuestionIndex -= 1
        }
    }
    
    // ⏭️ 次の問題に移動 / テスト完了
    private func nextQuestion() {
        if currentQuestionIndex < test.questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            dismiss()  // テスト完了
        }
    }
}

// 🎵 音声コントロール専用ビュー
struct AudioControlsView: View {
    let audioFileName: String
    @Binding var audioPlayer: AVAudioPlayer?
    
    // 🎛️ 音声制御の状態
    @State private var isPlaying = false
    @State private var currentTime: Double = 0
    @State private var duration: Double = 100
    @State private var progress: Double = 0
    @State private var progressTimer: Timer?
    
    var body: some View {
        VStack(spacing: 16) {
            Text("🎧 音声コントロール")
                .font(.headline)
                .foregroundStyle(.primary)
            
            VStack(spacing: 12) {
                // 📊 進行状況表示
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
                
                // 🎛️ 制御ボタン
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
            setupAudio()  // 🎵 音声準備
        }
        .onDisappear {
            stopTimer()   // 🧹 メモリ掃除
        }
    }
    
    // 🎵 音声ファイルを準備する
    private func setupAudio() {
        guard !audioFileName.isEmpty else {
            duration = 60.0
            return
        }
        
        print("🔍 音声ファイルを探しています: \(audioFileName)")
        
        // ファイル名処理（拡張子削除）
        let fileName = audioFileName
            .replacingOccurrences(of: ".mp3", with: "")
            .replacingOccurrences(of: ".wav", with: "")
        
        // 🗂️ 複数パターンで音声ファイル検索
        var audioPath: String?
        
        // パターン1: Audio/Listening ディレクトリ
        if let mp3Path = Bundle.main.path(forResource: fileName, ofType: "mp3", inDirectory: "Audio/Listening") {
            audioPath = mp3Path
            print("✅ 音声ファイル発見 (Audio/Listening): \(mp3Path)")
        } else if let wavPath = Bundle.main.path(forResource: fileName, ofType: "wav", inDirectory: "Audio/Listening") {
            audioPath = wavPath
            print("✅ 音声ファイル発見 (Audio/Listening): \(wavPath)")
        }
        // パターン2: Listening ディレクトリ
        else if let mp3Path = Bundle.main.path(forResource: fileName, ofType: "mp3", inDirectory: "Listening") {
            audioPath = mp3Path
            print("✅ 音声ファイル発見 (Listening): \(mp3Path)")
        } else if let wavPath = Bundle.main.path(forResource: fileName, ofType: "wav", inDirectory: "Listening") {
            audioPath = wavPath
            print("✅ 音声ファイル発見 (Listening): \(wavPath)")
        }
        // パターン3: メインバンドル直下
        else if let mp3Path = Bundle.main.path(forResource: fileName, ofType: "mp3") {
            audioPath = mp3Path
            print("✅ 音声ファイル発見 (メインバンドル): \(mp3Path)")
        } else if let wavPath = Bundle.main.path(forResource: fileName, ofType: "wav") {
            audioPath = wavPath
            print("✅ 音声ファイル発見 (メインバンドル): \(wavPath)")
        }
        
        guard let validPath = audioPath else {
            print("❌ 音声ファイルが見つかりません: \(audioFileName)")
            print("🔍 検索したパターン:")
            print("  - Audio/Listening/\(fileName).mp3")
            print("  - Audio/Listening/\(fileName).wav")
            print("  - Listening/\(fileName).mp3")
            print("  - Listening/\(fileName).wav")
            print("  - \(fileName).mp3")
            print("  - \(fileName).wav")
            duration = 60.0
            return
        }
        
        let audioURL = URL(fileURLWithPath: validPath)
        
        do {
            // 📱 iOSの音声システム設定
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [])
            try AVAudioSession.sharedInstance().setActive(true)
            
            // 🎵 音声プレイヤー作成
            audioPlayer = try AVAudioPlayer(contentsOf: audioURL)
            audioPlayer?.prepareToPlay()
            duration = audioPlayer?.duration ?? 60.0
            
            print("✅ 音声ファイル読み込み成功: \(validPath)")
            print("🎵 再生時間: \(duration)秒")
        } catch {
            print("❌ 音声ファイルの読み込みに失敗しました: \(error.localizedDescription)")
            duration = 60.0
        }
    }
    
    // ▶️⏸️ 再生/停止の切り替え
    private func togglePlayback() {
        guard let player = audioPlayer else {
            // 🎭 フォールバック: シミュレーション再生
            print("⚠️ 音声プレイヤーが準備できていません（シミュレーション再生）")
            isPlaying.toggle()
            if isPlaying {
                startProgressTimer()
            } else {
                stopTimer()
            }
            return
        }
        
        // 🎵 実際の音声制御
        if isPlaying {
            player.pause()
            stopTimer()
            print("⏸️ 音声を停止しました")
        } else {
            player.play()
            startProgressTimer()
            print("▶️ 音声を再生開始しました")
        }
        isPlaying.toggle()
    }
    
    // ⏪ 15秒巻き戻し
    private func rewind() {
        if let player = audioPlayer {
            let newTime = max(0, player.currentTime - 15)
            player.currentTime = newTime
            currentTime = newTime
            print("⏪ 15秒巻き戻しました")
        } else {
            currentTime = max(0, currentTime - 15)
        }
        progress = currentTime / duration
    }
    
    // ⏩ 15秒早送り
    private func fastForward() {
        if let player = audioPlayer {
            let newTime = min(duration, player.currentTime + 15)
            player.currentTime = newTime
            currentTime = newTime
            print("⏩ 15秒早送りしました")
        } else {
            currentTime = min(duration, currentTime + 15)
        }
        progress = currentTime / duration
    }
    
    // ⏰ 進行監視タイマー開始
    private func startProgressTimer() {
        stopTimer()  // 既存タイマー停止
        progressTimer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            if let player = audioPlayer, isPlaying {
                // 🎵 実際の音声プレイヤーから時間取得
                currentTime = player.currentTime
                progress = currentTime / duration
                
                // 🔚 再生終了チェック
                if !player.isPlaying && currentTime >= duration {
                    isPlaying = false
                    stopTimer()
                    print("🔚 音声再生が終了しました")
                }
            } else if isPlaying && currentTime < duration {
                // 🎭 フォールバック: シミュレーション
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
    
    // ⏰ タイマー停止とメモリ解放
    private func stopTimer() {
        progressTimer?.invalidate()
        progressTimer = nil
    }
    
    // 🕐 時間フォーマット（秒 → 分:秒）
    private func formatTime(_ time: Double) -> String {
        let minutes = Int(time) / 60
        let seconds = Int(time) % 60
        return String(format: "%d:%02d", minutes, seconds)
    }
}

// 🎵 問題コンテンツ表示ビュー
struct QuestionContentView: View {
    let currentQuestion: Question
    let test: Test
    @Binding var audioPlayer: AVAudioPlayer?
    @Binding var isRecording: Bool
    @Binding var audioRecorder: AVAudioRecorder?
    @Binding var recordingURL: URL?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // 🎵 音声コントロール（リスニング問題のみ）
            if test.skillType == .listening, let audioFileName = currentQuestion.audioFileName {
                AudioControlsView(
                    audioFileName: audioFileName,
                    audioPlayer: $audioPlayer
                )
                .padding(.horizontal)
            }
            
            // 📝 問題文表示
            if let passage = currentQuestion.passage {
                VStack(alignment: .leading, spacing: 12) {
                    Text("本文")
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
                .padding(.horizontal)
            }
            
            // ❓ 質問文表示（passageがない場合）
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
        }
    }
}

// 🎬 プレビュー
#Preview {
    NavigationStack {
        QuestionView(test: Test(
            title: "サンプルテスト",
            skillType: .listening,
            questions: [
                Question(
                    type: .formCompletion,
                    passage: "これはサンプル問題です。",
                    questionText: "質問文のサンプルです。",
                    options: nil,
                    correctAnswer: "サンプル答え",
                    japaneseTranslation: "日本語訳のサンプル",
                    explanation: "解説のサンプル",
                    audioFileName: "test1_q1",
                    conversationScript: nil
                )
            ],
            description: "サンプル説明"
        ))
    }
} 