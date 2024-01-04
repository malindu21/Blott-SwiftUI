//
//  RegisterView.swift
//  Blott
//
//  Created by Blott App on 2023-12-27.
//

import SwiftUI

struct RegisterView: View {
    @StateObject private var viewModel = RegisterViewModel()

    var body: some View {
        NavigationView{
                ZStack {
                    VStack {
                        Spacer().frame(height: 25)
                        VStack(alignment: .leading, spacing: 0) {
                            HStack(alignment: .center, spacing: 10) {
                                Text("Terms & Conditions")
                                    .font(Font.custom("Roboto", size: 30).weight(.bold))
                                    .foregroundColor(Color(white: 0.98))
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
                            Text("Please have a read over these documents,\npolicies and terms.")
                                .font(Font.custom("Roboto", size: 14))
                                .foregroundColor(Color(white: 0.98))
                                .frame(width: 295, alignment: .topLeading)
                        }
                        .padding(0)
                        .frame(width: 327, alignment: .topLeading)
                        
                        Spacer()
                        
                        VStack {
                            Spacer().frame(height: 16)
                            HStack(alignment: .center, spacing: 4) {
                                Text("Tap here to check boxes")
                                    .font(Font.custom("Roboto", size: 16).weight(.medium))
                                    .foregroundColor(Color(white: 0.07))
                            }
                            .padding(12)
                            .frame(width: 327, alignment: .center)
                            .background(Color(white: 0.95))
                            .cornerRadius(24)
                            .onTapGesture {
                                viewModel.isTsClicked = true
                                viewModel.isPsClicked = true
                            }
                            
                            CheckboxRow(text: "Terms of service", isOn: $viewModel.isTsClicked)
                            CheckboxRow(text: "Payment services agreement", isOn: $viewModel.isPsClicked)
                            
                            Spacer()
                            
                            HStack(alignment: .center, spacing: 4) {
                                Text("Agree")
                                    .font(Font.custom("Roboto", size: 16).weight(.medium))
                                    .foregroundColor(Color(white: 0.98))
                            }
                            .padding(12)
                            .frame(width: 327, alignment: .center)
                            .background(Color(red: 0.32, green: 0.23, blue: 0.89))
                            .cornerRadius(24)
                            
                            Spacer().frame(height: 10)
                        }
                        .foregroundColor(.clear)
                        .frame(width: 400, height: 537)
                        .background(Color.white)
                        .cornerRadius(30)
                    }
                }
                .frame(width: 400, height: 812)
                .background(Color(red: 0.32, green: 0.23, blue: 0.89))
        }
    }
}

struct CheckboxRow: View {
    var text: String
    @Binding var isOn: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Spacer().frame(height: 26)
            HStack(spacing: 8) {
                Toggle(isOn: $isOn) { EmptyView() }
                    .toggleStyle(CheckboxStyle())
                    .foregroundColor(Color(red: 0.32, green: 0.23, blue: 0.89))
                    .frame(width: 10)
                
                Spacer().frame(width: 5)
                
                Text(text)
                    .font(Font.custom("Roboto", size: 16))
                    .foregroundColor(Color(white: 0.09))
                Spacer()
            }
            .frame(width: 327)
            .padding(0)
            
            Spacer().frame(height: 26)
            
            NavigationLink(destination: WebView(url: "https://www.blott.money").navigationBarHidden(true)){
                    HStack(alignment: .center, spacing: 4) {
                        Text("Read in detail")
                            .font(Font.custom("Roboto", size: 14).weight(.medium))
                            .foregroundColor(Color(white: 0.15))
                        
                        HStack(alignment: .center, spacing: 0) {
                            Image("arrow-right")
                                .frame(width: 6.065, height: 11.89333)
                        }
                        .padding(.leading, 5.27333)
                        .padding(.trailing, 4.66167)
                        .padding(.vertical, 2.05333)
                        .frame(width: 16, height: 16, alignment: .center)
                    }
            }
      
            .padding(.leading, 0)
            .padding(.trailing, 12)
            .padding(.vertical, 10)
            .cornerRadius(24)
        }
        .padding(0)
    }
}

struct CheckboxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            Spacer()
            Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(configuration.isOn ? Color(red: 0.32, green: 0.23, blue: 0.89) : .gray)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
