//
//  OnboardingNameView.swift
//  Blott
//
//  Created by Blott App on 2023-12-27.
//

import SwiftUI

struct OnboardigMobileNumberView: View {

    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                
                HStack(alignment: .top, spacing: 16) {
         
                    HStack(alignment: .center, spacing: 0) {
                        Spacer().frame(width: 20)
                        Image("arrow-left")
                        .frame(width: 19, height: 14.14)
                        Spacer()
                        
                    }
                    .padding(.horizontal, 2.5)
                    .padding(.top, 4.92969)
                    .padding(.bottom, 4.93031)
                    .frame(width: 327, height: 24, alignment: .center)
                    
                }
                .padding(0)
                .frame(width: 327, height: 24, alignment: .topLeading)
                
                Spacer().frame(height: 10)
                
                HStack( spacing: 10) {
          
                    // Heading/xl: 30px
                    Text("What’s your mobile number?")
                      .font(
                        Font.custom("Roboto", size: 30)
                          .weight(.bold)
                      )
                      .foregroundColor(.black)
                      .frame(maxWidth: .infinity, alignment: .topLeading)
                    
                        Spacer()
                    
                  
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 10)
                .frame(width: 327, alignment: .leading)
                
       
            }
            .padding(0)
            .frame(width: 375, alignment: .topLeading)
            
            Spacer().frame(height: 16)
            
            VStack(alignment: .leading, spacing: 0) {

                Text("By continuing, you agree to our Terms & Conditions and Privacy Policy")
                  .font(Font.custom("Roboto", size: 14))
                  .foregroundColor(Color(red: 0.45, green: 0.45, blue: 0.45))
                  .frame(width: 295, alignment: .topLeading)
            }
            .padding(0)
            .frame(width: 327, alignment: .topLeading)
            
            
            Spacer().frame(height: 54)
     
            VStack(alignment: .leading, spacing: 4) {
                // Text/Regular/xl: 20px
                Text("Mobile Number")
                  .font(Font.custom("Roboto", size: 20))
                  .foregroundColor(Color(red: 0.64, green: 0.64, blue: 0.64))
                
                VStack(alignment: .leading, spacing: 4) {  }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                
            }
            .padding(0)
            .frame(width: 327, alignment: .topLeading)
    
            Spacer()
            HStack{
                Spacer()
                HStack(alignment: .center, spacing: 0) {
                    
                    Image("ChevronRight")
                    .frame(width: 24, height: 24)
                }
                .padding(16)
                .background(Color(red: 0.32, green: 0.23, blue: 0.89))
                .cornerRadius(9999)
                .shadow(color: .black.opacity(0.08), radius: 2, x: 0, y: 2)
                
            }
          
       
        }
        .padding()
    }
}

struct OnboardigMobileNumberView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardigMobileNumberView()
    }
}
