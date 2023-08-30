// Generated by ASN1.ERP.UNO Compiler, Copyright © 2023 Namdak Tonpa.
import SwiftASN1
import Crypto
import Foundation

@usableFromInline struct V_y_Sequence: DERImplicitlyTaggable, Hashable, Sendable {
    @inlinable static var defaultIdentifier: ASN1Identifier { .sequence }
    @usableFromInline var d1: Bool
    @usableFromInline var d2: Bool
    @usableFromInline var d3: ArraySlice<UInt8>
    @usableFromInline var d4: ArraySlice<UInt8>
    @inlinable init(d1: Bool, d2: Bool, d3: ArraySlice<UInt8>, d4: ArraySlice<UInt8>) {
        self.d1 = d1
        self.d2 = d2
        self.d3 = d3
        self.d4 = d4
    }
    @inlinable init(derEncoded root: ASN1Node,
        withIdentifier identifier: ASN1Identifier) throws {
        self = try DER.sequence(root, identifier: identifier) { nodes in
            let d1 = try Bool(derEncoded: &nodes)
            let d2 = try Bool(derEncoded: &nodes)
            let d3 = try ArraySlice<UInt8>(derEncoded: &nodes)
            let d4 = try ArraySlice<UInt8>(derEncoded: &nodes)
            return V_y_Sequence(d1: d1, d2: d2, d3: d3, d4: d4)
        }
    }
    @inlinable func serialize(into coder: inout DER.Serializer,
        withIdentifier identifier: ASN1Identifier) throws {
        try coder.appendConstructedNode(identifier: identifier) { coder in
            try coder.serialize(d1)
            try coder.serialize(d2)
            try coder.serialize(d3)
            try coder.serialize(d4)
        }
    }
}
