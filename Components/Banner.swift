//
//  Poster.swift
//  Workshop-Wizeline-MoviesList-JLRR
//
//  Created by Jose Luis Rodriguez on 06/05/22.
//

import SwiftUI

struct Poster: View {
  var image: Image
  
  var body: some View {
    image
      .resizable()
      .frame(width: 180, height: 280)
      .clipShape(RoundedRectangle(cornerRadius: 10))
      .shadow(color: .gray, radius: 10, x: 5, y: 5)
  }
}

struct Poster_Previews: PreviewProvider {
  static var previews: some View {
    Poster(image: Image("deamon"))
  }
}
