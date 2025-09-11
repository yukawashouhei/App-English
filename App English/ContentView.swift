//
//  ContentView.swift
//  App English
//
//  Created by 湯川昇平 on 2025/08/02.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationStack {
                MainMenuView()
            }
            .tabItem {
                Image(systemName: "house")
                Text("Top")
            }
            .tag(0)
            .accessibilityLabel("Home tab")
            .accessibilityHint("Navigate to main menu")
            
            NavigationStack {
                TestListView(skillType: .reading)
            }
            .tabItem {
                Image(systemName: "doc.text")
                Text("Reading")
            }
            .tag(1)
            .accessibilityLabel("Reading test tab")
            .accessibilityHint("Practice reading comprehension")
            
            NavigationStack {
                TestListView(skillType: .listening)
            }
            .tabItem {
                Image(systemName: "headphones")
                Text("Listening")
            }
            .tag(2)
            .accessibilityLabel("Listening test tab")
            .accessibilityHint("Practice listening comprehension")
            
            NavigationStack {
                TestListView(skillType: .speaking)
            }
            .tabItem {
                Image(systemName: "mic")
                Text("Speaking")
            }
            .tag(3)
            .accessibilityLabel("Speaking test tab")
            .accessibilityHint("Practice speaking skills")
            
            NavigationStack {
                TestListView(skillType: .writing)
            }
            .tabItem {
                Image(systemName: "square.and.pencil")
                Text("Writing")
            }
            .tag(4)
            .accessibilityLabel("Writing test tab")
            .accessibilityHint("Practice writing skills")
        }
        .accentColor(.blue)
    }
}

struct MainMenuView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 30) {
                // Header with logo and title
                VStack(spacing: 15) {
                    Image("SwallowLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 72, height: 72)
                        .foregroundStyle(Color(hex: "1A5CF9"))
                    
                    VStack(spacing: 5) {
                        Text("English test for")
                            .font(.title2)
                            .foregroundStyle(.black)
                        
                        Text("iOS Engineer")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                    }
                }
                .padding(.top, 50)
                
                // Skill buttons
                VStack(spacing: 25) {
                    NavigationLink(destination: TestListView(skillType: .reading)) {
                        SkillButton(
                            title: "Reading",
                            icon: "doc.text",
                            backgroundColor: Color.pink.opacity(0.7)
                        )
                    }
                    
                    NavigationLink(destination: TestListView(skillType: .listening)) {
                        SkillButton(
                            title: "Listening",
                            icon: "headphones",
                            backgroundColor: Color.orange.opacity(0.7)
                        )
                    }
                    
                    NavigationLink(destination: TestListView(skillType: .speaking)) {
                        SkillButton(
                            title: "Speaking",
                            icon: "mic",
                            backgroundColor: Color.green.opacity(0.7)
                        )
                    }
                    
                    NavigationLink(destination: TestListView(skillType: .writing)) {
                        SkillButton(
                            title: "Writing",
                            icon: "square.and.pencil",
                            backgroundColor: Color.purple.opacity(0.7)
                        )
                    }
                }
                .padding(.horizontal, 20)
                
            }
        }
    }
}

struct SkillButton: View {
    let title: String
    let icon: String
    let backgroundColor: Color
    
    var body: some View {
        HStack {
            Spacer()
            
            Image(systemName: icon)
                .font(.system(size: 32))
                .foregroundColor(.white)
            
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .padding(.leading, 10)
            
            Spacer()
        }
        .padding(.vertical, 20)
        .padding(.leading, 10)
        .background(backgroundColor)
        .cornerRadius(30)
        .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    ContentView()
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
