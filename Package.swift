import PackageDescription

let package = Package(
    name: "PerfectLDAPDemo",
    dependencies: [
      .Package(url: "https://github.com/PerfectlySoft/Perfect-LDAP.git", majorVersion: 1)
    ]
)
