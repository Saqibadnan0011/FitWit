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
                Text("Daily Progress")
                    .font(.title.weight(.bold))
                    .matchedGeometryEffect(id: "title", in: namespace)
                    .frame(maxWidth: .infinity, alignment: .leading)
            } else {
                Text("Daily Progress")
                    .font(.title.weight(.bold))
                    .matchedGeometryEffect(id: "title", in: namespace)
                    .frame(maxWidth: .infinity, alignment: .trailing)
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
