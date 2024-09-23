// Generated by ASN1.ERP.UNO Compiler, Copyright © 2023 Namdak Tonpa.
import SwiftASN1
import Crypto
import Foundation

@usableFromInline struct X: DERImplicitlyTaggable, Hashable, Sendable {
    @inlinable static var defaultIdentifier: ASN1Identifier { .set }
    @usableFromInline var a: ArraySlice<UInt8>
    @usableFromInline var b: [ASN1OctetString]
    @usableFromInline var d: Real
    @inlinable init(a: ArraySlice<UInt8>, b: [ASN1OctetString], d: Real) {
        self.a = a
        self.b = b
        self.d = d
    }
    @inlinable init(derEncoded root: ASN1Node,
        withIdentifier identifier: ASN1Identifier) throws {
        self = try DER.set(root, identifier: identifier) { nodes in
            let a: ArraySlice<UInt8> = try ArraySlice<UInt8>(derEncoded: &nodes)
            let b: [ASN1OctetString] = try DER.set(of: ASN1OctetString.self, identifier: .set, nodes: &nodes)
            let d: Real = try Real(derEncoded: &nodes)
            return X(a: a, b: b, d: d)
        }
    }
    @inlinable func serialize(into coder: inout DER.Serializer,
        withIdentifier identifier: ASN1Identifier) throws {
        try coder.appendConstructedNode(identifier: identifier) { coder in
            try coder.serialize(a)
            try coder.serializeSetOf(b)
            try coder.serialize(d)
        }
    }
}