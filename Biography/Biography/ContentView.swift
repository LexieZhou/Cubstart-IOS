//
//  ContentView.swift
//  Biography
//
//  Created by Enya Do on 3/7/23.
//

import SwiftUI

struct ContentView: View {
    //PART 2B - Create booleans to track your sheet visibility
    @State private var showingSheet1 = false
    @State private var showingSheet2 = false
    @State private var showingSheet3 = false
    @State private var showingSheet4 = false
    
    
    var body: some View {
        //PART1A - Design your header
        VStack(
            alignment: .center,
            spacing: 20
        ) {
            Text("Biography of Puff")
                .fontDesign(.serif)
                .font(.largeTitle)
                .frame(width: 300)
                
            Image("puff")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250.0, height: 250.0, alignment: .center)
                .clipShape(Circle())
            
            //PART1B - Add your form containing your buttons
            Form {
                Button("Puff loves ... "){
                    showingSheet1.toggle()
                }
                .padding()
                .foregroundColor(.black)
                .fontDesign(.serif)
                .sheet(isPresented: $showingSheet1) {
                    Sheet1()
                }
                
                Button("Puff's family ..."){
                    showingSheet2.toggle()
                }
                .padding()
                .foregroundColor(.black)
                .fontDesign(.serif)
                .sheet(isPresented: $showingSheet2) {
                    Sheet2()
                }
                Button("Puff is good at ..."){
                    showingSheet3.toggle()
                }
                .padding()
                .foregroundColor(.black)
                .fontDesign(.serif)
                .sheet(isPresented: $showingSheet3) {
                    Sheet3()
                }
                Button("Puff 's meme ..."){
                    showingSheet4.toggle()
                }
                .padding()
                .foregroundColor(.black)
                .fontDesign(.serif)
                .sheet(isPresented: $showingSheet4) {
                    Sheet4()
                }
            }
        }
    }
}

//PART2A - Creating a sheet
struct Sheet1: View {
    //This code allows us to call the dismiss() function which closes the sheet view
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        //Add some content to the body of your sheet!
        //Remember to include a button that just calls dismiss() in the action

        VStack(
            alignment: .center
        ){
            HStack {
                Button("Back") {
                    dismiss();
                }
                Spacer()
            }.padding()
            
            Text("Puff loves ... ?")
                .fontDesign(.serif)
                .font(.largeTitle)
                .frame(width: 500)
                .padding()
            Form {
                Button("Loves fish the most"){
                }
                .padding()
                .foregroundColor(.black)
                .fontDesign(.serif)
                Button("Also loves meet"){
                }
                .padding()
                .foregroundColor(.black)
                .fontDesign(.serif)
                Button("Loves rice"){
                }
                .padding()
                .foregroundColor(.black)
                .fontDesign(.serif)
                Button("Loves biscuit"){
                }
                .padding()
                .foregroundColor(.black)
                .fontDesign(.serif)
            }.padding()
        }
    }

}
struct Sheet2: View {
    //This code allows us to call the dismiss() function which closes the sheet view
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        //Add some content to the body of your sheet!
        //Remember to include a button that just calls dismiss() in the action
        VStack (alignment: .center) {
            HStack {
                Button("Back") {
                    dismiss();
                }
                Spacer()
            }
            Text("Puff's Family")
                .fontDesign(.serif)
                .font(.largeTitle)
                .frame(width: 500)
                .padding()
            Form {
                Button("Mom: American Shorthair Cat"){
                }
                .padding()
                .foregroundColor(.black)
                .fontDesign(.serif)
                Button("Dad: Scotch Fold"){
                }
                .padding()
                .foregroundColor(.black)
                .fontDesign(.serif)
            }
        }
            
    }

}
struct Sheet3: View {
    //This code allows us to call the dismiss() function which closes the sheet view
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        //Add some content to the body of your sheet!
        //Remember to include a button that just calls dismiss() in the action
        VStack (alignment: .center) {
            HStack {
                Button("Back") {
                    dismiss();
                }
                Spacer()
            }
            
            Text("Puff is good at")
                .fontDesign(.serif)
                .font(.largeTitle)
                .frame(width: 500)
            Form {
                Button("play ball of yarn"){
                }
                .padding()
                .foregroundColor(.black)
                .fontDesign(.serif)
                Button("eat fish"){
                }
                .padding()
                .foregroundColor(.black)
                .fontDesign(.serif)
            }
        }
            
    }

}
struct Sheet4: View {
    //This code allows us to call the dismiss() function which closes the sheet view
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        //Add some content to the body of your sheet!
        //Remember to include a button that just calls dismiss() in the action
        VStack (alignment: .center) {
            HStack {
                Button("Back") {
                    dismiss();
                }
                
                Spacer()
            }
            
            Text("Puff 's meme")
                .fontDesign(.serif)
                .font(.largeTitle)
                .frame(width: 500)
            HStack {
                VStack {
                    Image("meme1")
                    Image("meme3")
                }
                VStack {
                    Image("meme4")
                    Image("meme2")
                }
            }.padding()
        }
            
    }

}

// As a reminder the code below displays a live preview of your app, feel free to comment out or delete it!
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
