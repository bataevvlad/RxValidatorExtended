//
//  ObjectShouldBeNotNil.swift
//  RxValidator iOS
//
//  Created by Vlad Bataev on 12/29/19.
//

open class ObjectShouldBeNotNil<T>: ObjectValidator<T> {
   
    override public init() {}

    public override func validate(_ value: T?) throws {
        if (value == nil) {
            throw RxValidatorResult.nilObject
        }
    }
}

public extension ObjectShouldBeNotNil {
    static func shouldBeNotNil(_ value: T?) -> ObjectValidator<T> {
        return ObjectValidator()
    }
}
