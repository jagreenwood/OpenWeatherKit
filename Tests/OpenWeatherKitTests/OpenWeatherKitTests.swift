import XCTest
@testable import OpenWeatherKit

final class OpenWeatherKitTests: XCTestCase {
    func testWeather() async throws {
        let networkClient = NetworkClient(
            client: MockClient(include: Set(MockClient.Include.allCases))
        )

        let service = WeatherService(
            configuration: .init(jwt: { "" }),
            networkClient: networkClient,
            geocoder: .mock
        )

#if canImport(CoreLocation)
        let _ = try await service.weather(
            for: Location(
                latitude: 0,
                longitude: 0
            )
        )

#else
        let _ = try await service.weather(
            for: Location(
                latitude: 0,
                longitude: 0
            ),
            countryCode: ""
        )
#endif
    }

    func testDataSet1() async throws {
        let networkClient = NetworkClient(
            client: MockClient(include: Set([.daily]))
        )

        let service = WeatherService(
            configuration: .init(jwt: { "" }),
            networkClient: networkClient,
            geocoder: .mock
        )

        let _ = try await service.weather(
            for: Location(
                latitude: 0,
                longitude: 0),
            including: .daily)
    }

    func testDataSet2() async throws {
        let networkClient = NetworkClient(
            client: MockClient(include: Set([.daily, .hourly]))
        )

        let service = WeatherService(
            configuration: .init(jwt: { "" }),
            networkClient: networkClient,
            geocoder: .mock
        )

        let _ = try await service.weather(
            for: Location(
                latitude: 0,
                longitude: 0),
            including: .daily, .hourly)
    }

    func testDataSet3Optional() async throws {
        let networkClient = NetworkClient(
            client: MockClient(include: Set([.daily, .hourly]))
        )

        let service = WeatherService(
            configuration: .init(jwt: { "" }),
            networkClient: networkClient,
            geocoder: .mock
        )

        let _ = try await service.weather(
            for: Location(
                latitude: 0,
                longitude: 0),
            including: .daily, .hourly, .alerts(countryCode: ""))
    }
}
