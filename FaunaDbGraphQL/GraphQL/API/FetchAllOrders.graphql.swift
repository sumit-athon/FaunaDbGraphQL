// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class FindAllOrderQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query findAllOrder($userId: String!) {
      findOrdersByUserId(userId: $userId) {
        __typename
        cl_order_id
        cl_created_at
        cl_order_image_url
        cl_order_items {
          __typename
          cl_name
          cl_image_url
          cl_sku
          cl_quantity
          cl_formatted_total_amount
        }
        cl_attributes {
          __typename
          cl_customer_email
          cl_number
          cl_status
          cl_skus_count
          cl_currency_code
          cl_payment_status
          cl_formatted_shipping_taxable_amount
          cl_formatted_total_taxable_amount
          cl_formatted_subtotal_amount
          cl_formatted_shipping_amount
          cl_formatted_subtotal_tax_amount
          cl_formatted_shipping_tax_amount
          cl_formatted_total_amount_with_taxes
          cl_formatted_total_amount
        }
        cl_payment {
          __typename
          cl_type
          cl_payment_method_details {
            __typename
            cl_brand
            cl_funding
            cl_last4
            cl_exp_year
            cl_exp_month
          }
        }
        cl_shipping {
          __typename
          cl_lng
          cl_line_2
          cl_city
          cl_line_1
          cl_state_code
          cl_email
          cl_company
          cl_lat
          cl_phone
          cl_full_name
          cl_country_code
          cl_zip_code
        }
        cl_billing {
          __typename
          cl_lng
          cl_line_2
          cl_city
          cl_line_1
          cl_state_code
          cl_email
          cl_company
          cl_lat
          cl_phone
          cl_full_name
          cl_country_code
          cl_zip_code
        }
      }
    }
    """

  public let operationName: String = "findAllOrder"

  public var userId: String

  public init(userId: String) {
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("findOrdersByUserId", arguments: ["userId": GraphQLVariable("userId")], type: .list(.object(FindOrdersByUserId.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(findOrdersByUserId: [FindOrdersByUserId?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "findOrdersByUserId": findOrdersByUserId.flatMap { (value: [FindOrdersByUserId?]) -> [ResultMap?] in value.map { (value: FindOrdersByUserId?) -> ResultMap? in value.flatMap { (value: FindOrdersByUserId) -> ResultMap in value.resultMap } } }])
    }

    public var findOrdersByUserId: [FindOrdersByUserId?]? {
      get {
        return (resultMap["findOrdersByUserId"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [FindOrdersByUserId?] in value.map { (value: ResultMap?) -> FindOrdersByUserId? in value.flatMap { (value: ResultMap) -> FindOrdersByUserId in FindOrdersByUserId(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [FindOrdersByUserId?]) -> [ResultMap?] in value.map { (value: FindOrdersByUserId?) -> ResultMap? in value.flatMap { (value: FindOrdersByUserId) -> ResultMap in value.resultMap } } }, forKey: "findOrdersByUserId")
      }
    }

    public struct FindOrdersByUserId: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Order"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("cl_order_id", type: .scalar(String.self)),
          GraphQLField("cl_created_at", type: .scalar(String.self)),
          GraphQLField("cl_order_image_url", type: .scalar(String.self)),
          GraphQLField("cl_order_items", type: .list(.object(ClOrderItem.selections))),
          GraphQLField("cl_attributes", type: .object(ClAttribute.selections)),
          GraphQLField("cl_payment", type: .object(ClPayment.selections)),
          GraphQLField("cl_shipping", type: .object(ClShipping.selections)),
          GraphQLField("cl_billing", type: .object(ClBilling.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(clOrderId: String? = nil, clCreatedAt: String? = nil, clOrderImageUrl: String? = nil, clOrderItems: [ClOrderItem?]? = nil, clAttributes: ClAttribute? = nil, clPayment: ClPayment? = nil, clShipping: ClShipping? = nil, clBilling: ClBilling? = nil) {
        self.init(unsafeResultMap: ["__typename": "Order", "cl_order_id": clOrderId, "cl_created_at": clCreatedAt, "cl_order_image_url": clOrderImageUrl, "cl_order_items": clOrderItems.flatMap { (value: [ClOrderItem?]) -> [ResultMap?] in value.map { (value: ClOrderItem?) -> ResultMap? in value.flatMap { (value: ClOrderItem) -> ResultMap in value.resultMap } } }, "cl_attributes": clAttributes.flatMap { (value: ClAttribute) -> ResultMap in value.resultMap }, "cl_payment": clPayment.flatMap { (value: ClPayment) -> ResultMap in value.resultMap }, "cl_shipping": clShipping.flatMap { (value: ClShipping) -> ResultMap in value.resultMap }, "cl_billing": clBilling.flatMap { (value: ClBilling) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var clOrderId: String? {
        get {
          return resultMap["cl_order_id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "cl_order_id")
        }
      }

      public var clCreatedAt: String? {
        get {
          return resultMap["cl_created_at"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "cl_created_at")
        }
      }

      public var clOrderImageUrl: String? {
        get {
          return resultMap["cl_order_image_url"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "cl_order_image_url")
        }
      }

      public var clOrderItems: [ClOrderItem?]? {
        get {
          return (resultMap["cl_order_items"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ClOrderItem?] in value.map { (value: ResultMap?) -> ClOrderItem? in value.flatMap { (value: ResultMap) -> ClOrderItem in ClOrderItem(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [ClOrderItem?]) -> [ResultMap?] in value.map { (value: ClOrderItem?) -> ResultMap? in value.flatMap { (value: ClOrderItem) -> ResultMap in value.resultMap } } }, forKey: "cl_order_items")
        }
      }

      public var clAttributes: ClAttribute? {
        get {
          return (resultMap["cl_attributes"] as? ResultMap).flatMap { ClAttribute(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "cl_attributes")
        }
      }

      public var clPayment: ClPayment? {
        get {
          return (resultMap["cl_payment"] as? ResultMap).flatMap { ClPayment(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "cl_payment")
        }
      }

      public var clShipping: ClShipping? {
        get {
          return (resultMap["cl_shipping"] as? ResultMap).flatMap { ClShipping(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "cl_shipping")
        }
      }

      public var clBilling: ClBilling? {
        get {
          return (resultMap["cl_billing"] as? ResultMap).flatMap { ClBilling(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "cl_billing")
        }
      }

      public struct ClOrderItem: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["OrderItem"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("cl_name", type: .scalar(String.self)),
            GraphQLField("cl_image_url", type: .scalar(String.self)),
            GraphQLField("cl_sku", type: .scalar(String.self)),
            GraphQLField("cl_quantity", type: .scalar(String.self)),
            GraphQLField("cl_formatted_total_amount", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(clName: String? = nil, clImageUrl: String? = nil, clSku: String? = nil, clQuantity: String? = nil, clFormattedTotalAmount: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "OrderItem", "cl_name": clName, "cl_image_url": clImageUrl, "cl_sku": clSku, "cl_quantity": clQuantity, "cl_formatted_total_amount": clFormattedTotalAmount])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var clName: String? {
          get {
            return resultMap["cl_name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_name")
          }
        }

        public var clImageUrl: String? {
          get {
            return resultMap["cl_image_url"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_image_url")
          }
        }

        public var clSku: String? {
          get {
            return resultMap["cl_sku"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_sku")
          }
        }

        public var clQuantity: String? {
          get {
            return resultMap["cl_quantity"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_quantity")
          }
        }

        public var clFormattedTotalAmount: String? {
          get {
            return resultMap["cl_formatted_total_amount"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_formatted_total_amount")
          }
        }
      }

      public struct ClAttribute: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["OrderAttribute"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("cl_customer_email", type: .scalar(String.self)),
            GraphQLField("cl_number", type: .scalar(String.self)),
            GraphQLField("cl_status", type: .scalar(String.self)),
            GraphQLField("cl_skus_count", type: .scalar(String.self)),
            GraphQLField("cl_currency_code", type: .scalar(String.self)),
            GraphQLField("cl_payment_status", type: .scalar(String.self)),
            GraphQLField("cl_formatted_shipping_taxable_amount", type: .scalar(String.self)),
            GraphQLField("cl_formatted_total_taxable_amount", type: .scalar(String.self)),
            GraphQLField("cl_formatted_subtotal_amount", type: .scalar(String.self)),
            GraphQLField("cl_formatted_shipping_amount", type: .scalar(String.self)),
            GraphQLField("cl_formatted_subtotal_tax_amount", type: .scalar(String.self)),
            GraphQLField("cl_formatted_shipping_tax_amount", type: .scalar(String.self)),
            GraphQLField("cl_formatted_total_amount_with_taxes", type: .scalar(String.self)),
            GraphQLField("cl_formatted_total_amount", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(clCustomerEmail: String? = nil, clNumber: String? = nil, clStatus: String? = nil, clSkusCount: String? = nil, clCurrencyCode: String? = nil, clPaymentStatus: String? = nil, clFormattedShippingTaxableAmount: String? = nil, clFormattedTotalTaxableAmount: String? = nil, clFormattedSubtotalAmount: String? = nil, clFormattedShippingAmount: String? = nil, clFormattedSubtotalTaxAmount: String? = nil, clFormattedShippingTaxAmount: String? = nil, clFormattedTotalAmountWithTaxes: String? = nil, clFormattedTotalAmount: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "OrderAttribute", "cl_customer_email": clCustomerEmail, "cl_number": clNumber, "cl_status": clStatus, "cl_skus_count": clSkusCount, "cl_currency_code": clCurrencyCode, "cl_payment_status": clPaymentStatus, "cl_formatted_shipping_taxable_amount": clFormattedShippingTaxableAmount, "cl_formatted_total_taxable_amount": clFormattedTotalTaxableAmount, "cl_formatted_subtotal_amount": clFormattedSubtotalAmount, "cl_formatted_shipping_amount": clFormattedShippingAmount, "cl_formatted_subtotal_tax_amount": clFormattedSubtotalTaxAmount, "cl_formatted_shipping_tax_amount": clFormattedShippingTaxAmount, "cl_formatted_total_amount_with_taxes": clFormattedTotalAmountWithTaxes, "cl_formatted_total_amount": clFormattedTotalAmount])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var clCustomerEmail: String? {
          get {
            return resultMap["cl_customer_email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_customer_email")
          }
        }

        public var clNumber: String? {
          get {
            return resultMap["cl_number"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_number")
          }
        }

        public var clStatus: String? {
          get {
            return resultMap["cl_status"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_status")
          }
        }

        public var clSkusCount: String? {
          get {
            return resultMap["cl_skus_count"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_skus_count")
          }
        }

        public var clCurrencyCode: String? {
          get {
            return resultMap["cl_currency_code"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_currency_code")
          }
        }

        public var clPaymentStatus: String? {
          get {
            return resultMap["cl_payment_status"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_payment_status")
          }
        }

        public var clFormattedShippingTaxableAmount: String? {
          get {
            return resultMap["cl_formatted_shipping_taxable_amount"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_formatted_shipping_taxable_amount")
          }
        }

        public var clFormattedTotalTaxableAmount: String? {
          get {
            return resultMap["cl_formatted_total_taxable_amount"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_formatted_total_taxable_amount")
          }
        }

        public var clFormattedSubtotalAmount: String? {
          get {
            return resultMap["cl_formatted_subtotal_amount"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_formatted_subtotal_amount")
          }
        }

        public var clFormattedShippingAmount: String? {
          get {
            return resultMap["cl_formatted_shipping_amount"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_formatted_shipping_amount")
          }
        }

        public var clFormattedSubtotalTaxAmount: String? {
          get {
            return resultMap["cl_formatted_subtotal_tax_amount"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_formatted_subtotal_tax_amount")
          }
        }

        public var clFormattedShippingTaxAmount: String? {
          get {
            return resultMap["cl_formatted_shipping_tax_amount"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_formatted_shipping_tax_amount")
          }
        }

        public var clFormattedTotalAmountWithTaxes: String? {
          get {
            return resultMap["cl_formatted_total_amount_with_taxes"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_formatted_total_amount_with_taxes")
          }
        }

        public var clFormattedTotalAmount: String? {
          get {
            return resultMap["cl_formatted_total_amount"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_formatted_total_amount")
          }
        }
      }

      public struct ClPayment: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PaymentSourceDetail"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("cl_type", type: .scalar(String.self)),
            GraphQLField("cl_payment_method_details", type: .object(ClPaymentMethodDetail.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(clType: String? = nil, clPaymentMethodDetails: ClPaymentMethodDetail? = nil) {
          self.init(unsafeResultMap: ["__typename": "PaymentSourceDetail", "cl_type": clType, "cl_payment_method_details": clPaymentMethodDetails.flatMap { (value: ClPaymentMethodDetail) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var clType: String? {
          get {
            return resultMap["cl_type"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_type")
          }
        }

        public var clPaymentMethodDetails: ClPaymentMethodDetail? {
          get {
            return (resultMap["cl_payment_method_details"] as? ResultMap).flatMap { ClPaymentMethodDetail(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "cl_payment_method_details")
          }
        }

        public struct ClPaymentMethodDetail: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["PaymentMethodDetail"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("cl_brand", type: .scalar(String.self)),
              GraphQLField("cl_funding", type: .scalar(String.self)),
              GraphQLField("cl_last4", type: .scalar(String.self)),
              GraphQLField("cl_exp_year", type: .scalar(String.self)),
              GraphQLField("cl_exp_month", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(clBrand: String? = nil, clFunding: String? = nil, clLast4: String? = nil, clExpYear: String? = nil, clExpMonth: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "PaymentMethodDetail", "cl_brand": clBrand, "cl_funding": clFunding, "cl_last4": clLast4, "cl_exp_year": clExpYear, "cl_exp_month": clExpMonth])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var clBrand: String? {
            get {
              return resultMap["cl_brand"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "cl_brand")
            }
          }

          public var clFunding: String? {
            get {
              return resultMap["cl_funding"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "cl_funding")
            }
          }

          public var clLast4: String? {
            get {
              return resultMap["cl_last4"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "cl_last4")
            }
          }

          public var clExpYear: String? {
            get {
              return resultMap["cl_exp_year"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "cl_exp_year")
            }
          }

          public var clExpMonth: String? {
            get {
              return resultMap["cl_exp_month"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "cl_exp_month")
            }
          }
        }
      }

      public struct ClShipping: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Address"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("cl_lng", type: .scalar(String.self)),
            GraphQLField("cl_line_2", type: .scalar(String.self)),
            GraphQLField("cl_city", type: .scalar(String.self)),
            GraphQLField("cl_line_1", type: .scalar(String.self)),
            GraphQLField("cl_state_code", type: .scalar(String.self)),
            GraphQLField("cl_email", type: .scalar(String.self)),
            GraphQLField("cl_company", type: .scalar(String.self)),
            GraphQLField("cl_lat", type: .scalar(String.self)),
            GraphQLField("cl_phone", type: .scalar(String.self)),
            GraphQLField("cl_full_name", type: .scalar(String.self)),
            GraphQLField("cl_country_code", type: .scalar(String.self)),
            GraphQLField("cl_zip_code", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(clLng: String? = nil, clLine_2: String? = nil, clCity: String? = nil, clLine_1: String? = nil, clStateCode: String? = nil, clEmail: String? = nil, clCompany: String? = nil, clLat: String? = nil, clPhone: String? = nil, clFullName: String? = nil, clCountryCode: String? = nil, clZipCode: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Address", "cl_lng": clLng, "cl_line_2": clLine_2, "cl_city": clCity, "cl_line_1": clLine_1, "cl_state_code": clStateCode, "cl_email": clEmail, "cl_company": clCompany, "cl_lat": clLat, "cl_phone": clPhone, "cl_full_name": clFullName, "cl_country_code": clCountryCode, "cl_zip_code": clZipCode])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var clLng: String? {
          get {
            return resultMap["cl_lng"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_lng")
          }
        }

        public var clLine_2: String? {
          get {
            return resultMap["cl_line_2"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_line_2")
          }
        }

        public var clCity: String? {
          get {
            return resultMap["cl_city"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_city")
          }
        }

        public var clLine_1: String? {
          get {
            return resultMap["cl_line_1"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_line_1")
          }
        }

        public var clStateCode: String? {
          get {
            return resultMap["cl_state_code"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_state_code")
          }
        }

        public var clEmail: String? {
          get {
            return resultMap["cl_email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_email")
          }
        }

        public var clCompany: String? {
          get {
            return resultMap["cl_company"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_company")
          }
        }

        public var clLat: String? {
          get {
            return resultMap["cl_lat"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_lat")
          }
        }

        public var clPhone: String? {
          get {
            return resultMap["cl_phone"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_phone")
          }
        }

        public var clFullName: String? {
          get {
            return resultMap["cl_full_name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_full_name")
          }
        }

        public var clCountryCode: String? {
          get {
            return resultMap["cl_country_code"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_country_code")
          }
        }

        public var clZipCode: String? {
          get {
            return resultMap["cl_zip_code"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_zip_code")
          }
        }
      }

      public struct ClBilling: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Address"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("cl_lng", type: .scalar(String.self)),
            GraphQLField("cl_line_2", type: .scalar(String.self)),
            GraphQLField("cl_city", type: .scalar(String.self)),
            GraphQLField("cl_line_1", type: .scalar(String.self)),
            GraphQLField("cl_state_code", type: .scalar(String.self)),
            GraphQLField("cl_email", type: .scalar(String.self)),
            GraphQLField("cl_company", type: .scalar(String.self)),
            GraphQLField("cl_lat", type: .scalar(String.self)),
            GraphQLField("cl_phone", type: .scalar(String.self)),
            GraphQLField("cl_full_name", type: .scalar(String.self)),
            GraphQLField("cl_country_code", type: .scalar(String.self)),
            GraphQLField("cl_zip_code", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(clLng: String? = nil, clLine_2: String? = nil, clCity: String? = nil, clLine_1: String? = nil, clStateCode: String? = nil, clEmail: String? = nil, clCompany: String? = nil, clLat: String? = nil, clPhone: String? = nil, clFullName: String? = nil, clCountryCode: String? = nil, clZipCode: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Address", "cl_lng": clLng, "cl_line_2": clLine_2, "cl_city": clCity, "cl_line_1": clLine_1, "cl_state_code": clStateCode, "cl_email": clEmail, "cl_company": clCompany, "cl_lat": clLat, "cl_phone": clPhone, "cl_full_name": clFullName, "cl_country_code": clCountryCode, "cl_zip_code": clZipCode])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var clLng: String? {
          get {
            return resultMap["cl_lng"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_lng")
          }
        }

        public var clLine_2: String? {
          get {
            return resultMap["cl_line_2"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_line_2")
          }
        }

        public var clCity: String? {
          get {
            return resultMap["cl_city"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_city")
          }
        }

        public var clLine_1: String? {
          get {
            return resultMap["cl_line_1"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_line_1")
          }
        }

        public var clStateCode: String? {
          get {
            return resultMap["cl_state_code"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_state_code")
          }
        }

        public var clEmail: String? {
          get {
            return resultMap["cl_email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_email")
          }
        }

        public var clCompany: String? {
          get {
            return resultMap["cl_company"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_company")
          }
        }

        public var clLat: String? {
          get {
            return resultMap["cl_lat"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_lat")
          }
        }

        public var clPhone: String? {
          get {
            return resultMap["cl_phone"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_phone")
          }
        }

        public var clFullName: String? {
          get {
            return resultMap["cl_full_name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_full_name")
          }
        }

        public var clCountryCode: String? {
          get {
            return resultMap["cl_country_code"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_country_code")
          }
        }

        public var clZipCode: String? {
          get {
            return resultMap["cl_zip_code"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_zip_code")
          }
        }
      }
    }
  }
}
