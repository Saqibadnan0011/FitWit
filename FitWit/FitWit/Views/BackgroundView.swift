//
//  BackgroundView.swift
//  FitWit
//
//  Created by apple on 03/11/2023.
//

import SwiftUI

struct BackgroundView: View {
    let gradient = Gradient(colors: [Color("Color1"), Color("Color2")])
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
            }
            Spacer()
        }
        .background(LinearGradient(gradient: gradient, startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
