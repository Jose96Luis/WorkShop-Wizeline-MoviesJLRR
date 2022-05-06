//
//  MovieDetails.swift
//  Workshop-Wizeline-MoviesList-JLRR
//
//  Created by Jose Luis Rodriguez on 06/05/22.
//

import SwiftUI

struct MovieDetails: View {
  @State private var animate = false
  
  var movie: Movie
  
  var body: some View {
    VStack(alignment: .center) {
      Poster(image: movie.image)
            .scaleEffect(animate ? 1 : 0.3)
        .animation(.easeInOut, value: animate)
        
      Text(movie.author)
        .foregroundColor(Color.gray)
        .padding(.top, 15.0)
        
      Text(movie.title)
        .font(.title3)
        .fontWeight(.semibold)
        
      Text(movie.description)
        .foregroundColor(Color.gray)
        .padding()
      HStack {
          
        Text(movie.genre[0])
          .fontWeight(.semibold)
          .padding(10)
          .overlay(
            RoundedRectangle(cornerRadius: 20)
              .stroke(Color.cyan, lineWidth: 1)
          )
          .scaleEffect(animate ? 1 : 0.1)
          .rotationEffect(.degrees(animate ? 0: 360))
          .opacity(animate ? 5 : 0)
          
        Text(movie.genre[1])
          .fontWeight(.semibold)
          .padding(10)
          .overlay(
            RoundedRectangle(cornerRadius: 20)
              .stroke(Color.cyan, lineWidth: 1)
          )
          .scaleEffect(animate ? 1 : 0.1)
          .rotationEffect(.degrees(animate ? 0: 360))
          .opacity(animate ? 5 : 0)
      }
      Divider()
        .padding()
      Button("Buy for $\(movie.price, specifier: "%.2f")") {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
      }
        //Estilo boton de compra
      .padding(25.0)
      .background(Color.green)
      .foregroundColor(.blue)
      .clipShape(Capsule())
    }
    .onAppear {
      withAnimation {
          animate.toggle()
      }
    }
  }
}

struct MovieDetails_Previews: PreviewProvider {
  static var previews: some View {
    MovieDetails(movie: moviesData[0])
  }
}

