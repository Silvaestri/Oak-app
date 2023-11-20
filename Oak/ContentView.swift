//
//  ContentView.swift
//  Oak
//
//  Created by Sabrina Silvestri on 15/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var sliderValue: Double = 50
    
//    func getSliderValue (_ sliderValue: Double) -> String {
//        var returnValue: String
//        if sliderValue < 33.33 {
//            HStack{
//                Text("1 SET")
//                    
//                Text("(Recommended)")
//                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                Spacer()
//                Text("40 SEC")
//                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//            }
//            .font(.body)
//            .fontWeight(.semibold)
//            return returnValue
//    }
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font: UIFont(name: "Arial", size: 41), .foregroundColor: UIColor.brown]
    }
    
    var body: some View {
        
        NavigationStack{
            
            ScrollView{
                
                ScrollView(.horizontal){
                    LazyHStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 100, height: 150)
                                .overlay(Image("background")
                                    .scaledToFit()
                                    .offset(x: 0, y: -160))
                                .cornerRadius(15)
                                .foregroundColor(.gray)
                                .padding(.horizontal, 5)
                            Text("Deep Calm")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.top, 100)
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 100, height: 150)
                                .overlay(Image("background")
                                    .scaledToFit()
                                    .offset(x: -100, y: -160))
                                .cornerRadius(15)
                                .foregroundColor(.gray)
                                .padding(.horizontal, 5)
                            Text("Box")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.top, 100)
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 100, height: 150)
                                .overlay(Image("background")
                                    .scaledToFit()
                                    .offset(x: -200, y: -160))
                                .cornerRadius(15)
                                .foregroundColor(.gray)
                                .padding(.horizontal, 5)
                            Text("Awake")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.top, 100)
                        }
                    }
                    .padding()
                    .padding(.top)
                    
                }
                
                VStack(alignment: .leading){
                    Text("The power of deep calm")
                        .font(.title)
                        .padding(.top, 30)
                        .padding(.horizontal)
                        .fontWeight(.regular)
                        .foregroundColor(Color(UIColor.darkGray))
                    Text("This exercise has been called \"a natural tranquilizer for the nervous system\" by Dr.Andrew Weil, easing the body into a state of calmness and relaxation. Note: Always discontinue use if feeling lightheaded.")
                        .font(.title3)
                        .padding(.top, 5)
                        .padding(.horizontal)
                        .fontWeight(.regular)
                        .foregroundColor(Color(UIColor.darkGray))
                    
                    VStack(alignment: .leading){
                        Text("METHOD")
                            .font(.caption2)
                            .padding(.top, 30)
                            .padding(.horizontal)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(UIColor.darkGray))
                        Divider()
                        
                        VStack(alignment: .leading) {
                            Text("Inhale for 4 seconds")
                            Divider()
                            Text("Hold for 7 seconds")
                            Divider()
                            Text("Exhale for 8 seconds")
                        }
                        .foregroundColor(Color(UIColor.gray))
                        .padding(.leading)
                        Divider()
                    }
                    
                }
                .navigationBarTitle(Text("Breathe"))
                Slider(value: $sliderValue, in: 0...100, step: 3)
                    .padding()
            }
            .background(
                    Image("background")
                        .resizable()
                        .scaledToFill()
                        .opacity(0.2)
                        .ignoresSafeArea()
                        .offset(x: 0, y: -500)
            .background(Color.yellow.opacity(0.1))
            )
            
        }
        ZStack(alignment: .center){
            Rectangle()
                .frame(width: 350, height: 60)
                .cornerRadius(100)
                .foregroundColor(.gray)
            Button {
            } label: {
                Text("BEGIN EXERCISE")
                    .foregroundStyle(.white)
                    .font(.headline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(width: 360, height: 60)
                
            }
        }
      
    }
    
}
#Preview {
    ContentView()
}
