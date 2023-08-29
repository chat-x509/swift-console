// Generated by ASN1.ERP.UNO Compiler, Copyright © 2023 Namdak Tonpa.
import SwiftASN1
import Crypto
import Foundation

@usableFromInline struct V: DERImplicitlyTaggable, Hashable, Sendable {
    @inlinable static var defaultIdentifier: ASN1Identifier { .sequence }
    @usableFromInline var a: [ArraySlice<UInt8>]
    @usableFromInline var b: [ArraySlice<UInt8>]
    @usableFromInline var c: ArraySlice<UInt8>
    @usableFromInline var d: ArraySlice<UInt8>
    @usableFromInline var e: Bool
    @usableFromInline var f: Bool
    @usableFromInline var g: [ArraySlice<UInt8>]?
    @usableFromInline var h: [ArraySlice<UInt8>]?
    @usableFromInline var i: ArraySlice<UInt8>?
    @usableFromInline var j: ArraySlice<UInt8>?
    @usableFromInline var k: ASN1OctetString?
    @usableFromInline var l: Bool?
    @inlinable init(a: [ArraySlice<UInt8>], b: [ArraySlice<UInt8>], c: ArraySlice<UInt8>, d: ArraySlice<UInt8>, e: Bool, f: Bool, g: [ArraySlice<UInt8>]?, h: [ArraySlice<UInt8>]?, i: ArraySlice<UInt8>?, j: ArraySlice<UInt8>?, k: ASN1OctetString?, l: Bool?) {
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.e = e
        self.f = f
        self.g = g
        self.h = h
        self.i = i
        self.j = j
        self.k = k
        self.l = l
    }
    @inlinable init(derEncoded root: ASN1Node,
        withIdentifier identifier: ASN1Identifier) throws {
        self = try DER.sequence(root, identifier: identifier) { nodes in
            let a: [ArraySlice<UInt8>] = try DER.explicitlyTagged(&nodes, tagNumber: 1, tagClass: .contextSpecific) { node in try DER.set(of: ArraySlice<UInt8>.self, identifier: .set, rootNode: node) }
            let b: [ArraySlice<UInt8>] = try DER.explicitlyTagged(&nodes, tagNumber: 2, tagClass: .contextSpecific) { node in try DER.set(of: ArraySlice<UInt8>.self, identifier: .set, rootNode: node) }
            let c: ArraySlice<UInt8> = (try DER.optionalImplicitlyTagged(&nodes, tag: ASN1Identifier(tagWithNumber: 3, tagClass: .contextSpecific)))!
            let d: ArraySlice<UInt8> = try DER.explicitlyTagged(&nodes, tagNumber: 4, tagClass: .contextSpecific) { node in return try ArraySlice<UInt8>(derEncoded: node) }
            let e: Bool = (try DER.optionalImplicitlyTagged(&nodes, tag: ASN1Identifier(tagWithNumber: 5, tagClass: .contextSpecific)))!
            let f: Bool = try DER.explicitlyTagged(&nodes, tagNumber: 6, tagClass: .contextSpecific) { node in return try Bool(derEncoded: node) }
            let g: [ArraySlice<UInt8>]? = try DER.optionalExplicitlyTagged(&nodes, tagNumber: 7, tagClass: .contextSpecific) { node in try DER.set(of: ArraySlice<UInt8>.self, identifier: .set, rootNode: node) }
            let h: [ArraySlice<UInt8>]? = try DER.optionalExplicitlyTagged(&nodes, tagNumber: 8, tagClass: .contextSpecific) { node in try DER.set(of: ArraySlice<UInt8>.self, identifier: .set, rootNode: node) }
            let i: ArraySlice<UInt8>? = try DER.optionalImplicitlyTagged(&nodes, tag: ASN1Identifier(tagWithNumber: 9, tagClass: .contextSpecific))
            let j: ArraySlice<UInt8>? = try DER.optionalExplicitlyTagged(&nodes, tagNumber: 0, tagClass: .contextSpecific) { node in return try ArraySlice<UInt8>(derEncoded: node) }
            let k: ASN1OctetString? = try ASN1OctetString(derEncoded: &nodes)
            let l: Bool? = try Bool(derEncoded: &nodes)
            return V(a: a, b: b, c: c, d: d, e: e, f: f, g: g, h: h, i: i, j: j, k: k, l: l)
        }
    }
    @inlinable func serialize(into coder: inout DER.Serializer,
        withIdentifier identifier: ASN1Identifier) throws {
        try coder.appendConstructedNode(identifier: identifier) { coder in
            try coder.serialize(explicitlyTaggedWithTagNumber: 1, tagClass: .contextSpecific) { codec in try codec.serializeSetOf(a) }
            try coder.serialize(explicitlyTaggedWithTagNumber: 2, tagClass: .contextSpecific) { codec in try codec.serializeSetOf(b) }
            try coder.serializeOptionalImplicitlyTagged(c, withIdentifier: ASN1Identifier(tagWithNumber: 3, tagClass: .contextSpecific))
            try coder.serialize(explicitlyTaggedWithTagNumber: 4, tagClass: .contextSpecific) { codec in try codec.serialize(d) }
            try coder.serializeOptionalImplicitlyTagged(e, withIdentifier: ASN1Identifier(tagWithNumber: 5, tagClass: .contextSpecific))
            try coder.serialize(explicitlyTaggedWithTagNumber: 6, tagClass: .contextSpecific) { codec in try codec.serialize(f) }
            if let g = self.g { try coder.serialize(explicitlyTaggedWithTagNumber: 7, tagClass: .contextSpecific) { codec in try codec.serializeSetOf(g) } }
            if let h = self.h { try coder.serialize(explicitlyTaggedWithTagNumber: 8, tagClass: .contextSpecific) { codec in try codec.serializeSetOf(h) } }
            if let i = self.i { try coder.serializeOptionalImplicitlyTagged(i, withIdentifier: ASN1Identifier(tagWithNumber: 9, tagClass: .contextSpecific)) }
            if let j = self.j { try coder.serialize(explicitlyTaggedWithTagNumber: 0, tagClass: .contextSpecific) { codec in try codec.serialize(j) } }
            if let k = self.k { try coder.serialize(k) }
            if let l = self.l { try coder.serialize(l) }
        }
    }
}
