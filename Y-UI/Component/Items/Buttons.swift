//  Copyright © Koji Torishima All Rights Reserved.

import SwiftUI

struct YButton: View {
    
    private let text: String
    private let textsize: CGFloat
    private let labelColor: Color
    private let backgroundColor: Color
    private let cornerRadius: CGFloat
    private let strokeColor: Color?
    private let height: CGFloat
    
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Text(text)
                .font(.system(size: textsize))
                .foregroundStyle(labelColor)
                .frame(maxWidth: .infinity)
        })
        .frame(maxWidth: .infinity, maxHeight: height)
        .background(backgroundColor)
        .clipShape(.rect(cornerRadius: cornerRadius))
        .overlay {
            if let strokeColor {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(strokeColor, lineWidth: 1)
            }
        }
    }
    
    init(
        text: String,
        textsize: CGFloat,
        labelColor: Color,
        backgroundColor: Color,
        cornerRadius: CGFloat,
        strokeColor: Color? = nil,
        height: CGFloat,
        action: @escaping () -> Void
    ) {
        self.text = text
        self.textsize = textsize
        self.labelColor = labelColor
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.strokeColor = strokeColor
        self.height = height
        self.action = action
    }
}

struct Buttons: View {
    var body: some View {
        VStack(spacing: 16) {
            // Stroke
            YButton(
                text: "Button",
                textsize: 16,
                labelColor: Color(.buttonLabel),
                backgroundColor: Color(.buttonStroke),
                cornerRadius: 12,
                strokeColor: Color(.border),
                height: 50) {
                    print("action")
                }
            // Fill
            YButton(
                text: "Button",
                textsize: 16,
                labelColor: Color(.buttonLabelFill),
                backgroundColor: Color(.buttonFill),
                cornerRadius: 12,
                strokeColor: Color(.border),
                height: 50) {
                    print("action")
                }
            HStack {
                // Stroke
                YButton(
                    text: "Button",
                    textsize: 16,
                    labelColor: Color(.buttonLabel),
                    backgroundColor: Color(.buttonStroke),
                    cornerRadius: 12,
                    strokeColor: Color(.border),
                    height: 50) {
                        print("action")
                    }
                // Fill
                YButton(
                    text: "Button",
                    textsize: 16,
                    labelColor: Color(.buttonLabelFill),
                    backgroundColor: Color(.buttonFill),
                    cornerRadius: 12,
                    strokeColor: Color(.border),
                    height: 50) {
                        print("action")
                    }
            }
            HStack {
                // Stroke
                YButton(
                    text: "Button",
                    textsize: 12,
                    labelColor: Color(.buttonLabel),
                    backgroundColor: Color(.buttonStroke),
                    cornerRadius: 8,
                    strokeColor: Color(.border),
                    height: 30) {
                        print("action")
                    }
                // Fill
                YButton(
                    text: "Button",
                    textsize: 12,
                    labelColor: Color(.buttonLabelFill),
                    backgroundColor: Color(.buttonFill),
                    cornerRadius: 8,
                    strokeColor: Color(.border),
                    height: 30) {
                        print("action")
                    }
                // Stroke
                YButton(
                    text: "Button",
                    textsize: 12,
                    labelColor: Color(.buttonLabel),
                    backgroundColor: Color(.buttonStroke),
                    cornerRadius: 8,
                    strokeColor: Color(.border),
                    height: 30) {
                        print("action")
                    }
                // Fill
                YButton(
                    text: "Button",
                    textsize: 12,
                    labelColor: Color(.buttonLabelFill),
                    backgroundColor: Color(.buttonFill),
                    cornerRadius: 8,
                    strokeColor: Color(.border),
                    height: 30) {
                        print("action")
                    }
            }
            YButton(
                text: "Button",
                textsize: 20,
                labelColor: Color(.yOffWhite),
                backgroundColor: Color(.yNavy),
                cornerRadius: 12,
                height: 50) {
                    print("action")
                }
            YButton(
                text: "Button",
                textsize: 20,
                labelColor: Color(.yOffWhite),
                backgroundColor: Color(.yKhaki),
                cornerRadius: 12,
                height: 50) {
                    print("action")
                }
            YButton(
                text: "Button",
                textsize: 20,
                labelColor: Color(.yOffWhite),
                backgroundColor: Color(.yBordeaux),
                cornerRadius: 12,
                height: 50) {
                    print("action")
                }
            YButton(
                text: "Button",
                textsize: 20,
                labelColor: Color(.yOffWhite),
                backgroundColor: Color(.yCharcoal),
                cornerRadius: 12,
                height: 50) {
                    print("action")
                }
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    ZStack {
        Color(.backgroundPrimary)
            .ignoresSafeArea()
        HStack {
            
            Buttons()
        }
        .padding()
        
    }
}
