//
//  ContentView.swift
//  davapp
//
//  Created by Иван Луппов on 29.02.2024.
//
		import SwiftUI

struct ContentView: View {
    var body: some View {
       
        ZStack{
            Image("BacKIMGleft")
                .resizable()
                .scaledToFill()
            //Rectangle 3
            VStack(spacing: 5.0){
                ZStack {
                    RoundedRectangle(cornerRadius: 13)
                        .fill(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 0)))
                    
                    RoundedRectangle(cornerRadius: 13)
                        .strokeBorder(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 6)
                    //Sign Up
                    Text("Sign Up").font(.custom("Rubik Bold Italic", size: 36)).foregroundColor(Color(#colorLiteral(red: 0.93, green: 0.5, blue: 0.32, alpha: 1))).tracking(-0.3)
                }
                .frame(width: 233, height: 57)
                //Create account
                Text("Already have an account? ").font(.custom("Roboto Light", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.93, green: 0.5, blue: 0.32, alpha: 1))) + Text("Login").font(.custom("Roboto Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.93, green: 0.5, blue: 0.32, alpha: 1)))
                //line 2
                HStack{
                    Rectangle()
                        .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4000000059604645)))
                        .frame(width: 94, height: 0.5)
                    //or sign up with
                    Text("or sign up with").font(.custom("Roboto Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.93, green: 0.49, blue: 0.38, alpha: 1))).multilineTextAlignment(.center)
                    //line 1
                    Rectangle()
                        .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4000000059604645)))
                    .frame(width: 94, height: 0.5)
                }
                HStack(alignment: .top, spacing: 65.0){
                    //container
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                        
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        
                        RoundedRectangle(cornerRadius: 15)
                            .strokeBorder(Color(#colorLiteral(red: 0.9098039269447327, green: 0.9019607901573181, blue: 0.9176470637321472, alpha: 1)), lineWidth: 1)
                        Image("yandexLogo")
                        
                        
                    }	
                    .frame(width: 64, height: 64)
                    //container
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                        RoundedRectangle(cornerRadius: 15)
                        .strokeBorder(Color(#colorLiteral(red: 0.9098039269447327, green: 0.9019607901573181, blue: 0.9176470637321472, alpha: 1)), lineWidth: 1)
                        Image("GoogleLogo")
                    }
                    .frame(width: 64, height: 64)
                    
                }
            }
            .padding(.top, 180.0)
        }
        
        
    }
}

#Preview {
    ContentView()
}
