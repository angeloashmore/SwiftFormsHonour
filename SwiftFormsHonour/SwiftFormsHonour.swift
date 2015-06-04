//
//  SwiftFormsHonour.swift
//
//  Created by Angelo Ashmore on 6/2/15.
//  Copyright (c) 2015 Angelo Ashmore. All rights reserved.
//

import SwiftForms
import Honour

public typealias ValidatorClosure = (FormRowDescriptor) -> Validator

extension FormRowDescriptor.Configuration {
    public static let ValidatorClosure = "FormRowDescriptorConfigurationValidatorClosure"
}

extension FormDescriptor {
    public func validateFormWithHonour() -> Bool {
        for section in sections {
            for row in section.rows {
                if let validatorClosure = row.configuration[FormRowDescriptor.Configuration.ValidatorClosure] as? ValidatorClosure {
                    if let rowValue = row.value as? String {
                        let validator = validatorClosure(row)
                        let result = validator.asset(rowValue)

                        if !result.isValid {
                            return false
                        }
                    } else {
                        return false
                    }
                }
            }
        }

        return true
    }
}
