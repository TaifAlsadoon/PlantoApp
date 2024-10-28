import SwiftUI

struct HomePage: View {
  //  let appname: String = "My Plants 🌱"
    var body: some View {
        NavigationStack {
            
            
            
            VStack(spacing: 20) {
                
                // Title with custom font size, positioned at the top and shifted to the right
                //VStack(spacing: 8) {
                 //   Text(appname)
                    //    .font(.system(size: 36)) // Font size for the title
                       // .fontWeight(.bold)
                     //   .foregroundColor(.white)
                      //  .frame(maxWidth: .infinity, alignment: .leading) // Align the title to the right
                      //  .padding(.leading, 50) // Adjust the value to control how far to shift it right
                    
                
                
                
                
                    // Line under the title (Extended)
                    Divider()
                        .background(Color.gray)
                        .frame(height: 1)
                        .padding(.horizontal, 0) // Reduced padding to make the line longer
                }
                .padding(.top, 10)
                
                // Plant Image (Aligned according to blue arrow)
                Image("image1") // Your custom plant image from Assets
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200) // Adjust size to fit design
                    .padding(.top, 30) // Adjust to fine-tune the image position as per the blue arrow
                
                // Subtitle
                Text("Start your plant journey!")
                    .font(.system(size: 24)) // Font size for subtitle
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                // Description
                Text("Now all your plants will be in one place and we will help you take care of them :)🪴")
                    .font(.system(size: 16)) // Font size for description
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                
                // Button directly under the text
                Button(action: {
                    // Action for setting plant reminder
                }) {
                    Text("Set Plant Reminder")
                        .font(.system(size: 18)) // Font size for button text
                        .fontWeight(.bold)
                        .frame(width: 280, height: 40) // Updated button size based on the image
                        .background(Color.color1) // Ensure this matches your intended button color
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.top, 20) // Adds a bit of spacing between the button and the text above
                
                Spacer() // Keep a single spacer to push the content up from the bottom
                .navigationTitle("My Plants 🌱")
            }
          .background(Color.black.edgesIgnoringSafeArea(.all)) // Black background covering the entire screen
        }
    }


    struct PlantJourneyView_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
        }
    }