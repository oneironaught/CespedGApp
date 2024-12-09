// Cesped G Lawn Care Service App
// Created using Swift for Xcode

import SwiftUI
import Foundation
import UIKit


struct CespedGApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Welcome to Césped G Lawn Care Services")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                Image("myLogo") // Replace with your logo file
                    .resizable()
                    .scaledToFit()
                    .frame(height: 350)

                Text("We provide professional lawn care services with a touch of perfection. Contact us today!")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()

                NavigationLink(destination: ServicesView()) {
                    Text("Our Services")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }

                NavigationLink(destination: ContactView()) {
                    Text("Contact Us")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct ServicesView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Our Services")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                ServiceRow(title: "Lawn Mowing", description: "Precise and efficient mowing for a perfect lawn.", url: "https://calendly.com/cespedgtx/15min")
                ServiceRow(title: "Landscaping", description: "Creative designs to enhance your outdoor space.", url: "https://calendly.com/yourname/landscaping")
                ServiceRow(title: "Weed Control", description: "Effective solutions to keep your lawn weed-free.", url: "https://calendly.com/yourname/weed-control")
                ServiceRow(title: "Fertilization", description: "Quality fertilizers to nourish your grass.", url: "https://calendly.com/yourname/fertilization")
                ServiceRow(title: "Seasonal Cleanups", description: "Complete cleanup utilizing all services to maintain lawn health.", url: "https://calendly.com/yourname/seasonal-cleanups")
                ServiceRow(title: "Multiple Services", description: "Utilizes multiple services but not all to maintain lawn health.", url: "https://calendly.com/yourname/seasonal-cleanups")
            }
            .padding()
        }
        .navigationTitle("Services")
    }
}

struct ServiceRow: View {
    let title: String
    let description: String
    let url: String

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.headline)
                .foregroundColor(.green)

            Text(description)
                .font(.subheadline)
                .foregroundColor(.secondary)

            Button(action: {
                if let bookingURL = URL(string: url) {
                    UIApplication.shared.open(bookingURL)
                }
            }) {
                Text("Book Now")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct ContactView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Contact Us")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Phone: 956-678-8454")
                .font(.headline)

            Button(action: {
                if let phoneURL = URL(string: "tel://9566788454") {
                    UIApplication.shared.open(phoneURL)
                }
            }) {
                Text("Call Now")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10)
            }
                Button(action: {
                    if let bookingURL = URL(string: "https://calendly.com/cespedgtx/15min") {
                        UIApplication.shared.open(bookingURL)
                }
            }) {
                Text("Free Consultation")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
            }
            
                Image("man_mowing") // Replace with your logo file
                    .resizable()
                    .scaledToFit()
                    .frame(height: 350)

            Spacer()
        }
        .padding()
        .navigationTitle("Contact")
    }
}

