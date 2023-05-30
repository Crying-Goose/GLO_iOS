//
//  ArticleView.swift
//  Glo
//
//  Created by 라주영 on 2023/05/19.
//

import SwiftUI

struct ArticleView: View {
    var body: some View {
        NavigationView {
            ArticleItemView()
                .navigationTitle("아티클")
                .navigationBarTitleDisplayMode(.inline)
        }
        
        
    }
}


// ArticleItemView
// 아티클
// List에 들어감
struct ArticleItemView: View {
    
    let kArticleContent = """
2018년도 였음 ㅋㅋ 내가 과에서
1빠로 군대가는데 불쌍하다고
18학번 항공과랑 비서과 애들이
술한잔 먹자고해서 먹음 ㅋㅋ
그때 남자 4 여자4이서 술을 먹었음
아직 서로 안친하니까 자리 섞어서
술게임하고 막 먹다가 내옆에 있던
항공과 애랑 둘이 남게됬음
나머지 다 담타하러 갔는데 둘이서
얘기를 하게 됬는데 그 애가 진짜
학교에서 존예로 유명한 애였음
근데 갑자기 얘가 신입생 OT때부터
나 좋아했다고 하는거임 ㅋㅋㅋ
근데 난 곧 군대가니까
"""
    
    let kButtonHeight: CGFloat = 70
    
    var body: some View {
        ZStack {
            // 아티클 내용 뷰
            Text(kArticleContent)
                .font(.system(size: 24))
                .padding(.leading, 16)
                .padding(.trailing, 60)
                .lineSpacing(10)
                
            
            // 버튼 뷰
            HStack {
                
                Spacer()
                
                VStack {
                    
                    Spacer()
                    
                    VStack {
                        Button(action: {
                            print("공유해줘잉")
                        }) {
                            Image("icon_share")
                        }
                        Text("공유")
                            .font(.system(size: 13, weight: .bold))
                    }
                    .frame(height: kButtonHeight)
                    
                    VStack {
                        Button(action: {
                            print("악플 ㄴㄴ")
                        }) {
                            Image("icon_comment")
                        }
                        Text("1,234")
                            .font(.system(size: 13, weight: .bold))
                    }
                    .frame(height: kButtonHeight)
                    
                    VStack {
                        Button(action: {
                            print("헤응 좋아요")
                        }) {
                            Image("icon_like")
                        }
                        Text("1,234")
                            .font(.system(size: 13, weight: .bold))
                    }
                    .frame(height: kButtonHeight)
                    
                    IconCircleView(size: 50)
                        .padding(.bottom, 16.0)
                }
                .frame(width: 60)
            }
        }
    }
}

struct IconCircleView: View {
    
    let size: CGFloat
    
    var body: some View {
        
        Image("dummy_user_icon")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle()
                .stroke(Color.accentColor, lineWidth: 2))
            .frame(width: size, height: size)
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView()
    }
}
