//
//  MainView.swift
//  Glo
//
//  Created by 라주영 on 2023/05/19.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ArticleView()
                .tabItem {
                    Image("icon_article")
                        .renderingMode(.template)
                    Text("아티클")
                }
            
            SearchView()
                .tabItem {
                    Image("icon_search")
                        .renderingMode(.template)
                    Text("검색")
                }
            
            WritingView()
                .tabItem {
                    Image("icon_addcircle")
                        .renderingMode(.template)
                    Text("글쓰기")
                }
            
            Text("알림센터")
                .tabItem {
                    Image("icon_notification")
                        .renderingMode(.template)
                    Text("알림")
                }
            
            ProfileView()
                .tabItem {
                    Image("icon_mypage")
                        .renderingMode(.template)
                    Text("마이페이지")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
