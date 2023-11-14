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
            //Color.black
                //.ignoresSafeArea(.all)
            if !show {
                Spacer()
                VStack (alignment: .leading, spacing: 12) {
                    Text("Daily Progress")
                        .font(.title.weight(.bold))
                        .matchedGeometryEffect(id: "title", in: namespace)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Steps and more".uppercased())
                        .font(.footnote.bold())
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    Text("See your daily progress and make more your body fit and healthy")
                        .font(.footnote)
                        .matchedGeometryEffect(id: "text", in: namespace)
                }
                .padding(20)
                .foregroundStyle(.white)
                .background(
                    Image("Card1.0")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .matchedGeometryEffect(id: "background", in: namespace)
                )
                .mask(
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .matchedGeometryEffect(id: "mask", in: namespace)
                )
                .frame(height: 500)
                .padding(20)
            } else {
                ScrollView {
                    VStack {
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .overlay(
                        VStack (alignment: .leading, spacing: 12) {
                            Text("Daily Progress")
                                .font(.title.weight(.bold))
                                .matchedGeometryEffect(id: "title", in: namespace)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Steps and more".uppercased())
                                .font(.footnote.bold())
                                .matchedGeometryEffect(id: "subtitle", in: namespace)
                            Text("See your daily progress and make more your body fit and healthy")
                                .font(.footnote)
                                .matchedGeometryEffect(id: "text", in: namespace)
                        }
                    )
                    .padding(20)
                    .foregroundStyle(.white)
                    .background(
                        Image("Card1.0")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .matchedGeometryEffect(id: "background", in: namespace)
                    )
                    .mask(
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .matchedGeometryEffect(id: "mask", in: namespace)
                )
                }
            }//else
        }
        .onTapGesture {
            withAnimation (.spring(response: 0.6, dampingFraction: 0.8)) {
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
