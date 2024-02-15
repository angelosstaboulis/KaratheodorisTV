//
//  Biography.swift
//  Karatheodoris
//
//  Created by Angelos Staboulis on 10/2/24.
//

import SwiftUI

struct Biography: View {
    var body: some View {
            VStack{
                LinearGradient(gradient: .init(colors: [.black,.black]), startPoint: .leading, endPoint: .trailing).overlay {
                    ScrollViewReader{p in
                        VStack{
                            Form{
                                Section("Biography"){
                                    Text("Constantin Carathéodory").font(.system(size: 20)).focusable()
                                }
                                Section("Scientitst") {
                                    Text(
                        """
                        Constantin Carathéodory was a Greek mathematician who spent most of his professional career in Germany.He made significant\n contributions to real and complex analysis the calculus of variations, and measure theory.He also created an axiomatic formulation\n of thermodynamics.Carathéodory is considered one of the greatest mathematicians of his era and the most renowned Greek\n mathematician since antiquity
                        """
                                    ).font(.system(size: 20)).fixedSize(horizontal: true, vertical: true)
                                        .focusable()
                                }
                                Section("Birthdate"){
                                    Text("September 13, 1873").font(.system(size: 20)).focusable()
                                }
                                Section("Died"){
                                    Text("February 2, 1950").font(.system(size: 20)).focusable()
                                }
                                Section("Town/Country"){
                                    Text("Berlin, German Empire").font(.system(size: 20)).focusable()
                                }
                                Section("Nationality"){
                                    Text("Greek").font(.system(size: 20)).focusable()
                                }
                                Section("Fields"){
                                    Text("Calculus of variations").font(.system(size: 20)).focusable()
                                    Text("Real analysis").font(.system(size: 20)).focusable()
                                    Text("Complex analysis").font(.system(size: 20)).focusable()
                                    Text("Measure theory").font(.system(size: 20)).focusable()
                                }
                                Section("Institutions"){
                                    Text("University of Bonn").font(.system(size: 20)).focusable()
                                    Text("Hannover Technical High School").font(.system(size: 20)).focusable()
                                    Text("Breslau Technical High School").font(.system(size: 20)).focusable()
                                    Text("University of Göttingen").font(.system(size: 20)).focusable()
                                    Text("University of Berlin").font(.system(size: 20)).focusable()
                                    Text("University of Munich").font(.system(size: 20)).focusable()
                                    Text("National Technical University of Athens").font(.system(size: 20)).focusable()
                                    Text("Ionian University of Smyrna").font(.system(size: 20)).focusable()
                                }
                            }
                           
                        }
                    }
                }
            }.frame(width:1200,height:900)
      }
}

#Preview {
    Biography()
}
