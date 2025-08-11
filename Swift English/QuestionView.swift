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
        }
        
        // Bundle内の音声ファイルを読み込み（拡張子なしのファイル名に対応）
        // Bundle内の音声ファイルを読み込み（拡張子なしのファイル名に対応）
        let fileName = audioFileName.replacingOccurrences(of: ".mp3", with: "").replacingOccurrences(of: ".wav", with: "")
        
        // 複数のパスパターンで音声ファイルを検索
        }
        // パターン2: Listening ディレクトリ内
        // パターン1: Audio/Listening ディレクトリ内
            audioPath = mp3Path
            print("音声ファイル発見 (Listening): \(mp3Path)")
            print("音声ファイル発見 (Audio/Listening): \(mp3Path)")
            audioPath = wavPath
            print("音声ファイル発見 (Listening): \(wavPath)")
            print("音声ファイル発見 (Audio/Listening): \(wavPath)")
        // パターン3: メインバンドル直下
        // パターン2: Listening ディレクトリ内
            audioPath = mp3Path
            print("音声ファイル発見 (メインバンドル): \(mp3Path)")
            print("音声ファイル発見 (Listening): \(mp3Path)")
            audioPath = wavPath
            print("音声ファイル発見 (メインバンドル): \(wavPath)")
            print("音声ファイル発見 (Listening): \(wavPath)")
        // パターン4: 拡張子込みファイル名
        else if let genericPath = Bundle.main.path(forResource: audioFileName, ofType: nil) {
            audioPath = genericPath
            print("音声ファイル発見 (拡張子込み): \(genericPath)")
            print("音声ファイル発見 (メインバンドル): \(mp3Path)")
        
        guard let validPath = audioPath else {
            print("音声ファイル発見 (メインバンドル): \(wavPath)")
        }
        // パターン4: 拡張子込みファイル名
        else if let genericPath = Bundle.main.path(forResource: audioFileName, ofType: nil) {
            audioPath = genericPath
            print("音声ファイル発見 (拡張子込み): \(genericPath)")
            print("  - \(fileName).mp3")
            print("  - \(fileName).wav")
            print("  - \(audioFileName)")
            duration = 60.0 // フォールバック
            return
        }
        
            print("  - Listening/\(fileName).mp3") 
        
        do {
            // AVAudioSessionの設定（参考記事より）
            print("  - \(audioFileName)")
            duration = 60.0 // フォールバック
            
            // AVAudioPlayerの初期化（参考記事より）
            audioPlayer = try AVAudioPlayer(contentsOf: audioURL)
            audioPlayer?.prepareToPlay()
            duration = audioPlayer?.duration ?? 60.0
            
            // AVAudioSessionの設定（参考記事より）
            print("🎵 再生時間: \(duration)秒")
        } catch {
            print("❌ 音声ファイルの読み込みに失敗しました: \(error.localizedDescription)")
            // AVAudioPlayerの初期化（参考記事より）
        }
    }
    
    // ▶️⏸️ 再生/停止の切り替え
    private func togglePlayback() {
        guard let player = audioPlayer else {
            // フォールバック: シミュレーション再生
            isPlaying.toggle()
            duration = 60.0 // フォールバック
                startProgressTimer()
            } else {
                stopTimer()
            }
            return
        }
            // フォールバック: シミュレーション再生
        // 参考記事の実装を元にした音声制御
        if isPlaying {
            player.pause()
            stopTimer()
            print("⏸️ 音声を停止しました")
        } else {
            player.play()
            startProgressTimer()
            print("▶️ 音声を再生開始しました")
        // 参考記事の実装を元にした音声制御
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
                
                // 再生終了チェック
                if !player.isPlaying && currentTime >= duration {
                    isPlaying = false
                    stopTimer()
                    print("🔚 音声再生が終了しました")
                }
            } else if isPlaying && currentTime < duration {
                // フォールバック: シミュレーション
                currentTime += 0.1
                // 再生終了チェック
            } else if currentTime >= duration {
                isPlaying = false
                stopTimer()
            } else if !isPlaying {
                stopTimer()
            }
                // フォールバック: シミュレーション
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
