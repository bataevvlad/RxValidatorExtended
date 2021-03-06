//
//  DropDownValidator.swift
//  RxValidator iOS
//
//  Created by Vlad Bataev on 12/29/19.
//

open class DropDownValidator<T: Numeric & Comparable>: NumberShouldGreaterThan<T> {
    
    public let errorMessage: String
    
    public init(_ number: T, errorMessage: String) {
        self.errorMessage = errorMessage
        super.init(number)
    }
    
    public override func validate(_ value: T?) throws {
        if (value == nil || value! <= number) {
            throw RxValidatorResult.notValidWithMessage(message: errorMessage)
        }
    }
}

extension DropDownValidator {
    open class func with(errorMessage: String) -> DropDownValidator<T> {
        return DropDownValidator(0, errorMessage: errorMessage)
    }
}
