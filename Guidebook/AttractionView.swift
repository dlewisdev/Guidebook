//
//  AttractionView.swift
//  Guidebook
//
//  Created by Danielle Lewis on 12/12/23.
//

import SwiftUI

struct AttractionView: View {
    var city: City
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(city.attractions) { attraction in
                    
                    NavigationLink {
                        DetailView(attraciton: attraction)
                    } label: {
                        AttractionRow(attraction: attraction)
                            .padding(.bottom, 50)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    AttractionView(city: City(name: "Tokyo", summary: "Test summary", imageName: "tokyo", attractions: [
        Attraction(name: "Louvre Museum",
                   summary: "The Louvre, or the Louvre Museum is a national art museum in Paris, France.",
                   longDescription: """
The Louvre or the Louvre Museum is a national art museum in Paris, France. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement (district or ward) and home to some of the most canonical works of Western art, including the Mona Lisa and the Venus de Milo. The museum is housed in the Louvre Palace, originally built in the late 12th to 13th century under Philip II. Remnants of the Medieval Louvre fortress are visible in the basement of the museum. Due to urban expansion, the fortress eventually lost its defensive function, and in 1546 Francis I converted it into the primary residence of the French Kings.
""",
                   imageName: "louvre", latLong: "48.860752239687095, 2.337686912770478")
    ]))
}
