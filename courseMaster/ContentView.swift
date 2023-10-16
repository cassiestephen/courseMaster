//
//  ContentView.swift
//  courseMaster
//
//  Created by Cassie on 9/27/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                HomePage()//.offset(y: -60) // shifts it up
                NavigationLink(destination: InputPage(), label: { Text("Get Started")
                        .bold()
                        .frame(width: 280, height: 80)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        .font(.system(size: 25, weight: .medium))
                    
                }).offset(y: -250)
            }
        }
    }
}

struct Variables {
    static var num_jumps = "6"
    static var num_oxers = "2"
    static var arena_shape = "rectangle"
    static var horse_size = "horse"
    static var img_1 = "2_1_oxer"
    static var img_2 = "left"
    static var img_3 = "right"
    static var img_4 = "2_1_oxer"
    static var message = ""
    static var horse_message = "For a horse, we would reccomend spacing jumps in the line/s 26 feet apart for 1 stride or 37 feet apart for 2 strides"
    
    //func set_num_jumps(
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}

struct InputPage: View {
    @State var jump_num: String = ""
    @State var oxer_num: String = ""
    @State var arena: String = ""
    @State var size_horse: String = ""
    var body: some View {
        VStack {
            HStack {
                Text("")
                Text("First, we need some logistics on your course").font(.system(size: 40, weight: .medium)).foregroundColor(.blue)
            }
            HStack {
                Text("    Number of Jumps:    ")
                TextField("Number of Jumps", text: $jump_num, prompt: Text("default: 6"))
                    .onSubmit {
                        Variables.num_jumps = jump_num
                                }
            }
            HStack {
                Text("    Number of Oxers:    ")
                TextField("Number of Oxers", text: $oxer_num, prompt: Text("default: 2"))
                    .onSubmit {
                        Variables.num_oxers = oxer_num
                        
                        if (Variables.num_jumps == "1" && Variables.num_oxers == "0") {
                            Variables.img_1 = "single"
                        }
                        else if (Variables.num_jumps == "1" && Variables.num_oxers == "1") {
                            Variables.img_1 = "double"
                        }
                        
                        else if (Variables.num_jumps == "2" && Variables.num_oxers == "0") {
                            Variables.img_1 = "2_0_oxer"
                        }
                        else if (Variables.num_jumps == "2" && Variables.num_oxers == "1") {
                            Variables.img_1 = "2_1_oxer"
                        }
                        else if (Variables.num_jumps == "2" && Variables.num_oxers == "2") {
                            Variables.img_1 = "2_2_oxer"
                        }
                        
                        else if (Variables.num_jumps == "3" && Variables.num_oxers == "0") {
                            Variables.img_1 = "3_0_oxer"
                        }
                        else if (Variables.num_jumps == "3" && Variables.num_oxers == "1") {
                            Variables.img_1 = "3_1_oxer"
                        }
                        else if (Variables.num_jumps == "3" && Variables.num_oxers == "2") {
                            Variables.img_1 = "3_2_oxer"
                        }
                        
                        else if (Variables.num_jumps == "4" && Variables.num_oxers == "0") {
                            Variables.img_1 = "single"
                            Variables.img_4 = "single"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        else if (Variables.num_jumps == "4" && Variables.num_oxers == "1") {
                            Variables.img_1 = "double"
                            Variables.img_4 = "single"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        else if (Variables.num_jumps == "4" && Variables.num_oxers == "2") {
                            Variables.img_1 = "double"
                            Variables.img_4 = "double"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        
                        else if (Variables.num_jumps == "5" && Variables.num_oxers == "0") {
                            Variables.img_1 = "2_0_oxer"
                            Variables.img_4 = "single"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        else if (Variables.num_jumps == "5" && Variables.num_oxers == "1") {
                            Variables.img_1 = "2_1_oxer"
                            Variables.img_4 = "single"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        else if (Variables.num_jumps == "5" && Variables.num_oxers == "2") {
                            Variables.img_1 = "2_1_oxer"
                            Variables.img_4 = "double"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        else if (Variables.num_jumps == "5" && Variables.num_oxers == "3") {
                            Variables.img_1 = "2_2_oxer"
                            Variables.img_4 = "double"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        
                        else if (Variables.num_jumps == "6" && Variables.num_oxers == "0") {
                            Variables.img_1 = "2_0_oxer"
                            Variables.img_4 = "2_0_oxer"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        else if (Variables.num_jumps == "6" && Variables.num_oxers == "1") {
                            Variables.img_1 = "2_1_oxer"
                            Variables.img_4 = "2_0_oxer"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        else if (Variables.num_jumps == "6" && Variables.num_oxers == "2") {
                            Variables.img_1 = "2_1_oxer"
                            Variables.img_4 = "2_1_oxer"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        else if (Variables.num_jumps == "6" && Variables.num_oxers == "3") {
                            Variables.img_1 = "2_2_oxer"
                            Variables.img_4 = "2_0_oxer"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        else if (Variables.num_jumps == "6" && Variables.num_oxers == "4") {
                            Variables.img_1 = "2_2_oxer"
                            Variables.img_4 = "2_2_oxer"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        
                        else if (Variables.num_jumps == "7" && Variables.num_oxers == "0") {
                            Variables.img_1 = "3_0_oxer"
                            Variables.img_4 = "2_0_oxer"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        else if (Variables.num_jumps == "7" && Variables.num_oxers == "1") {
                            Variables.img_1 = "3_1_oxer"
                            Variables.img_4 = "2_0_oxer"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        else if (Variables.num_jumps == "7" && Variables.num_oxers == "2") {
                            Variables.img_1 = "3_1_oxer"
                            Variables.img_4 = "2_1_oxer"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        else if (Variables.num_jumps == "7" && Variables.num_oxers == "3") {
                            Variables.img_1 = "3_2_oxer"
                            Variables.img_4 = "2_1_oxer"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        else if (Variables.num_jumps == "7" && Variables.num_oxers == "4") {
                            Variables.img_1 = "3_2_oxer"
                            Variables.img_4 = "2_2_oxer"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        
                        else if (Variables.num_jumps == "8" && Variables.num_oxers == "0") {
                            Variables.img_1 = "3_0_oxer"
                            Variables.img_4 = "3_0_oxer"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        else if (Variables.num_jumps == "8" && Variables.num_oxers == "1") {
                            Variables.img_1 = "3_1_oxer"
                            Variables.img_4 = "3_0_oxer"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        else if (Variables.num_jumps == "8" && Variables.num_oxers == "2") {
                            Variables.img_1 = "3_1_oxer"
                            Variables.img_4 = "3_1_oxer"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        else if (Variables.num_jumps == "8" && Variables.num_oxers == "3") {
                            Variables.img_1 = "3_2_oxer"
                            Variables.img_4 = "3_1_oxer"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        else if (Variables.num_jumps == "8" && Variables.num_oxers == "4") {
                            Variables.img_1 = "3_2_oxer"
                            Variables.img_4 = "3_2_oxer"
                            Variables.img_2 = "left"
                            Variables.img_3 = "right"
                        }
                        
                        else
                        {
                            Variables.img_1 = "2_1_oxer"
                            Variables.img_2 = "left_diag"
                            Variables.img_3 = "left_diag"
                            Variables.img_4 = "2_1_oxer"
                            Variables.message = "Ooops! You inputted an invalid jump and/or oxer value. We gave you a course with the default values."
                        }
                                }
            }
//            HStack {
//                Text("    Arena Shape:    ")
//                TextField("Arena Shape", text: $arena, prompt: Text("round, rectangle"))
//                    .onSubmit {
//                        Variables.arena_shape = arena
//                                }
//            }
            HStack {
                Text("    Horse Size:    ")
                TextField("Horse Size", text: $size_horse, prompt: Text("sm pony, lg pony or horse"))
                    .onSubmit {
                        Variables.horse_size = size_horse
                        if (Variables.horse_size == "small pony" || Variables.horse_size == "sm pony" || Variables.horse_size == "Small Pony")
                        {
                            Variables.horse_message = "For a small pony, we would reccomend spacing jumps in the line/s 19 feet apart for 1 stride or 29 feet apart for 2 strides"
                        }
                        else if (Variables.horse_size == "large pony" || Variables.horse_size == "pony" || Variables.horse_size == "lg pony" || Variables.horse_size == "Large Pony" ||
                            Variables.horse_size == "Pony")
                        {
                            Variables.horse_message = "For a large pony, we would reccomend spacing jumps in the line/s 23 feet apart for 1 stride or 33 feet apart for 2 strides"
                        }
                            
                                }
            }
            NavigationLink(destination: CourseCalculator(), label: { Text("Generate Course")
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .font(.system(size: 19, weight: .medium))
                
            }).offset(y: 200)
            
        }
    }
}

struct CourseCalculator: View {
    var body: some View {
        VStack {
            HStack {
                Text("")
                Spacer()
                Text(Variables.horse_message).font(.system(size: 20, weight: .medium)).foregroundColor(.blue)
                Spacer()
                Text("")
            }
            Text("")
            Text("")
            Text("")
            Text("")
            HStack {
                // want 4 pictures all next to each other in middle
                // depending on the vars they will be different...
                Image(Variables.img_1).resizable().frame(width: 86, height: 161.7, alignment: .center)
                Image(Variables.img_2).resizable().frame(width: 86, height: 131.7, alignment: .center)
                Image(Variables.img_3).resizable().frame(width: 86, height: 131.7, alignment: .center)
                Image(Variables.img_4).resizable().frame(width: 86, height: 161.7, alignment: .center)
                
                
            }
        }
        HStack {
            Spacer()
            Text(Variables.message).font(.system(size: 20, weight: .medium)).foregroundColor(.red)
            Spacer()
        }
    }
}


struct HomePage: View {
    var body: some View {
        VStack {
            Spacer()
            Image("icons8-horse-jump-64").resizable().frame(width: 100, height: 100, alignment: .center)
            Text("CourseMaster").font(.system(size: 50, weight: .medium)).foregroundColor(.blue)
            Text("courses designed by horse people").italic()
            Text("for horse people").italic()
            Spacer()
            Spacer()
//            HStack {
//                Text(" CourseMaster").font(.system(size: 30, weight: .medium)).foregroundColor(.blue)
//                Image("icons8-horse-jump-64").resizable().frame(width: 50, height: 50, alignment: .center)
//                Spacer()
//            }
//            Spacer()
//            Text("courses designed by horse people for horse people")
//            Spacer()
//                Button {
//                        } label: { // what button looks like
//                            Text("Get Started").frame(width: 280, height: 50).background(.gray).font(.system(size: 20, weight: .bold, design: .default)).cornerRadius(10)
//                            }
//            Spacer()
            
        }
    }
}
