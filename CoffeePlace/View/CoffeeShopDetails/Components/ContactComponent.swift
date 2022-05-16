//
//  ContactComponent.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 16/05/22.
//

import SwiftUI


struct ContactComponent: View {
    var contact : Contact
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Text("Contatos")
                    .bold()
                    .font(.title)
                    .padding()
                
                Spacer()
            }
            
            ContactItem(icon: "envelope.fill", content: contact.email)
            ContactItem(icon: "phone.fill", content: String(contact.phone))
            ContactItem(icon: "person.2.fill", content: contact.socialMedia)
            
        }
    }
}


struct ContactComponent_Previews: PreviewProvider {
    static var previews: some View {
        ContactComponent(
            contact: Contact(email: "user@gmail.com", phone: 85989172323, socialMedia: "@instagram")
        )
    }
}

struct ContactItem: View {
    var icon : String
    var content : String
    
    var body: some View {
        HStack{
            Image(systemName: icon)
            Text(content)
                .font(.body)
                .foregroundColor(.gray)
            
        }.padding()
    }
}
