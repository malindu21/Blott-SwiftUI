//
//  RegisterView.swift
//  Blott
//
//  Created by Blott App on 2023-12-27.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        ZStack {
            
            VStack{
                
                Spacer().frame(height: 25)
                VStack(alignment: .leading, spacing: 0) {
                    
                    HStack(alignment: .center, spacing: 10) {
                        // Heading/xl: 30px
                        Text("Terms & Conditions")
                            .font(
                                Font.custom("Roboto", size: 30)
                                    .weight(.bold)
                            )
                            .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                    }
                    .padding(.horizontal, 24)
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                }
                .padding(0)
                .frame(width: 375, alignment: .topLeading)
                Spacer().frame(height: 16)
                
                VStack(alignment: .leading, spacing: 0) {
                    // Text/Regular/sm: 14px
                    Text("Please have a read over these documents,\npolicies and terms.")
                        .font(Font.custom("Roboto", size: 14))
                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                        .frame(width: 295, alignment: .topLeading)
                }
                .padding(0)
                .frame(width: 327, alignment: .topLeading)
                
                Spacer()
                
                VStack{
                    Spacer().frame(height: 16)
                    HStack(alignment: .center, spacing: 4) {
                        // Text/Medium/md: 16px
                        Text("Tap here to check boxes")
                          .font(
                            Font.custom("Roboto", size: 16)
                              .weight(.medium)
                          )
                          .foregroundColor(Color(red: 0.07, green: 0.09, blue: 0.15))
                    }
                    .padding(12)
                    .frame(width: 327, alignment: .center)
                    .background(Color(red: 0.95, green: 0.96, blue: 0.96))
                    .cornerRadius(24)
                    
                    
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Spacer().frame(height: 26)
                        HStack(spacing: 8) {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 20, height: 20)
                                .background(Color(red: 0.32, green: 0.23, blue: 0.89))
                                .cornerRadius(5)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5)
                                        .inset(by: 1)
                                        .stroke(Color(red: 0.32, green: 0.23, blue: 0.89), lineWidth: 2)
                                )
                            
                            // Text/Regular/md: 16px
                            Text("Terms of service")
                                .font(Font.custom("Roboto", size: 16))
                                .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.09))
                            Spacer()
                        }
                        .frame(width: 327)
                        .padding(0)
                        Spacer().frame(height: 26)
                        HStack(alignment: .center, spacing: 4) {
                            // Text/Medium/sm: 14px
                            Text("Read in detail")
                                .font(
                                    Font.custom("Roboto", size: 14)
                                        .weight(.medium)
                                )
                                .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                            
                            HStack(alignment: .center, spacing: 0) {
                                Image("arrow-right")
                                .frame(width: 6.065, height: 11.89333)
                            }
                            .padding(.leading, 5.27333)
                            .padding(.trailing, 4.66167)
                            .padding(.vertical, 2.05333)
                            .frame(width: 16, height: 16, alignment: .center)
                            
                        }
                        .padding(.leading, 0)
                        .padding(.trailing, 12)
                        .padding(.vertical, 10)
                        .cornerRadius(24)
                       
                    }
                    .padding(0)
                    
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Spacer().frame(height: 26)
                        HStack(spacing: 8) {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 20, height: 20)
                                .background(Color(red: 0.32, green: 0.23, blue: 0.89))
                                .cornerRadius(5)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5)
                                        .inset(by: 1)
                                        .stroke(Color(red: 0.32, green: 0.23, blue: 0.89), lineWidth: 2)
                                )
                            
                            // Text/Regular/md: 16px
                            Text("Payment services agreement")
                              .font(Font.custom("Roboto", size: 16))
                              .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.09))
                            Spacer()
                        }
                        .frame(width: 327)
                        .padding(0)
                        Spacer().frame(height: 26)
                        HStack(alignment: .center, spacing: 4) {
                            // Text/Medium/sm: 14px
                            Text("Read in detail")
                                .font(
                                    Font.custom("Roboto", size: 14)
                                        .weight(.medium)
                                )
                                .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                            
                            HStack(alignment: .center, spacing: 0) {
                                Image("arrow-right")
                                .frame(width: 6.065, height: 11.89333)
                            }
                            .padding(.leading, 5.27333)
                            .padding(.trailing, 4.66167)
                            .padding(.vertical, 2.05333)
                            .frame(width: 16, height: 16, alignment: .center)
                            
                        }
                        .padding(.leading, 0)
                        .padding(.trailing, 12)
                        .padding(.vertical, 10)
                        .cornerRadius(24)
                       
                    }
                    .padding(0)
                    
                    Spacer()
                }
                  .foregroundColor(.clear)
                  .frame(width: 400, height: 537)
                  .background(.white)
                  .cornerRadius(30)
                
    
    
            }
        }
        .frame(width: 400, height: 812)
        .background(Color(red: 0.32, green: 0.23, blue: 0.89))
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
