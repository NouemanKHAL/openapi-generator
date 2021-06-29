//
// FakeClassnameTags123API.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif
#if canImport(AnyCodable)
import AnyCodable
#endif

open class FakeClassnameTags123API {

    /**
     To test class name in snake case
     
     - parameter body: (body) client model 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Client, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func testClassname(body: Client, apiResponseQueue: DispatchQueue = PetstoreClient.apiResponseQueue) -> AnyPublisher<Client, Error> {
        return Future<Client, Error>.init { promise in
            testClassnameWithRequestBuilder(body: body).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     To test class name in snake case
     - PATCH /fake_classname_test
     - To test class name in snake case
     - API Key:
       - type: apiKey api_key_query (QUERY)
       - name: api_key_query
     - parameter body: (body) client model 
     - returns: RequestBuilder<Client> 
     */
    open class func testClassnameWithRequestBuilder(body: Client) -> RequestBuilder<Client> {
        let path = "/fake_classname_test"
        let URLString = PetstoreClient.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Client>.Type = PetstoreClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }
}
