//  Copyright © Koji Torishima All Rights Reserved.

import SwiftUI

struct ItemList: View {
    var body: some View {
        List {
            Section("item") {
                NavigationLink("Button") {
                    Buttons()
                }
                NavigationLink("Menu") {
                    Menus()
                }
                NavigationLink("Picker") {
                    Pickers()
                }
                NavigationLink("Progress Indicators") {
                    ProgressIndicators()
                }
                NavigationLink("Segmented Controls") {
                    SegmentedControls()
                }
                NavigationLink("Slider") {
                    Sliders()
                }
                NavigationLink("Stepper") {
                    Steppers()
                }
                NavigationLink("Text Fields") {
                    TextFields()
                }
                NavigationLink("Toggles") {
                    Toggles()
                }
            }
            Section("View") {
                NavigationLink("Action Sheets") {
                    ActionSheets()
                }
                NavigationLink("Activity View") {
                    ActivityView()
                }
                NavigationLink("Alerts") {
                    Alerts()
                }
                NavigationLink("Contextual Menus") {
                    ContextualMenus()
                }
                NavigationLink("Popovers") {
                    Popovers()
                }
                NavigationLink("Sheets") {
                    Sheets()
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ItemList()
    }
}
