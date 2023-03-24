//
//  TextViews.swift
//  Bullseye_SwiftUi
//
//  Created by Jelle Zwart on 22/03/2023.
//

import SwiftUI

struct InstructionText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .multilineTextAlignment(.center)
      .lineSpacing(4)
      .font(.footnote)
      .kerning(2.0)
      .foregroundColor(Color("TextColor"))
  }
}

struct BigNumberText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .kerning(-1.0)
      .font(.largeTitle)
      .fontWeight(.black)
      .bold()
      .foregroundColor(Color("TextColor"))
  }
}

struct SliderLabelText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .foregroundColor(Color("TextColor"))
  }
}

struct LabelText: View {
  var title: String
  
  var body: some View {
    Text(title.uppercased())
      .kerning(1.5)
      .font(.caption)
      .bold()
      .foregroundColor(Color("TextColor"))
  }
}


struct BodyText: View {
  var title: String
  
  var body: some View {
    Text(title)
      .font(.subheadline)
      .fontWeight(.semibold)
      .multilineTextAlignment(.center)
      .lineSpacing(12)
  }
}

struct ButtonText: View {
  var title: String
  
  var body: some View {
    Text(title)
      .bold()
      .padding()
      .frame(maxWidth: .infinity)
      .background(
        Color.accentColor
      )
      .foregroundColor(.white)
      .cornerRadius(12)
  }
}

struct ScoreText: View {
  var score: Int
  
  var body: some View {
    Text(String(score))
      .bold()
      .kerning(-0.2)
      .foregroundColor(Color("TextColor"))
      .font(.title3)
  }
}

struct DateText: View {
  var date: Date
  
  var body: some View {
    Text(date, style: .time)
      .bold()
      .kerning(-0.2)
      .foregroundColor(Color("TextColor"))
      .font(.title3)
  }
}


struct BigBoldText : View {
  var text: String
  
  var body: some View {
    Text(text.uppercased())
      .kerning(2)
      .foregroundColor(Color("TextColor"))
      .font(.title)
      .fontWeight(.black)
  }
}
struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      InstructionText(text: "Instructions")
      BigNumberText(text: "999")
      SliderLabelText(text: "1")
      LabelText(title: "Ronde")
      BodyText(title: "You scored 200 points 😻😻😻")
      ButtonText(title: "Start new round")
      ScoreText(score: 459)
      DateText(date: Date())
      BigBoldText(text: "Leaderboard")
    }
    .padding()
  }
}
