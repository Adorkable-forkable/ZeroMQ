// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "ZeroMQ",
    products: [
        .library(name: "ZeroMQ", targets: ["ZeroMQ"])
    ],
    targets: [
        .target(
            name: "ZeroMQ",
            dependencies: ["libzmq"],
            path: "Sources"
        ),
        .systemLibrary(
            name: "libzmq",
            path: "Vendor/ZMQ",
            pkgConfig: "zmq",
            providers: [
                .brew(["zmq"]),
                .apt(["libzmq"]),
            ]
        ),
    ]
)
