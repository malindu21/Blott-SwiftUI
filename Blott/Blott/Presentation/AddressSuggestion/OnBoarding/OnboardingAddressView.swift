//
//  OnboardingNameView.swift
//  Blott
//
//  Created by Blott App on 2023-12-27.
//

import SwiftUI

struct OnboardingAddressView: View {


    @StateObject private var viewModel = OnBoardingAddressViewModel()
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
                    
                    Text("Just start typing in your postcode and we’ll do the rest! 🏠")
                        .font(Font.custom("Roboto", size: 16))
                        .foregroundColor(Color(red: 0.45, green: 0.45, blue: 0.45))
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                }
                .padding(0)
                .frame(width: 327, alignment: .topLeading)
                
                
                Spacer().frame(height: 54)
                
                VStack(spacing: 4) {
                    
                        
                    TextField("SW1A 1AA", text: $viewModel.address,  axis: .vertical)
                        .font(
                            Font.custom("Roboto", size: 20)
                                .weight(.medium)
                        )
                        .foregroundColor(.black)
                        .lineLimit(2...3)
                        .onChange(of: viewModel.address) { newValue in
                                   
                            viewModel.newValueChange(value: newValue)
                         
                            }
                               
                    if viewModel.isLoading {
                        ProgressView("LOADING...")
                    }else if viewModel.isSelected {
                        EmptyView()
                    }else   {
                        List(viewModel.suggestions.filter { $0.address.contains(viewModel.address) }, id: \.id) { suggestion in
                            Text(suggestion.address)
                                .font(Font.custom("Roboto", size: 14).weight(.medium))
                                .foregroundColor(.black)
                                .onTapGesture {
                                    viewModel.address = suggestion.address
                                    viewModel.selectedId = suggestion.id
                                    viewModel.isSelected = true
                                    viewModel.generateFetchedData(id: viewModel.selectedId)
                                }
                        }
                        .listStyle(PlainListStyle()) // Set listStyle to PlainListStyle to remove default background
                        .frame(height: 375)
                        .foregroundColor(.white) // Set text color
                        .background(Color.white) // Set background color
                    }
                    
                
                    
                }
                .padding(0)
                .frame(width: 327, alignment: .topLeading)
              
                Spacer()
                
                NavigationLink(destination: GennerateAddressView(viewModel: viewModel).navigationBarHidden(true)){
                    HStack{
                        Spacer()
                        
                        HStack(alignment: .center, spacing: 0) {
                            
                            Image("ChevronRight")
                                .frame(width: 24, height: 24)
                        }
                        .padding(16)
                        
                        .background( viewModel.buttonBackgroundColor() )
                        .cornerRadius(9999)
                        .shadow(color: .black.opacity(0.08), radius: 2, x: 0, y: 2)
                       
                        
                    }
                }
           
                
                
            }
            .padding()
        }
    }
}

struct OnboardingAddressView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingAddressView()
    }
}
