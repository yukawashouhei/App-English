//
//  ContentView.swift
//  Swift English
//
//  Created by 湯川昇平 on 2025/08/02.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationView {
                MainMenuView()
            }
            .tabItem {
                Image(systemName: "house")
                Text("Top")
            }
            .tag(0)
            
            NavigationView {
                TestListView(skillType: .reading)
            }
            .tabItem {
                Image(systemName: "doc.text")
                Text("Reading")
            }
            .tag(1)
            
            NavigationView {
                TestListView(skillType: .listening)
            }
            .tabItem {
                Image(systemName: "headphones")
                Text("Listening")
            }
            .tag(2)
            
            NavigationView {
                TestListView(skillType: .speaking)
            }
            .tabItem {
                Image(systemName: "mic")
                Text("Speaking")
            }
            .tag(3)
            
            NavigationView {
                TestListView(skillType: .writing)
            }
            .tabItem {
                Image(systemName: "square.and.pencil")
                Text("Writing")
            }
            .tag(4)
        }
        .accentColor(.blue)
    }
}

struct MainMenuView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                // Header with logo and title
                VStack(spacing: 15) {
                    Image(systemName: "swift")
                        .font(.system(size: 60))
                        .foregroundColor(.blue)
                    
                    VStack(spacing: 5) {
                        Text("English test for")
                            .font(.title2)
                            .foregroundColor(.black)
                        
                        Text("iOS Engineer")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
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
                .foregroundColor(.white)
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
