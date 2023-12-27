//
//  OnboardingNameView.swift
//  Blott
//
//  Created by Blott App on 2023-12-27.
//

import SwiftUI

struct OnboardigNameView: View {

    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                HStack( spacing: 10) {
                    // Heading/xl: 30px
                    Text("Your legal name")
                      .font(
                        Font.custom("Roboto", size: 30)
                          .weight(.bold)
                      )
                      .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.09))
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
                // Text/Regular/md: 16px
                Text("We need to know a bit about you so that we can create your account.")
                  .font(Font.custom("Roboto", size: 16))
                  .foregroundColor(Color(red: 0.45, green: 0.45, blue: 0.45))
                  .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .padding(0)
            .frame(width: 327, alignment: .topLeading)
            
            Spacer().frame(height: 54)
     
            VStack(alignment: .leading, spacing: 4) {
                // Text/Regular/xl: 20px
                Text("First name")
                  .font(Font.custom("Roboto", size: 20))
                  .foregroundColor(Color(red: 0.64, green: 0.64, blue: 0.64))
                
                VStack(alignment: .leading, spacing: 4) {  }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                
            }
            .padding(0)
            .frame(width: 327, alignment: .topLeading)
            Spacer().frame(height: 44)
            
                 VStack(alignment: .leading, spacing: 4) {
                     // Text/Regular/xl: 20px
                     Text("Last name")
                       .font(Font.custom("Roboto", size: 20))
                       .foregroundColor(Color(red: 0.64, green: 0.64, blue: 0.64))
                     
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

struct OnboardigNameView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardigNameView()
    }
}
