//
//  ObjectValidator.swift
//  RxValidator iOS
//
//  Created by Vlad Bataev on 12/29/19.
//

open class ObjectValidator<T: Any> {
    public func validate(_ value: T?) throws {}
    
    public init() {}
}
