//
//  MatchView.swift
//  FitWit
//
//  Created by apple on 14/11/2023.
//

import SwiftUI

struct MatchView: View {
    @Namespace var namespace
    @State var show = false
    
    var body: some View {
        ZStack {
            if !show {
                VStack (alignment: .leading, spacing: 12) {
                    Text("Daily Progress")
                        .font(.title.weight(.bold))
                        .matchedGeometryEffect(id: "title", in: namespace)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Steps and More".uppercased())
                        .font(.footnote.bold())
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    Text("See your daily progress and make more your body fit and healthy")
                        .font(.footnote)
                        .matchedGeometryEffect(id: "text", in: namespace)
                }
                .padding(20)
                .foregroundStyle(.white)
                .background(
                    Color.red.matchedGeometryEffect(id: "background", in: namespace)
                )
                .padding(20)
            } else {
                VStack (alignment: .leading, spacing: 12) {
                    Spacer()
                    Text("Daily Progress")
                        .font(.title.weight(.bold))
                        .matchedGeometryEffect(id: "title", in: namespace)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    Text("See your daily progress and make more your body fit and healthy".uppercased())
                        .font(.footnote.bold())
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    Text("See your daily progress and make more your body fit and healthy")
                        .font(.footnote)
                        .matchedGeometryEffect(id: "text", in: namespace)
                }
                .padding(20)
                .foregroundStyle(.white)
                .background(
                    Color.gray.matchedGeometryEffect(id: "background", in: namespace)
                )
            }//else
        }
        .onTapGesture {
            withAnimation {
                show.toggle()
            }
        }//tap
    }
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView()
    }
}
