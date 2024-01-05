//
//  OnBoardingAddressViewModel.swift
//  Blott
//
//  Created by Doc990 App on 2024-01-05.
//

import Foundation
import SwiftUI
import Alamofire

class OnBoardingAddressViewModel: ObservableObject {
    @Published var address: String = ""
    @Published var selectedId: String = ""
    @Published var line1: String = ""
    @Published var line2: String = ""
    @Published var city: String = ""
    @Published var postalCode: String = ""
    @Published var country: String = ""
    @Published var isValidationPassed = false
    var suggestions: [OnBoardingAddressModel] = []
    @Published var resultList: [[String: Any]] = []
    //private var cancellables: Set<AnyCancellable> = []
    @Published  var onBackPressed = false
    @Published  var isLoading = false
    @Published  var isSelected = false

    func areVariablesEmpty() -> Bool {
        return isSelected
    }

    func buttonBackgroundColor() -> Color {
        return areVariablesEmpty() ? Color(red: 0.32, green: 0.23, blue: 0.89) : Color(red: 203 / 255.0, green: 195 / 255.0, blue: 227 / 255.0)

    }
    
    func newValueChange(value: String) {
        
        if value.count >= 2  {
            if !isSelected {
                fetchData(term: value, category: "yourCategory")
            }
        }else {
            isSelected = false
        }
        
    }
    

    func fetchData(term: String, category: String) {
          isLoading = true

          let url = "https://api.getAddress.io/autocomplete/\(term)?api-key=A9OWx8UBM0Srlh7JtYoXwA41367"

          AF.request(url, method: .get)
              .validate()
              .responseJSON { response in
                  self.isLoading = false
                  switch response.result {
                  case .success(let value):
                      if let json = value as? [String: Any], let suggestionsArray = json["suggestions"] as? [[String: Any]] {
                          self.suggestions = suggestionsArray.map { suggestion in
                              // Assuming "address", "id", and "url" are the keys in the response
                              let address = suggestion["address"] as? String ?? ""
                              let id = suggestion["id"] as? String ?? ""
                              let url = suggestion["url"] as? String ?? ""
                              return OnBoardingAddressModel(address: address, id: id, url: url)
                          }
                          //print("\(suggestionsArray)")
                      }

                  case .failure(let error):
                      // Handle failure
                      print("Error: \(error) url : \(url)")
                  }
              }
      }
    
    func generateFetchedData(id: String) {
        if isSelected {
           

            let url = "https://api.getAddress.io/get/\(id)?api-key=A9OWx8UBM0Srlh7JtYoXwA41367"

            AF.request(url, method: .get)
                .validate()
                .responseDecodable(of: GenerateAddressModel.self) { response in
                  
                    switch response.result {
                    case .success(let addressDetails):
                        // Handle success, and you can use the decoded model 'addressDetails'
                        print("Fetched Data: \(addressDetails)")
                    
                        self.line1       =   addressDetails.line_1
                        self.line2       =   addressDetails.line_2
                    
                        self.city        =   addressDetails.town_or_city
                        self.postalCode  =   addressDetails.postcode
                        self.country     =   addressDetails.county
                        
                    case .failure(let error):
                        // Handle failure
                        print("Error: \(error) url : \(url)")
                    }
                }
        }else {
            print("Error: Not Selected")
        }
        
    }
    func validateAndProceed() {
        if areVariablesEmpty() {
            isValidationPassed = true
        }
    }
}
