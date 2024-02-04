package dom.core {
	
	import dom.core.Node;
	import dom.core.Element;
	import dom.core.types.DOMString;
	
	/**
	 * The TypeInfo interface represents a type referenced from Element or Attr 
	 * nodes, specified in the schemas associated with the document. The type 
	 * is a pair of a namespace URI and name properties, and depends on the 
	 * document's schema. 
	 * 
	 * <p><strong>Note:</strong> This is not implemented in Mozilla.</p>
	 * 
	 * @see http://developer.mozilla.org/En/DOM/TypeInfo MDC - TypeInfo
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#TypeInfo W3C - TypeInfo
	 * 
	 * @playerversion DOMCore 3
	 * @since DOMCore 3
	 */
	public class TypeInfo {
		
		/**
		 * If the document's schema is an XML Schema, this constant represents the derivation by extension.
		 * 
		 * <p>
		 * The reference type definition is derived by restriction from the other type 
		 * definition if the other type definition is the same as the reference type definition, 
		 * or if the other type definition can be reached recursively following the {base type 
		 * definition} property from the reference type definition, and all the derivation 
		 * methods involved are restriction. </p>
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const DERIVATION_RESTRICTION:Number = 1;
		
		/**
		 * If the document's schema is an XML Schema, this constant represents the list.
		 * 
		 * <p>
		 * The reference type definition is derived by extension from the other 
		 * type definition if the other type definition can be reached recursively
		 * following the {base type definition} property from the reference type
		 * definition, and at least one of the derivation methods involved is 
		 * an extension.</p>
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const DERIVATION_EXTENSION:Number = 2;
		
		/**
		 * If the document's schema is an XML Schema, this constant represents the derivation by 
		 * restriction  if complex types are involved, or a restriction  if simple types are involved.
		 * 
		 * <p>
		 * The reference type definition is derived by union from the other 
		 * type definition if there exists two type definitions T1 and T2 such 
		 * as the reference type definition is derived from T1 by DERIVATION_RESTRICTION 
		 * or DERIVATION_EXTENSION, T2 is derived from the other type definition 
		 * by DERIVATION_RESTRICTION, T1 has {variety} union, and one of the {member 
		 * type definitions} is T2. Note that T1 could be the same as the reference 
		 * type definition, and T2 could be the same as the other type definition. </p>
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const DERIVATION_UNION:Number = 4;
		
		/**
		 * If the document's schema is an XML Schema [XML Schema Part 1], this 
		 * constant represents the union if simple types are involved.
		 * 
		 * <p>
		 * The reference type definition is derived by list from the other type 
		 * definition if there exists two type definitions T1 and T2 such as 
		 * the reference type definition is derived from T1 by DERIVATION_RESTRICTION 
		 * or DERIVATION_EXTENSION, T2 is derived from the other type definition 
		 * by DERIVATION_RESTRICTION, T1 has {variety} list, and T2 is the {item 
		 * type definition}. Note that T1 could be the same as the reference type 
		 * definition, and T2 could be the same as the other type definition. </p>
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const DERIVATION_LIST:Number = 8;
		
		/**
		 * The name of a type declared for the associated element or attribute, 
		 * or null if unknown. 
		 * 
		 * @see http://developer.mozilla.org/En/DOM/TypeInfo.typeName MDC - TypeInfo.typeName
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#TypeInfo-typeName W3C - TypeInfo.typeName
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get typeName():DOMString { return null; };
		
		/**
		 * The namespace of the type declared for the associated element 
		 * or attribute or null if the element does not have declaration or 
		 * if no namespace information is available. 
		 * 
		 * @see http://developer.mozilla.org/En/DOM/TypeInfo.typeNamespace MDC - TypeInfo.typeNamespace
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#TypeInfo-typeNamespace W3C - TypeInfo.typeNamespace
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get typeNamespace():DOMString { return null; };
		
		/**
		 * This method returns if there is a derivation between the reference 
		 * type definition, i.e. the TypeInfo on which the method is being called, 
		 * and the other type definition, i.e. the one passed as parameters. 
		 * 
		 * @param	typeNamespaceArg The namespace of the other type definition. 
		 * @param	typeNameArg The name of the other type definition. 
		 * @param	derivationMethod The type of derivation and conditions applied 
		 * between two types, as described in the list of constants provided in this interface. 
		 * 
		 * @return If the document's schema is a DTD or no schema is associated 
		 * with the document, this method will always return false.
		 * 
		 * <p>
		 * If the document's schema is an XML Schema, the method will true if the reference 
		 * type definition is derived from the other type definition according to the 
		 * derivation parameter. If the value of the parameter is 0 (no bit is set to 1 for 
		 * the derivationMethod parameter), the method will return true if the other 
		 * type definition can be reached by recursing any combination of {base type 
		 * definition}, {item type definition}, or {member type definitions} from the 
		 * reference type definition. </p>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/TypeInfo.isDerivedFrom MDC - TypeInfo.isDerivedFrom()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#TypeInfo-isDerivedFrom W3C - TypeInfo.isDerivedFrom()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function isDerivedFrom(typeNamespaceArg:DOMString, typeNameArg:DOMString, derivationMethod:Number):Boolean { return false; };
	}
}