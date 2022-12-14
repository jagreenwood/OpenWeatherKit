//
//  Query.swift
//  
//
//  Created by Jeremy Greenwood on 11/1/22.
//

import Foundation

@usableFromInline
protocol Query {
    var queryType: QueryType { get }
}

extension WeatherQuery: Query {}

@usableFromInline
enum QueryType {
    case alerts(_ dataSet: String, _ countryCode: String)
    case current(_ dataSet: String)
    case daily(_ dataSet: String, _ startDate: Date, _ endDate: Date)
    case hourly(_ dataSet: String, _ startDate: Date, _ endDate: Date)
    case minute(_ dataSet: String)
    case availability(_ dataSet: String, _ countryCode: String)

    @usableFromInline
    var dataSet: String {
        switch self {
        case let .alerts(dataSet,_): return dataSet
        case let .current(dataSet): return dataSet
        case let .daily(dataSet, _, _): return dataSet
        case let .hourly(dataSet, _, _): return dataSet
        case let .minute(dataSet): return dataSet
        case let .availability(dataSet, _): return dataSet
        }
    }
}
