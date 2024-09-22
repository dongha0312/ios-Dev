//
//  UnitConverterView.swift
//  UnitConverter
//
//  Created by Dongha Ryu on 9/10/24.
//

import SwiftUI

struct UnitConverterView: View {
    @State private var inputValue: Double?
    @State private var selectedInputUnit: UnitLength = .meters
    @State private var selectedOutputUnit: UnitLength = .feet
    @FocusState private var isInputFocused: Bool
    
    let availableUnit: [UnitLength] = [.meters, .kilometers, .yards, .feet, .miles]
    
    //Coumputed property to handle conversion logic
    var convertedValue: Double?{
        guard let inputValue = inputValue else { return nil }
        
        let inputMeasurment = Measurement(value: inputValue, unit: selectedInputUnit)
        return inputMeasurment.converted(to: selectedOutputUnit).value
    }
    
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 30) {
                
                Text("UnitConverter App")
                
                // Input Units Picker
                PickerSection(
                    title: "Input Units",
                    units: availableUnit,
                    selectedUnit: $selectedInputUnit
                )
                
                // Output Units Picker
                PickerSection(
                    title: "Output Units", 
                    units: availableUnit,
                    selectedUnit: $selectedOutputUnit
                )
                
                // Input Data TextField
                InputSection(
                    title: "Input Data",
                    placehorder: "Enter a number",
                    value: $inputValue,
                    isFocused: $isInputFocused
                )
                // Output Result Display
                OutputSection (
                    title: "Result",
                    output: convertedValue?.formatted() ?? ""
                )
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
