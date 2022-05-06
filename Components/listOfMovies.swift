//
//  listOfMovies.swift
//  Workshop-Wizeline-MoviesList-JLRR
//
//  Created by Jose Luis Rodriguez on 06/05/22.
//

import SwiftUI

struct listOfMovies: View {
  
  var movie: Movie
  
  var body: some View {
    ZStack {
      HStack(alignment: .top) {
        movie.image
          .resizable()
          .frame(width: 90, height: 130)
          .clipShape(RoundedRectangle(cornerRadius: 10))
          .shadow(color: .gray, radius: 10, x: 5, y: 5)
        VStack(alignment: .leading) {
          Text(movie.title)
            .font(.title2)
            .fontWeight(.semibold)
          Text(movie.author)
            .font(.subheadline)
            .foregroundColor(Color.gray)
          HStack {
            Image("netflix")
              .resizable()
              .frame(width: 50, height: 25)
            
            Image("prime")
              .resizable()
              .frame(width: 50, height: 25)
          }
          .padding(.top, 5.0)
          Text("$\(movie.price, specifier: "%.2f")")
            .font(.title3)
        }
        Spacer()
      }
      .padding(.leading, 10.0)
    }
  }
}

struct MovieRow_Previews: PreviewProvider {
  static var previews: some View {
    listOfMovies(movie: moviesData[0])
      .previewLayout(.fixed(width: 500, height: 180))
  }
  
}

