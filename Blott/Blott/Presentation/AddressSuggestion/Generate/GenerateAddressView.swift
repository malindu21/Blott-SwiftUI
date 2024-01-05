//
//  GenerateAddressView.swift
//  Blott
//
//  Created by Doc990 App on 2024-01-05.
//

import SwiftUI

struct GennerateAddressView: View {

    @ObservedObject var viewModel : OnBoardingAddressViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
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
                        .simultaneousGesture(TapGesture().onEnded {
              
                            presentationMode.wrappedValue.dismiss()
                        })
                        
                    }
                    .padding(0)
                    .frame(width: 327, height: 24, alignment: .topLeading)
                    
                    Spacer().frame(height: 10)
                    
                    HStack( spacing: 10) {
                        
                        // Heading/xl: 30px
                        Text("Your address")
                            .font(
                                Font.custom("Roboto", size: 30)
                                    .weight(.bold)
                            )
                            .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.13))
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
                    Text("Double check these are all correct! 🏠")
                      .font(Font.custom("Roboto", size: 16))
                      .foregroundColor(Color(red: 0.45, green: 0.45, blue: 0.45))
                      .frame(maxWidth: .infinity, alignment: .topLeading)
                }
                .padding(0)
                .frame(width: 327, alignment: .topLeading)
                
                
                Spacer().frame(height: 54)
                
             
                
                GennerateAddressViewTextFields(viewModel: viewModel)
                
                
                
                
                Spacer()
                
                NavigationLink(destination: RegisterView().navigationBarHidden(true)){
                    HStack{
                        Spacer()
                        
                        HStack(alignment: .center, spacing: 0) {
                            
                            Image("ChevronRight")
                                .frame(width: 24, height: 24)
                        }
                        .padding(16)
                        
                        .background( Color(red: 0.32, green: 0.23, blue: 0.89))
                        .cornerRadius(9999)
                        .shadow(color: .black.opacity(0.08), radius: 2, x: 0, y: 2)
                        
                    }
                }
           
                
                
            }
            .padding()
        }
    }
}

struct GennerateAddressViewTextFields: View {
    
    @ObservedObject var viewModel : OnBoardingAddressViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30){
            VStack(alignment: .leading, spacing: 10) {
                // Text/Regular/xs: 12px
                Text("Address Line 1 *")
                    .font(Font.custom("Roboto", size: 12))
                    .foregroundColor(Color(red: 0.32, green: 0.32, blue: 0.32))
                
               
                
                VStack(alignment: .leading, spacing: 4) {
                    
                    TextField("SW1A 1AA", text: $viewModel.line1)
                        .font(
                            Font.custom("Roboto", size: 20)
                                .weight(.medium)
                        )
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .padding(0)
            .frame(width: 327, alignment: .topLeading)
            
            
            VStack(alignment: .leading, spacing: 10) {
                // Text/Regular/xs: 12px
                Text("Address Line 2 *")
                    .font(Font.custom("Roboto", size: 12))
                    .foregroundColor(Color(red: 0.32, green: 0.32, blue: 0.32))
                

                
                VStack(alignment: .leading, spacing: 4) {
                    
                    TextField("SW1A 1AA", text: $viewModel.line2)
                        .font(
                            Font.custom("Roboto", size: 20)
                                .weight(.medium)
                        )
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .padding(0)
            .frame(width: 327, alignment: .topLeading)
            
            
            
            VStack(alignment: .leading, spacing: 10) {
                // Text/Regular/xs: 12px
                Text("City *")
                    .font(Font.custom("Roboto", size: 12))
                    .foregroundColor(Color(red: 0.32, green: 0.32, blue: 0.32))
                
                
                
                VStack(alignment: .leading, spacing: 4) {
                    
                    TextField("SW1A 1AA", text: $viewModel.city
                    )
                        .font(
                            Font.custom("Roboto", size: 20)
                                .weight(.medium)
                        )
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .padding(0)
            .frame(width: 327, alignment: .topLeading)
            
            
            
            
            VStack(alignment: .leading, spacing: 10) {
                // Text/Regular/xs: 12px
                Text("Postcode *")
                    .font(Font.custom("Roboto", size: 12))
                    .foregroundColor(Color(red: 163 / 255, green: 163 / 255, blue: 163 / 255))
                
              
                
                VStack(alignment: .leading, spacing: 4) {
                    
                    TextField("SW1A 1AA", text: $viewModel.postalCode)
                        .font(
                            Font.custom("Roboto", size: 20)
                                .weight(.medium)
                        )
                        .foregroundColor(Color(red: 163 / 255, green: 163 / 255, blue: 163 / 255))
                        .disabled(true) // Use the disabled modifier
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .padding(0)
            .frame(width: 327, alignment: .topLeading)
            
            
            VStack(alignment: .leading, spacing: 10) {
                // Text/Regular/xs: 12px
                Text("Country *")
                    .font(Font.custom("Roboto", size: 12))
                    .foregroundColor(Color(red: 163 / 255, green: 163 / 255, blue: 163 / 255))
                
  
                
                VStack(alignment: .leading, spacing: 4) {
                    
                    TextField("SW1A 1AA", text: $viewModel.country)
                        .font(
                            Font.custom("Roboto", size: 20)
                                .weight(.medium)
                        )
                        .foregroundColor(Color(red: 163 / 255, green: 163 / 255, blue: 163 / 255))
                        .disabled(true) // Use the disabled modifier
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .padding(0)
            .frame(width: 327, alignment: .topLeading)
        }
    }
}

struct GennerateAddressView_Previews: PreviewProvider {
    static var previews: some View {
        GennerateAddressView(viewModel: OnBoardingAddressViewModel())
    }
}
