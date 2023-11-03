//
//  ContentView.swift
//  FitWit
//
//  Created by apple on 03/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        
        NavigationView {
            ZStack {
                BackgroundView()
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(.blue).blur(radius: 14).opacity(0.2)
                    .padding(.bottom, 350)
                Image("first")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                    .padding(.bottom, 350)
                VStack(spacing: 20) {
                    Text("Make Yourself Stronger then Your Excuses!")
                        .fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                        .padding()
                        .padding(.top, 340)
                    Text("Get Started Your Body Maintainance through out all Watching Your Activity and your Daily Progress")
                        .fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(.white).opacity(0.6)
                        .font(.callout)
                        .fontWeight(.semibold)
                        .padding(.bottom, 30)
                        .padding()
                    VStack {
                        VStack {
                            NavigationLink {
                                HomeView()
                            } label: {
                                Text("Let's Start")
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                    .background {
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 336, height: 54)
                                }
                                    .padding(.bottom, 50)
                            }
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
