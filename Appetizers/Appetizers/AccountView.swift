//
//  AccountView.swift
//  Appetizers
//
//  Created by Prateek Kumar on 30/11/23.
//

import SwiftUI

struct AccountView: View{
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View{
        NavigationView{
            Form{
                Section(header: Text("Personal Info")){
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled()
                    DatePicker("Birthday", selection: $viewModel.user.birthDate,
                                displayedComponents: .date)
                    Button{
                        viewModel.saveChanges()
                    } label: { Text("SAVE CHANGES") }
                }
                
                Section(header: Text("Requests")){
                    Toggle("Extra Napkins",isOn: $viewModel.user.extraNapkins).toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                    Toggle("Frequent Refills",isOn: $viewModel.user.frequentRefills).toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                }
            }
            .navigationTitle("Account")
        }
        .onAppear(){
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem){ alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
