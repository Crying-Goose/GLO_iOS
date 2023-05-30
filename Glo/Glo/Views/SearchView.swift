//
//  SearchView.swift
//  Glo
//
//  Created by 라주영 on 2023/05/19.
//

import SwiftUI

struct SearchView: View {
    
    let array = [
            "괴담", "판타지", "회귀물", "소설"
        ]
        
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            
            VStack {
                SearchBar(text: $searchText)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                
                List {
                    Section {
                        ForEach(array.filter {
                            $0.hasPrefix(searchText) || searchText == ""}, id:\.self) {
                            searchText in Text(searchText)
                        }
                    } header: {
                        Text("추천 검색어")
                            .font(.system(size: 18, weight: .bold))
                    }
                }
                .listStyle(PlainListStyle())
                .onTapGesture {
                    hideKeyboard()
                }
            }
        }
    }
}

//화면 터치시 키보드 숨김
#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

struct SearchBar: View {
    
    @Binding var text: String
 
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
 
                TextField("검색", text: $text)
                    .foregroundColor(.primary)
 
                if !text.isEmpty {
                    Button(action: {
                        self.text = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                    }
                } else {
                    EmptyView()
                }
            }
            .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
            .foregroundColor(.secondary)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10.0)
        }
        .padding(.horizontal)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
