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
            MainMenuView()
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("Reading")
                }
                .tag(0)
            
            MainMenuView()
                .tabItem {
                    Image(systemName: "headphones")
                    Text("Listening")
                }
                .tag(1)
            
            MainMenuView()
                .tabItem {
                    Image(systemName: "mic")
                    Text("Speaking")
                }
                .tag(2)
            
            MainMenuView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Writing")
                }
                .tag(3)
        }
        .accentColor(.blue)
    }
}

struct MainMenuView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 30) {
                    // Header with logo and title
                    VStack(spacing: 20) {
                        Image(systemName: "swift")
                            .font(.system(size: 60))
                            .foregroundColor(.blue)
                        
                        Text("English test for")
                            .font(.title2)
                            .foregroundColor(.black)
                        
                        Text("iOS Engineer")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
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
                    
                    Spacer(minLength: 50)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct SkillButton: View {
    let title: String
    let icon: String
    let backgroundColor: Color
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.system(size: 32))
                .foregroundColor(.white)
                .frame(width: 50)
            
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Spacer()
        }
        .padding(.horizontal, 30)
        .padding(.vertical, 20)
        .background(backgroundColor)
        .cornerRadius(30)
        .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    ContentView()
}
