# Changelog

## Overview

All notable changes to this project will be documented in this file.

The format is based on [Keep a
Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to
[Semantic Versioning](https://semver.org/spec/v2.0.0.html).

Please [open an issue](https://github.com/atc0005/go-ci/issues) for any
deviations that you spot; I'm still learning!.

## Types of changes

The following types of changes will be recorded in this file:

- `Added` for new features.
- `Changed` for changes in existing functionality.
- `Deprecated` for soon-to-be removed features.
- `Removed` for now removed features.
- `Fixed` for any bug fixes.
- `Security` in case of vulnerabilities.

## [Unreleased]

- placeholder

## [v0.23.11] - 2026-01-19

### Changed

- (GH-2303) General Build Image: Bump amd64/golang from 1.24.11-alpine3.22 to 1.24.12-alpine3.22 in /oldstable/build/alpine-x64
- (GH-2310) General Build Image: Bump amd64/golang from 1.24.11-bookworm to 1.24.12-bookworm in /oldstable/build/cgo-mingw-w64-x64
- (GH-2297) General Build Image: Bump amd64/golang from 1.25.5-alpine3.22 to 1.25.6-alpine3.22 in /stable/build/alpine-x64
- (GH-2306) General Build Image: Bump amd64/golang from 1.25.5-alpine3.22 to 1.25.6-alpine3.22 in /unstable/build/alpine-x64
- (GH-2308) General Build Image: Bump amd64/golang from 1.25.5-bookworm to 1.25.6-bookworm in /stable/build/cgo-mingw-w64-x64
- (GH-2311) General Build Image: Bump amd64/golang from 1.25.5-bookworm to 1.25.6-bookworm in /unstable/build/cgo-mingw-w64-x64
- (GH-2304) General Build Image: Bump i386/golang from 1.24.11-alpine3.22 to 1.24.12-alpine3.22 in /oldstable/build/alpine-x86
- (GH-2309) General Build Image: Bump i386/golang from 1.24.11-bookworm to 1.24.12-bookworm in /oldstable/build/cgo-mingw-w64-x86
- (GH-2295) General Build Image: Bump i386/golang from 1.25.5-alpine3.22 to 1.25.6-alpine3.22 in /stable/build/alpine-x86
- (GH-2305) General Build Image: Bump i386/golang from 1.25.5-alpine3.22 to 1.25.6-alpine3.22 in /unstable/build/alpine-x86
- (GH-2307) General Build Image: Bump i386/golang from 1.25.5-bookworm to 1.25.6-bookworm in /stable/build/cgo-mingw-w64-x86
- (GH-2312) General Build Image: Bump i386/golang from 1.25.5-bookworm to 1.25.6-bookworm in /unstable/build/cgo-mingw-w64-x86
- (GH-2299) Matrix Image: Bump amd64/golang from 1.24.11-bookworm to 1.24.12-bookworm in /oldstable/combined
- (GH-2296) Matrix Image: Bump amd64/golang from 1.25.5-bookworm to 1.25.6-bookworm in /stable/combined
- (GH-2302) Matrix Image: Bump amd64/golang from 1.25.5-bookworm to 1.25.6-bookworm in /unstable/combined
- (GH-2313) Mirror Build Image: Bump amd64/golang from 1.24.11-bookworm to 1.24.12-bookworm in /mirror/1.24
- (GH-2314) Mirror Build Image: Bump amd64/golang from 1.25.5-bookworm to 1.25.6-bookworm in /mirror/1.25
- (GH-2301) Release Build Image: Bump amd64/golang from 1.24.11-bookworm to 1.24.12-bookworm in /oldstable/build/release
- (GH-2300) Release Build Image: Bump amd64/golang from 1.25.5-bookworm to 1.25.6-bookworm in /stable/build/release
- (GH-2298) Release Build Image: Bump amd64/golang from 1.25.5-bookworm to 1.25.6-bookworm in /unstable/build/release
- (GH-2316) Update golang.org/x/tools/cmd/deadcode to v0.41.0
- (GH-2317) Update golangci-lint to v2.8.0
- (GH-2315) Update goreleaser/nfpm to v2.44.1

## [v0.23.10] - 2025-12-19

### Changed

- (GH-2261) CI Dependency: Bump actions/checkout from 5 to 6
- (GH-2271) General Build Image: Bump amd64/golang from 1.24.10-alpine3.22 to 1.24.11-alpine3.22 in /oldstable/build/alpine-x64
- (GH-2280) General Build Image: Bump amd64/golang from 1.24.10-bookworm to 1.24.11-bookworm in /oldstable/build/cgo-mingw-w64-x64
- (GH-2263) General Build Image: Bump amd64/golang from 1.25.4-alpine3.22 to 1.25.5-alpine3.22 in /stable/build/alpine-x64
- (GH-2274) General Build Image: Bump amd64/golang from 1.25.4-alpine3.22 to 1.25.5-alpine3.22 in /unstable/build/alpine-x64
- (GH-2276) General Build Image: Bump amd64/golang from 1.25.4-bookworm to 1.25.5-bookworm in /stable/build/cgo-mingw-w64-x64
- (GH-2277) General Build Image: Bump amd64/golang from 1.25.4-bookworm to 1.25.5-bookworm in /unstable/build/cgo-mingw-w64-x64
- (GH-2273) General Build Image: Bump i386/golang from 1.24.10-alpine3.22 to 1.24.11-alpine3.22 in /oldstable/build/alpine-x86
- (GH-2275) General Build Image: Bump i386/golang from 1.24.10-bookworm to 1.24.11-bookworm in /oldstable/build/cgo-mingw-w64-x86
- (GH-2265) General Build Image: Bump i386/golang from 1.25.4-alpine3.22 to 1.25.5-alpine3.22 in /stable/build/alpine-x86
- (GH-2272) General Build Image: Bump i386/golang from 1.25.4-alpine3.22 to 1.25.5-alpine3.22 in /unstable/build/alpine-x86
- (GH-2279) General Build Image: Bump i386/golang from 1.25.4-bookworm to 1.25.5-bookworm in /stable/build/cgo-mingw-w64-x86
- (GH-2278) General Build Image: Bump i386/golang from 1.25.4-bookworm to 1.25.5-bookworm in /unstable/build/cgo-mingw-w64-x86
- (GH-2269) Matrix Image: Bump amd64/golang from 1.24.10-bookworm to 1.24.11-bookworm in /oldstable/combined
- (GH-2264) Matrix Image: Bump amd64/golang from 1.25.4-bookworm to 1.25.5-bookworm in /stable/combined
- (GH-2267) Matrix Image: Bump amd64/golang from 1.25.4-bookworm to 1.25.5-bookworm in /unstable/combined
- (GH-2281) Mirror Build Image: Bump amd64/golang from 1.24.10-bookworm to 1.24.11-bookworm in /mirror/1.24
- (GH-2282) Mirror Build Image: Bump amd64/golang from 1.25.4-bookworm to 1.25.5-bookworm in /mirror/1.25
- (GH-2270) Release Build Image: Bump amd64/golang from 1.24.10-bookworm to 1.24.11-bookworm in /oldstable/build/release
- (GH-2268) Release Build Image: Bump amd64/golang from 1.25.4-bookworm to 1.25.5-bookworm in /stable/build/release
- (GH-2266) Release Build Image: Bump amd64/golang from 1.25.4-bookworm to 1.25.5-bookworm in /unstable/build/release
- (GH-2288) Update golang.org/x/tools/cmd/deadcode to v0.40.0
- (GH-2289) Update golangci-lint to v2.7.2
- (GH-2283) Update goreleaser/nfpm to v2.44.0

## [v0.23.9] - 2025-11-16

### Changed

- (GH-2243) General Build Image: Bump amd64/golang from 1.24.9-alpine3.22 to 1.24.10-alpine3.22 in /oldstable/build/alpine-x64
- (GH-2248) General Build Image: Bump amd64/golang from 1.24.9-bookworm to 1.24.10-bookworm in /oldstable/build/cgo-mingw-w64-x64
- (GH-2234) General Build Image: Bump amd64/golang from 1.25.3-alpine3.22 to 1.25.4-alpine3.22 in /stable/build/alpine-x64
- (GH-2244) General Build Image: Bump amd64/golang from 1.25.3-alpine3.22 to 1.25.4-alpine3.22 in /unstable/build/alpine-x64
- (GH-2249) General Build Image: Bump amd64/golang from 1.25.3-bookworm to 1.25.4-bookworm in /stable/build/cgo-mingw-w64-x64
- (GH-2247) General Build Image: Bump amd64/golang from 1.25.3-bookworm to 1.25.4-bookworm in /unstable/build/cgo-mingw-w64-x64
- (GH-2242) General Build Image: Bump i386/golang from 1.24.9-alpine3.22 to 1.24.10-alpine3.22 in /oldstable/build/alpine-x86
- (GH-2246) General Build Image: Bump i386/golang from 1.24.9-bookworm to 1.24.10-bookworm in /oldstable/build/cgo-mingw-w64-x86
- (GH-2236) General Build Image: Bump i386/golang from 1.25.3-alpine3.22 to 1.25.4-alpine3.22 in /stable/build/alpine-x86
- (GH-2245) General Build Image: Bump i386/golang from 1.25.3-alpine3.22 to 1.25.4-alpine3.22 in /unstable/build/alpine-x86
- (GH-2251) General Build Image: Bump i386/golang from 1.25.3-bookworm to 1.25.4-bookworm in /stable/build/cgo-mingw-w64-x86
- (GH-2250) General Build Image: Bump i386/golang from 1.25.3-bookworm to 1.25.4-bookworm in /unstable/build/cgo-mingw-w64-x86
- (GH-2239) Matrix Image: Bump amd64/golang from 1.24.9-bookworm to 1.24.10-bookworm in /oldstable/combined
- (GH-2235) Matrix Image: Bump amd64/golang from 1.25.3-bookworm to 1.25.4-bookworm in /stable/combined
- (GH-2241) Matrix Image: Bump amd64/golang from 1.25.3-bookworm to 1.25.4-bookworm in /unstable/combined
- (GH-2252) Mirror Build Image: Bump amd64/golang from 1.24.9-bookworm to 1.24.10-bookworm in /mirror/1.24
- (GH-2253) Mirror Build Image: Bump amd64/golang from 1.25.3-bookworm to 1.25.4-bookworm in /mirror/1.25
- (GH-2240) Release Build Image: Bump amd64/golang from 1.24.9-bookworm to 1.24.10-bookworm in /oldstable/build/release
- (GH-2238) Release Build Image: Bump amd64/golang from 1.25.3-bookworm to 1.25.4-bookworm in /stable/build/release
- (GH-2237) Release Build Image: Bump amd64/golang from 1.25.3-bookworm to 1.25.4-bookworm in /unstable/build/release
- (GH-2256) Update golang.org/x/tools/cmd/deadcode to v0.39.0
- (GH-2257) Update golangci-lint to v2.6.2

## [v0.23.8] - 2025-10-29

### Changed

- (GH-2216) General Build Image: Bump amd64/golang from 1.24.8-alpine3.22 to 1.24.9-alpine3.22 in /oldstable/build/alpine-x64
- (GH-2223) General Build Image: Bump amd64/golang from 1.24.8-bookworm to 1.24.9-bookworm in /oldstable/build/cgo-mingw-w64-x64
- (GH-2208) General Build Image: Bump amd64/golang from 1.25.2-alpine3.22 to 1.25.3-alpine3.22 in /stable/build/alpine-x64
- (GH-2218) General Build Image: Bump amd64/golang from 1.25.2-alpine3.22 to 1.25.3-alpine3.22 in /unstable/build/alpine-x64
- (GH-2222) General Build Image: Bump amd64/golang from 1.25.2-bookworm to 1.25.3-bookworm in /stable/build/cgo-mingw-w64-x64
- (GH-2220) General Build Image: Bump amd64/golang from 1.25.2-bookworm to 1.25.3-bookworm in /unstable/build/cgo-mingw-w64-x64
- (GH-2217) General Build Image: Bump i386/golang from 1.24.8-alpine3.22 to 1.24.9-alpine3.22 in /oldstable/build/alpine-x86
- (GH-2225) General Build Image: Bump i386/golang from 1.24.8-bookworm to 1.24.9-bookworm in /oldstable/build/cgo-mingw-w64-x86
- (GH-2209) General Build Image: Bump i386/golang from 1.25.2-alpine3.22 to 1.25.3-alpine3.22 in /stable/build/alpine-x86
- (GH-2219) General Build Image: Bump i386/golang from 1.25.2-alpine3.22 to 1.25.3-alpine3.22 in /unstable/build/alpine-x86
- (GH-2221) General Build Image: Bump i386/golang from 1.25.2-bookworm to 1.25.3-bookworm in /stable/build/cgo-mingw-w64-x86
- (GH-2224) General Build Image: Bump i386/golang from 1.25.2-bookworm to 1.25.3-bookworm in /unstable/build/cgo-mingw-w64-x86
- (GH-2214) Matrix Image: Bump amd64/golang from 1.24.8-bookworm to 1.24.9-bookworm in /oldstable/combined
- (GH-2210) Matrix Image: Bump amd64/golang from 1.25.2-bookworm to 1.25.3-bookworm in /stable/combined
- (GH-2211) Matrix Image: Bump amd64/golang from 1.25.2-bookworm to 1.25.3-bookworm in /unstable/combined
- (GH-2226) Mirror Build Image: Bump amd64/golang from 1.24.8-bookworm to 1.24.9-bookworm in /mirror/1.24
- (GH-2227) Mirror Build Image: Bump amd64/golang from 1.25.2-bookworm to 1.25.3-bookworm in /mirror/1.25
- (GH-2215) Release Build Image: Bump amd64/golang from 1.24.8-bookworm to 1.24.9-bookworm in /oldstable/build/release
- (GH-2212) Release Build Image: Bump amd64/golang from 1.25.2-bookworm to 1.25.3-bookworm in /stable/build/release
- (GH-2213) Release Build Image: Bump amd64/golang from 1.25.2-bookworm to 1.25.3-bookworm in /unstable/build/release
- (GH-2230) Update golangci-lint to v2.6.0
- (GH-2229) Update goreleaser/nfpm to v2.43.4

## [v0.23.7] - 2025-10-10

### Changed

- (GH-2187) General Build Image: Bump amd64/golang from 1.24.7-alpine3.22 to 1.24.8-alpine3.22 in /oldstable/build/alpine-x64
- (GH-2200) General Build Image: Bump amd64/golang from 1.24.7-bookworm to 1.24.8-bookworm in /oldstable/build/cgo-mingw-w64-x64
- (GH-2177) General Build Image: Bump amd64/golang from 1.25.1-alpine3.22 to 1.25.2-alpine3.22 in /stable/build/alpine-x64
- (GH-2185) General Build Image: Bump amd64/golang from 1.25.1-alpine3.22 to 1.25.2-alpine3.22 in /unstable/build/alpine-x64
- (GH-2202) General Build Image: Bump amd64/golang from 1.25.1-bookworm to 1.25.2-bookworm in /stable/build/cgo-mingw-w64-x64
- (GH-2197) General Build Image: Bump amd64/golang from 1.25.1-bookworm to 1.25.2-bookworm in /unstable/build/cgo-mingw-w64-x64
- (GH-2186) General Build Image: Bump i386/golang from 1.24.7-alpine3.22 to 1.24.8-alpine3.22 in /oldstable/build/alpine-x86
- (GH-2198) General Build Image: Bump i386/golang from 1.24.7-bookworm to 1.24.8-bookworm in /oldstable/build/cgo-mingw-w64-x86
- (GH-2178) General Build Image: Bump i386/golang from 1.25.1-alpine3.22 to 1.25.2-alpine3.22 in /stable/build/alpine-x86
- (GH-2184) General Build Image: Bump i386/golang from 1.25.1-alpine3.22 to 1.25.2-alpine3.22 in /unstable/build/alpine-x86
- (GH-2201) General Build Image: Bump i386/golang from 1.25.1-bookworm to 1.25.2-bookworm in /stable/build/cgo-mingw-w64-x86
- (GH-2199) General Build Image: Bump i386/golang from 1.25.1-bookworm to 1.25.2-bookworm in /unstable/build/cgo-mingw-w64-x86
- (GH-2183) Matrix Image: Bump amd64/golang from 1.24.7-bookworm to 1.24.8-bookworm in /oldstable/combined
- (GH-2176) Matrix Image: Bump amd64/golang from 1.25.1-bookworm to 1.25.2-bookworm in /stable/combined
- (GH-2181) Matrix Image: Bump amd64/golang from 1.25.1-bookworm to 1.25.2-bookworm in /unstable/combined
- (GH-2188) Mirror Build Image: Bump amd64/golang from 1.24.7-bookworm to 1.24.8-bookworm in /mirror/1.24
- (GH-2189) Mirror Build Image: Bump amd64/golang from 1.25.1-bookworm to 1.25.2-bookworm in /mirror/1.25
- (GH-2179) Release Build Image: Bump amd64/golang from 1.24.7-bookworm to 1.24.8-bookworm in /oldstable/build/release
- (GH-2182) Release Build Image: Bump amd64/golang from 1.25.1-bookworm to 1.25.2-bookworm in /stable/build/release
- (GH-2180) Release Build Image: Bump amd64/golang from 1.25.1-bookworm to 1.25.2-bookworm in /unstable/build/release
- (GH-2204) Update golang.org/x/tools/cmd/deadcode to v0.38.0
- (GH-2203) Split all images into builder/final stages

## [v0.23.6] - 2025-10-08

### Changed

- (GH-2161) General Build Image: Bump amd64/golang from 1.24.6-alpine3.22 to 1.24.7-alpine3.22 in /oldstable/build/alpine-x64
- (GH-2165) General Build Image: Bump amd64/golang from 1.25.0-alpine3.22 to 1.25.1-alpine3.22 in /stable/build/alpine-x64
- (GH-2162) General Build Image: Bump amd64/golang from 1.25.0-alpine3.22 to 1.25.1-alpine3.22 in /unstable/build/alpine-x64
- (GH-2166) General Build Image: Bump i386/golang from 1.24.6-alpine3.22 to 1.24.7-alpine3.22 in /oldstable/build/alpine-x86
- (GH-2158) General Build Image: Bump i386/golang from 1.25.0-alpine3.22 to 1.25.1-alpine3.22 in /stable/build/alpine-x86
- (GH-2167) General Build Image: Bump i386/golang from 1.25.0-alpine3.22 to 1.25.1-alpine3.22 in /unstable/build/alpine-x86
- (GH-2163) Matrix Image: Bump amd64/golang from 1.24.6-bookworm to 1.24.7-bookworm in /oldstable/combined
- (GH-2155) Matrix Image: Bump amd64/golang from 1.25.0-bookworm to 1.25.1-bookworm in /stable/combined
- (GH-2160) Matrix Image: Bump amd64/golang from 1.25.0-bookworm to 1.25.1-bookworm in /unstable/combined
- (GH-2168) Mirror Build Image: Bump amd64/golang from 1.24.6-bookworm to 1.24.7-bookworm in /mirror/1.24
- (GH-2164) Mirror Build Image: Bump amd64/golang from 1.25.0-bookworm to 1.25.1-bookworm in /mirror/1.25
- (GH-2157) Release Build Image: Bump amd64/golang from 1.24.6-bookworm to 1.24.7-bookworm in /oldstable/build/release
- (GH-2159) Release Build Image: Bump amd64/golang from 1.25.0-bookworm to 1.25.1-bookworm in /stable/build/release
- (GH-2156) Release Build Image: Bump amd64/golang from 1.25.0-bookworm to 1.25.1-bookworm in /unstable/build/release
- (GH-2192) Update cgo-mingw build images to Sept 2025 versions
- (GH-2173) Update golang.org/x/tools/cmd/deadcode to v0.37.0
- (GH-2175) Update goreleaser/nfpm to v2.43.3
- (GH-2193) README: note that oldstable is limited to v2.43.1
- (GH-2174) Update golangci-lint to v2.5.0

### Fixed

- (GH-2191) Replace Debian `bullseye` with `bookworm`

## [v0.23.5] - 2025-08-22

### Changed

- (GH-2151) Add Go 1.25 mirror img, fix STABLE/OLDSTABLE tags
- (GH-2147) General Build Image: Bump amd64/golang from 1.23.12-alpine3.22 to 1.24.6-alpine3.22 in /oldstable/build/alpine-x64
- (GH-2145) General Build Image: Bump amd64/golang from 1.23.12-bullseye to 1.24.6-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-2143) General Build Image: Bump amd64/golang from 1.24.6-alpine3.22 to 1.25.0-alpine3.22 in /stable/build/alpine-x64
- (GH-2135) General Build Image: Bump amd64/golang from 1.25rc3-alpine3.22 to 1.25-alpine3.22 in /unstable/build/alpine-x64
- (GH-2141) General Build Image: Bump i386/golang from 1.23.12-alpine3.22 to 1.24.6-alpine3.22 in /oldstable/build/alpine-x86
- (GH-2146) General Build Image: Bump i386/golang from 1.23.12-bullseye to 1.24.6-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-2150) General Build Image: Bump i386/golang from 1.24.6-alpine3.22 to 1.25.0-alpine3.22 in /stable/build/alpine-x86
- (GH-2137) General Build Image: Bump i386/golang from 1.25rc3-alpine3.22 to 1.25-alpine3.22 in /unstable/build/alpine-x86
- (GH-2149) Matrix Image: Bump amd64/golang from 1.23.12-bookworm to 1.24.6-bookworm in /oldstable/combined
- (GH-2142) Matrix Image: Bump amd64/golang from 1.24.6-bookworm to 1.25.0-bookworm in /stable/combined
- (GH-2134) Matrix Image: Bump amd64/golang from 1.24.6-bookworm to 1.25.0-bookworm in /unstable/combined
- (GH-2144) Release Build Image: Bump amd64/golang from 1.23.12-bookworm to 1.24.6-bookworm in /oldstable/build/release
- (GH-2148) Release Build Image: Bump amd64/golang from 1.24.6-bookworm to 1.25.0-bookworm in /stable/build/release
- (GH-2136) Release Build Image: Bump amd64/golang from 1.25rc3-bookworm to 1.25-bookworm in /unstable/build/release
- (GH-2140) Update Dependabot monitoring for Go 1.25 release
- (GH-2139) Update Go 1.25 image refs to fixed 1.25.0 release
- (GH-2138) Update golangci-lint to v2.4.0

## [v0.23.4] - 2025-08-08

### Changed

- (GH-2118) General Build Image: Bump amd64/golang from 1.23.11-alpine3.22 to 1.23.12-alpine3.22 in /oldstable/build/alpine-x64
- (GH-2119) General Build Image: Bump amd64/golang from 1.23.11-bullseye to 1.23.12-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-2113) General Build Image: Bump amd64/golang from 1.24.5-alpine3.22 to 1.24.6-alpine3.22 in /stable/build/alpine-x64
- (GH-2121) General Build Image: Bump amd64/golang from 1.24.5-bullseye to 1.24.6-bullseye in /stable/build/cgo-mingw-w64-x64
- (GH-2120) General Build Image: Bump amd64/golang from 1.25rc2-alpine3.22 to 1.25rc3-alpine3.22 in /unstable/build/alpine-x64
- (GH-2114) General Build Image: Bump amd64/golang from 1.25rc2-bullseye to 1.25rc3-bullseye in /unstable/build/cgo-mingw-w64-x64
- (GH-2110) General Build Image: Bump i386/golang from 1.23.11-alpine3.22 to 1.23.12-alpine3.22 in /oldstable/build/alpine-x86
- (GH-2116) General Build Image: Bump i386/golang from 1.23.11-bullseye to 1.23.12-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-2108) General Build Image: Bump i386/golang from 1.24.5-alpine3.22 to 1.24.6-alpine3.22 in /stable/build/alpine-x86
- (GH-2115) General Build Image: Bump i386/golang from 1.24.5-bullseye to 1.24.6-bullseye in /stable/build/cgo-mingw-w64-x86
- (GH-2112) General Build Image: Bump i386/golang from 1.25rc2-alpine3.22 to 1.25rc3-alpine3.22 in /unstable/build/alpine-x86
- (GH-2111) General Build Image: Bump i386/golang from 1.25rc2-bullseye to 1.25rc3-bullseye in /unstable/build/cgo-mingw-w64-x86
- (GH-2124) Matrix Image: Bump amd64/golang from 1.23.11-bookworm to 1.23.12-bookworm in /oldstable/combined
- (GH-2109) Matrix Image: Bump amd64/golang from 1.24.5-bookworm to 1.24.6-bookworm in /stable/combined
- (GH-2123) Matrix Image: Bump amd64/golang from 1.24.5-bookworm to 1.24.6-bookworm in /unstable/combined
- (GH-2126) Mirror Build Image: Bump amd64/golang from 1.23.11-bookworm to 1.23.12-bookworm in /mirror/1.23
- (GH-2125) Mirror Build Image: Bump amd64/golang from 1.24.5-bookworm to 1.24.6-bookworm in /mirror/1.24
- (GH-2117) Release Build Image: Bump amd64/golang from 1.23.11-bookworm to 1.23.12-bookworm in /oldstable/build/release
- (GH-2107) Release Build Image: Bump amd64/golang from 1.24.5-bookworm to 1.24.6-bookworm in /stable/build/release
- (GH-2122) Release Build Image: Bump amd64/golang from 1.25rc2-bookworm to 1.25rc3-bookworm in /unstable/build/release
- (GH-2129) Update golang.org/x/tools/cmd/deadcode to v0.36.0
- (GH-2128) Update golangci-lint to v2.3.1

## [v0.23.3] - 2025-07-11

### Changed

- (GH-2081) General Build Image: Bump amd64/golang from 1.23.10-alpine3.22 to 1.23.11-alpine3.22 in /oldstable/build/alpine-x64
- (GH-2097) General Build Image: Bump amd64/golang from 1.23.10-bullseye to 1.23.11-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-2093) General Build Image: Bump amd64/golang from 1.24.4-alpine3.22 to 1.24.5-alpine3.22 in /stable/build/alpine-x64
- (GH-2082) General Build Image: Bump amd64/golang from 1.24.4-bullseye to 1.24.5-bullseye in /stable/build/cgo-mingw-w64-x64
- (GH-2089) General Build Image: Bump amd64/golang from 1.25rc1-alpine3.22 to 1.25rc2-alpine3.22 in /unstable/build/alpine-x64
- (GH-2095) General Build Image: Bump amd64/golang from 1.25rc1-bullseye to 1.25rc2-bullseye in /unstable/build/cgo-mingw-w64-x64
- (GH-2085) General Build Image: Bump i386/golang from 1.23.10-alpine3.22 to 1.23.11-alpine3.22 in /oldstable/build/alpine-x86
- (GH-2099) General Build Image: Bump i386/golang from 1.23.10-bullseye to 1.23.11-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-2091) General Build Image: Bump i386/golang from 1.24.4-alpine3.22 to 1.24.5-alpine3.22 in /stable/build/alpine-x86
- (GH-2096) General Build Image: Bump i386/golang from 1.24.4-bullseye to 1.24.5-bullseye in /stable/build/cgo-mingw-w64-x86
- (GH-2086) General Build Image: Bump i386/golang from 1.25rc1-alpine3.22 to 1.25rc2-alpine3.22 in /unstable/build/alpine-x86
- (GH-2088) General Build Image: Bump i386/golang from 1.25rc1-bullseye to 1.25rc2-bullseye in /unstable/build/cgo-mingw-w64-x86
- (GH-2094) Matrix Image: Bump amd64/golang from 1.23.10-bookworm to 1.23.11-bookworm in /oldstable/combined
- (GH-2080) Matrix Image: Bump amd64/golang from 1.24.4-bookworm to 1.24.5-bookworm in /stable/combined
- (GH-2083) Matrix Image: Bump amd64/golang from 1.24.4-bookworm to 1.24.5-bookworm in /unstable/combined
- (GH-2087) Mirror Build Image: Bump amd64/golang from 1.23.10-bookworm to 1.23.11-bookworm in /mirror/1.23
- (GH-2084) Mirror Build Image: Bump amd64/golang from 1.24.4-bookworm to 1.24.5-bookworm in /mirror/1.24
- (GH-2092) Release Build Image: Bump amd64/golang from 1.23.10-bookworm to 1.23.11-bookworm in /oldstable/build/release
- (GH-2098) Release Build Image: Bump amd64/golang from 1.24.4-bookworm to 1.24.5-bookworm in /stable/build/release
- (GH-2090) Release Build Image: Bump amd64/golang from 1.25rc1-bookworm to 1.25rc2-bookworm in /unstable/build/release
- (GH-2101) Update golangci-lint to v2.2.1

### Fixed

- (GH-2100) Update pinned git version for build images

## [v0.23.2] - 2025-06-27

### Changed

- (GH-2073) Update goreleaser/nfpm to v2.43.0
- (GH-2075) Update unstable build images to Go 1.25rc1

## [v0.23.1] - 2025-06-06

### Changed

- (GH-2066) General Build Image: Bump amd64/golang from 1.23.9-alpine3.22 to 1.23.10-alpine3.22 in /oldstable/build/alpine-x64
- (GH-2049) General Build Image: Bump amd64/golang from 1.23.9-bullseye to 1.23.10-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-2063) General Build Image: Bump amd64/golang from 1.24.3-alpine3.22 to 1.24.4-alpine3.22 in /stable/build/alpine-x64
- (GH-2067) General Build Image: Bump amd64/golang from 1.24.3-alpine3.22 to 1.24.4-alpine3.22 in /unstable/build/alpine-x64
- (GH-2053) General Build Image: Bump amd64/golang from 1.24.3-bullseye to 1.24.4-bullseye in /stable/build/cgo-mingw-w64-x64
- (GH-2052) General Build Image: Bump amd64/golang from 1.24.3-bullseye to 1.24.4-bullseye in /unstable/build/cgo-mingw-w64-x64
- (GH-2065) General Build Image: Bump i386/golang from 1.23.9-alpine3.22 to 1.23.10-alpine3.22 in /oldstable/build/alpine-x86
- (GH-2051) General Build Image: Bump i386/golang from 1.23.9-bullseye to 1.23.10-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-2064) General Build Image: Bump i386/golang from 1.24.3-alpine3.22 to 1.24.4-alpine3.22 in /stable/build/alpine-x86
- (GH-2068) General Build Image: Bump i386/golang from 1.24.3-alpine3.22 to 1.24.4-alpine3.22 in /unstable/build/alpine-x86
- (GH-2046) General Build Image: Bump i386/golang from 1.24.3-bullseye to 1.24.4-bullseye in /stable/build/cgo-mingw-w64-x86
- (GH-2050) General Build Image: Bump i386/golang from 1.24.3-bullseye to 1.24.4-bullseye in /unstable/build/cgo-mingw-w64-x86
- (GH-2054) Matrix Image: Bump amd64/golang from 1.23.9-bookworm to 1.23.10-bookworm in /oldstable/combined
- (GH-2044) Matrix Image: Bump amd64/golang from 1.24.3-bookworm to 1.24.4-bookworm in /stable/combined
- (GH-2047) Matrix Image: Bump amd64/golang from 1.24.3-bookworm to 1.24.4-bookworm in /unstable/combined
- (GH-2055) Mirror Build Image: Bump amd64/golang from 1.23.9-bookworm to 1.23.10-bookworm in /mirror/1.23
- (GH-2058) Mirror Build Image: Bump amd64/golang from 1.24.3-bookworm to 1.24.4-bookworm in /mirror/1.24
- (GH-2045) Release Build Image: Bump amd64/golang from 1.23.9-bookworm to 1.23.10-bookworm in /oldstable/build/release
- (GH-2048) Release Build Image: Bump amd64/golang from 1.24.3-bookworm to 1.24.4-bookworm in /stable/build/release
- (GH-2057) Release Build Image: Bump amd64/golang from 1.24.3-bookworm to 1.24.4-bookworm in /unstable/build/release
- (GH-2061) Update golang.org/x/tools/cmd/deadcode to v0.34.0

### Fixed

- (GH-2060) Swap Alpine base image version from 3.20 to 3.22

## [v0.23.0] - 2025-06-04

### Changed

- (GH-2039) Update golangci-lint from v1.64.8 to v2.1.6
- (GH-2041) Update goreleaser/nfpm to v2.42.1

### Fixed

- (GH-2040) Update pinned xz-utils version for build images

## [v0.22.10] - 2025-05-08

### Changed

- (GH-2008) Disable Dependabot automatic PR rebasing
- (GH-2029) General Build Image: Bump amd64/golang from 1.23.8-alpine3.20 to 1.23.9-alpine3.20 in /oldstable/build/alpine-x64
- (GH-2023) General Build Image: Bump amd64/golang from 1.23.8-bullseye to 1.23.9-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-2015) General Build Image: Bump amd64/golang from 1.24.2-alpine3.20 to 1.24.3-alpine3.20 in /stable/build/alpine-x64
- (GH-2013) General Build Image: Bump amd64/golang from 1.24.2-alpine3.20 to 1.24.3-alpine3.20 in /unstable/build/alpine-x64
- (GH-2031) General Build Image: Bump amd64/golang from 1.24.2-bullseye to 1.24.3-bullseye in /stable/build/cgo-mingw-w64-x64
- (GH-2024) General Build Image: Bump amd64/golang from 1.24.2-bullseye to 1.24.3-bullseye in /unstable/build/cgo-mingw-w64-x64
- (GH-2028) General Build Image: Bump i386/golang from 1.23.8-alpine3.20 to 1.23.9-alpine3.20 in /oldstable/build/alpine-x86
- (GH-2030) General Build Image: Bump i386/golang from 1.23.8-bullseye to 1.23.9-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-2021) General Build Image: Bump i386/golang from 1.24.2-alpine3.20 to 1.24.3-alpine3.20 in /stable/build/alpine-x86
- (GH-2017) General Build Image: Bump i386/golang from 1.24.2-alpine3.20 to 1.24.3-alpine3.20 in /unstable/build/alpine-x86
- (GH-2025) General Build Image: Bump i386/golang from 1.24.2-bullseye to 1.24.3-bullseye in /stable/build/cgo-mingw-w64-x86
- (GH-2027) General Build Image: Bump i386/golang from 1.24.2-bullseye to 1.24.3-bullseye in /unstable/build/cgo-mingw-w64-x86
- (GH-2019) Matrix Image: Bump amd64/golang from 1.23.8-bookworm to 1.23.9-bookworm in /oldstable/combined
- (GH-2012) Matrix Image: Bump amd64/golang from 1.24.2-bookworm to 1.24.3-bookworm in /stable/combined
- (GH-2026) Matrix Image: Bump amd64/golang from 1.24.2-bookworm to 1.24.3-bookworm in /unstable/combined
- (GH-2020) Mirror Build Image: Bump amd64/golang from 1.23.8-bookworm to 1.23.9-bookworm in /mirror/1.23
- (GH-2018) Mirror Build Image: Bump amd64/golang from 1.24.2-bookworm to 1.24.3-bookworm in /mirror/1.24
- (GH-2022) Release Build Image: Bump amd64/golang from 1.23.8-bookworm to 1.23.9-bookworm in /oldstable/build/release
- (GH-2016) Release Build Image: Bump amd64/golang from 1.24.2-bookworm to 1.24.3-bookworm in /stable/build/release
- (GH-2014) Release Build Image: Bump amd64/golang from 1.24.2-bookworm to 1.24.3-bookworm in /unstable/build/release
- (GH-2033) Update golang.org/x/tools/cmd/deadcode to v0.33.0
- (GH-2034) Update pelletier/go-toml to v2.2.4

### Fixed

- (GH-2032) Update pinned xz version for Alpine images

## [v0.22.9] - 2025-04-02

### Changed

- (GH-2002) General Build Image: Bump amd64/golang from 1.23.7-alpine3.20 to 1.23.8-alpine3.20 in /oldstable/build/alpine-x64
- (GH-2005) General Build Image: Bump amd64/golang from 1.23.7-bullseye to 1.23.8-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-1993) General Build Image: Bump amd64/golang from 1.24.1-alpine3.20 to 1.24.2-alpine3.20 in /stable/build/alpine-x64
- (GH-1992) General Build Image: Bump amd64/golang from 1.24.1-alpine3.20 to 1.24.2-alpine3.20 in /unstable/build/alpine-x64
- (GH-1990) General Build Image: Bump amd64/golang from 1.24.1-bullseye to 1.24.2-bullseye in /stable/build/cgo-mingw-w64-x64
- (GH-2001) General Build Image: Bump amd64/golang from 1.24.1-bullseye to 1.24.2-bullseye in /unstable/build/cgo-mingw-w64-x64
- (GH-1988) General Build Image: Bump i386/golang from 1.23.7-alpine3.20 to 1.23.8-alpine3.20 in /oldstable/build/alpine-x86
- (GH-1991) General Build Image: Bump i386/golang from 1.23.7-bullseye to 1.23.8-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-1987) General Build Image: Bump i386/golang from 1.24.1-alpine3.20 to 1.24.2-alpine3.20 in /stable/build/alpine-x86
- (GH-1989) General Build Image: Bump i386/golang from 1.24.1-alpine3.20 to 1.24.2-alpine3.20 in /unstable/build/alpine-x86
- (GH-1999) General Build Image: Bump i386/golang from 1.24.1-bullseye to 1.24.2-bullseye in /stable/build/cgo-mingw-w64-x86
- (GH-1995) General Build Image: Bump i386/golang from 1.24.1-bullseye to 1.24.2-bullseye in /unstable/build/cgo-mingw-w64-x86
- (GH-1994) Matrix Image: Bump amd64/golang from 1.23.7-bookworm to 1.23.8-bookworm in /oldstable/combined
- (GH-1986) Matrix Image: Bump amd64/golang from 1.24.1-bookworm to 1.24.2-bookworm in /stable/combined
- (GH-2000) Matrix Image: Bump amd64/golang from 1.24.1-bookworm to 1.24.2-bookworm in /unstable/combined
- (GH-1996) Mirror Build Image: Bump amd64/golang from 1.23.7-bookworm to 1.23.8-bookworm in /mirror/1.23
- (GH-1997) Mirror Build Image: Bump amd64/golang from 1.24.1-bookworm to 1.24.2-bookworm in /mirror/1.24
- (GH-2003) Release Build Image: Bump amd64/golang from 1.23.7-bookworm to 1.23.8-bookworm in /oldstable/build/release
- (GH-2004) Release Build Image: Bump amd64/golang from 1.24.1-bookworm to 1.24.2-bookworm in /stable/build/release
- (GH-1998) Release Build Image: Bump amd64/golang from 1.24.1-bookworm to 1.24.2-bookworm in /unstable/build/release

## [v0.22.8] - 2025-03-31

### Changed

- (GH-1983) Update goreleaser/nfpm to v2.42.0

## [v0.22.7] - 2025-03-18

### Changed

- (GH-1979) Update golangci-lint to v1.64.8

## [v0.22.6] - 2025-03-06

### Changed

- (GH-1952) General Build Image: Bump amd64/golang from 1.23.6-alpine3.20 to 1.23.7-alpine3.20 in /oldstable/build/alpine-x64
- (GH-1965) General Build Image: Bump amd64/golang from 1.23.6-bullseye to 1.23.7-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-1950) General Build Image: Bump amd64/golang from 1.24.0-alpine3.20 to 1.24.1-alpine3.20 in /stable/build/alpine-x64
- (GH-1959) General Build Image: Bump amd64/golang from 1.24.0-alpine3.20 to 1.24.1-alpine3.20 in /unstable/build/alpine-x64
- (GH-1963) General Build Image: Bump amd64/golang from 1.24.0-bullseye to 1.24.1-bullseye in /stable/build/cgo-mingw-w64-x64
- (GH-1960) General Build Image: Bump amd64/golang from 1.24.0-bullseye to 1.24.1-bullseye in /unstable/build/cgo-mingw-w64-x64
- (GH-1962) General Build Image: Bump i386/golang from 1.23.6-alpine3.20 to 1.23.7-alpine3.20 in /oldstable/build/alpine-x86
- (GH-1967) General Build Image: Bump i386/golang from 1.23.6-bullseye to 1.23.7-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-1954) General Build Image: Bump i386/golang from 1.24.0-alpine3.20 to 1.24.1-alpine3.20 in /stable/build/alpine-x86
- (GH-1955) General Build Image: Bump i386/golang from 1.24.0-alpine3.20 to 1.24.1-alpine3.20 in /unstable/build/alpine-x86
- (GH-1968) General Build Image: Bump i386/golang from 1.24.0-bullseye to 1.24.1-bullseye in /stable/build/cgo-mingw-w64-x86
- (GH-1969) General Build Image: Bump i386/golang from 1.24.0-bullseye to 1.24.1-bullseye in /unstable/build/cgo-mingw-w64-x86
- (GH-1958) Matrix Image: Bump amd64/golang from 1.23.6-bookworm to 1.23.7-bookworm in /oldstable/combined
- (GH-1966) Matrix Image: Bump amd64/golang from 1.24.0-bookworm to 1.24.1-bookworm in /stable/combined
- (GH-1957) Matrix Image: Bump amd64/golang from 1.24.0-bookworm to 1.24.1-bookworm in /unstable/combined
- (GH-1964) Mirror Build Image: Bump amd64/golang from 1.23.6-bookworm to 1.23.7-bookworm in /mirror/1.23
- (GH-1956) Mirror Build Image: Bump amd64/golang from 1.24.0-bookworm to 1.24.1-bookworm in /mirror/1.24
- (GH-1951) Release Build Image: Bump amd64/golang from 1.23.6-bookworm to 1.23.7-bookworm in /oldstable/build/release
- (GH-1953) Release Build Image: Bump amd64/golang from 1.24.0-bookworm to 1.24.1-bookworm in /stable/build/release
- (GH-1961) Release Build Image: Bump amd64/golang from 1.24.0-bookworm to 1.24.1-bookworm in /unstable/build/release
- (GH-1973) Update golang.org/x/tools/cmd/deadcode to v0.31.0
- (GH-1972) Update staticcheck to v0.6.1

## [v0.22.5] - 2025-03-03

### Changed

- (GH-1946) Update golangci-lint to v1.64.6
- (GH-1947) Update goreleaser/nfpm to v2.41.3

### Fixed

- (GH-1945) Replace `exportloopref` linter with `copyloopvar`

## [v0.22.4] - 2025-02-27

### Changed

- (GH-1918) Add Go 1.24 mirror img, fix STABLE/OLDSTABLE tags
- (GH-1926) General Build Image: Bump amd64/golang from 1.22.12-alpine3.20 to 1.23.6-alpine3.20 in /oldstable/build/alpine-x64
- (GH-1931) General Build Image: Bump amd64/golang from 1.22.12-bullseye to 1.23.6-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-1921) General Build Image: Bump amd64/golang from 1.23.6-alpine3.20 to 1.24.0-alpine3.20 in /stable/build/alpine-x64
- (GH-1928) General Build Image: Bump amd64/golang from 1.23.6-bullseye to 1.24.0-bullseye in /stable/build/cgo-mingw-w64-x64
- (GH-1910) General Build Image: Bump amd64/golang from 1.24rc3-alpine3.20 to 1.24-alpine3.20 in /unstable/build/alpine-x64
- (GH-1908) General Build Image: Bump amd64/golang from 1.24rc3-bullseye to 1.24-bullseye in /unstable/build/cgo-mingw-w64-x64
- (GH-1922) General Build Image: Bump i386/golang from 1.22.12-alpine3.20 to 1.23.6-alpine3.20 in /oldstable/build/alpine-x86
- (GH-1929) General Build Image: Bump i386/golang from 1.22.12-bullseye to 1.23.6-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-1923) General Build Image: Bump i386/golang from 1.23.6-alpine3.20 to 1.24.0-alpine3.20 in /stable/build/alpine-x86
- (GH-1930) General Build Image: Bump i386/golang from 1.23.6-bullseye to 1.24.0-bullseye in /stable/build/cgo-mingw-w64-x86
- (GH-1912) General Build Image: Bump i386/golang from 1.24rc3-alpine3.20 to 1.24-alpine3.20 in /unstable/build/alpine-x86
- (GH-1909) General Build Image: Bump i386/golang from 1.24rc3-bullseye to 1.24-bullseye in /unstable/build/cgo-mingw-w64-x86
- (GH-1925) Matrix Image: Bump amd64/golang from 1.22.12-bookworm to 1.23.6-bookworm in /oldstable/combined
- (GH-1920) Matrix Image: Bump amd64/golang from 1.23.6-bookworm to 1.24.0-bookworm in /stable/combined
- (GH-1913) Matrix Image: Bump amd64/golang from 1.23.6-bookworm to 1.24.0-bookworm in /unstable/combined
- (GH-1924) Release Build Image: Bump amd64/golang from 1.22.12-bookworm to 1.23.6-bookworm in /oldstable/build/release
- (GH-1927) Release Build Image: Bump amd64/golang from 1.23.6-bookworm to 1.24.0-bookworm in /stable/build/release
- (GH-1907) Release Build Image: Bump amd64/golang from 1.24rc3-bookworm to 1.24-bookworm in /unstable/build/release
- (GH-1919) Update Dependabot monitoring for Go 1.24 release
- (GH-1917) Update Go 1.24 image refs to use fixed releases
- (GH-1916) Update golang.org/x/tools/cmd/deadcode to v0.30.0
- (GH-1937) Update golangci-lint to v1.64.5
- (GH-1935) Update staticcheck to v0.6.0

### Fixed

- (GH-1915) Updated pinned musl-dev version for Alpine images
- (GH-1939) Update pinned gcc version for Alpine images

## [v0.22.3] - 2025-02-07

### Changed

- (GH-1881) General Build Image: Bump amd64/golang from 1.22.11-alpine3.20 to 1.22.12-alpine3.20 in /oldstable/build/alpine-x64
- (GH-1886) General Build Image: Bump amd64/golang from 1.22.11-bullseye to 1.22.12-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-1892) General Build Image: Bump amd64/golang from 1.23.5-alpine3.20 to 1.23.6-alpine3.20 in /stable/build/alpine-x64
- (GH-1896) General Build Image: Bump amd64/golang from 1.23.5-bullseye to 1.23.6-bullseye in /stable/build/cgo-mingw-w64-x64
- (GH-1901) General Build Image: Bump amd64/golang from 1.24rc2-alpine3.20 to 1.24rc3-alpine3.20 in /unstable/build/alpine-x64
- (GH-1900) General Build Image: Bump amd64/golang from 1.24rc2-bullseye to 1.24rc3-bullseye in /unstable/build/cgo-mingw-w64-x64
- (GH-1891) General Build Image: Bump i386/golang from 1.22.11-alpine3.20 to 1.22.12-alpine3.20 in /oldstable/build/alpine-x86
- (GH-1889) General Build Image: Bump i386/golang from 1.22.11-bullseye to 1.22.12-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-1884) General Build Image: Bump i386/golang from 1.23.5-alpine3.20 to 1.23.6-alpine3.20 in /stable/build/alpine-x86
- (GH-1882) General Build Image: Bump i386/golang from 1.23.5-bullseye to 1.23.6-bullseye in /stable/build/cgo-mingw-w64-x86
- (GH-1897) General Build Image: Bump i386/golang from 1.24rc2-alpine3.20 to 1.24rc3-alpine3.20 in /unstable/build/alpine-x86
- (GH-1898) General Build Image: Bump i386/golang from 1.24rc2-bullseye to 1.24rc3-bullseye in /unstable/build/cgo-mingw-w64-x86
- (GH-1887) Matrix Image: Bump amd64/golang from 1.22.11-bookworm to 1.22.12-bookworm in /oldstable/combined
- (GH-1883) Matrix Image: Bump amd64/golang from 1.23.5-bookworm to 1.23.6-bookworm in /stable/combined
- (GH-1893) Matrix Image: Bump amd64/golang from 1.23.5-bookworm to 1.23.6-bookworm in /unstable/combined
- (GH-1890) Mirror Build Image: Bump amd64/golang from 1.22.11-bookworm to 1.22.12-bookworm in /mirror/1.22
- (GH-1885) Mirror Build Image: Bump amd64/golang from 1.23.5-bookworm to 1.23.6-bookworm in /mirror/1.23
- (GH-1880) Release Build Image: Bump amd64/golang from 1.22.11-bookworm to 1.22.12-bookworm in /oldstable/build/release
- (GH-1888) Release Build Image: Bump amd64/golang from 1.23.5-bookworm to 1.23.6-bookworm in /stable/build/release
- (GH-1899) Release Build Image: Bump amd64/golang from 1.24rc2-bookworm to 1.24rc3-bookworm in /unstable/build/release

### Fixed

- (GH-1894) Fix base image for cgo-mingw-w64-x64
- (GH-1895) Fix constraints for stable cgo-mingw-w64-x64

## [v0.22.2] - 2025-01-17

### Changed

- (GH-1875) General Build Image: Bump amd64/golang from 1.22.10-alpine3.20 to 1.22.11-alpine3.20 in /oldstable/build/alpine-x64
- (GH-1866) General Build Image: Bump amd64/golang from 1.22.10-bullseye to 1.22.11-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-1871) General Build Image: Bump amd64/golang from 1.23.4-alpine3.20 to 1.23.5-alpine3.20 in /stable/build/alpine-x64
- (GH-1869) General Build Image: Bump amd64/golang from 1.24rc1-alpine3.20 to 1.24rc2-alpine3.20 in /unstable/build/alpine-x64
- (GH-1874) General Build Image: Bump amd64/golang from 1.24rc1-bullseye to 1.24rc2-bullseye in /unstable/build/cgo-mingw-w64-x64
- (GH-1861) General Build Image: Bump i386/golang from 1.22.10-alpine3.20 to 1.22.11-alpine3.20 in /oldstable/build/alpine-x86
- (GH-1864) General Build Image: Bump i386/golang from 1.22.10-bullseye to 1.22.11-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-1859) General Build Image: Bump i386/golang from 1.23.4-alpine3.20 to 1.23.5-alpine3.20 in /stable/build/alpine-x86
- (GH-1865) General Build Image: Bump i386/golang from 1.23.4-bullseye to 1.23.5-bullseye in /stable/build/cgo-mingw-w64-x86
- (GH-1872) General Build Image: Bump i386/golang from 1.24rc1-alpine3.20 to 1.24rc2-alpine3.20 in /unstable/build/alpine-x86
- (GH-1870) General Build Image: Bump i386/golang from 1.24rc1-bullseye to 1.24rc2-bullseye in /unstable/build/cgo-mingw-w64-x86
- (GH-1862) Matrix Image: Bump amd64/golang from 1.22.10-bookworm to 1.22.11-bookworm in /oldstable/combined
- (GH-1873) Matrix Image: Bump amd64/golang from 1.23.4-bookworm to 1.23.5-bookworm in /stable/combined
- (GH-1863) Matrix Image: Bump amd64/golang from 1.23.4-bookworm to 1.23.5-bookworm in /unstable/combined
- (GH-1877) Mirror Build Image: Bump amd64/golang from 1.22.10-bookworm to 1.22.11-bookworm in /mirror/1.22
- (GH-1876) Mirror Build Image: Bump amd64/golang from 1.23.4-bookworm to 1.23.5-bookworm in /mirror/1.23
- (GH-1860) Release Build Image: Bump amd64/golang from 1.22.10-bookworm to 1.22.11-bookworm in /oldstable/build/release
- (GH-1867) Release Build Image: Bump amd64/golang from 1.23.4-bookworm to 1.23.5-bookworm in /stable/build/release
- (GH-1868) Release Build Image: Bump amd64/golang from 1.24rc1-bookworm to 1.24rc2-bookworm in /unstable/build/release

## [v0.22.1] - 2025-01-16

### Changed

- (GH-1856) Update unstable build images to Go 1.24rc1

### Fixed

- (GH-1853) Explicitly specify platform when building images
- (GH-1855) Updated pinned Git dep version for Alpine images

## [v0.22.0] - 2025-01-15

### Removed

- (GH-1843) Remove abandoned errwrap linter
- (GH-1849) Remove abandoned orijtech/httperroryzer linter
- (GH-1845) Remove abandoned orijtech/structslop linter
- (GH-1847) Remove abandoned orijtech/tickeryzer linter

## [v0.21.20] - 2025-01-14

### Changed

- (GH-1836) Update golang.org/x/tools/cmd/deadcode to v0.29.0
- (GH-1839) Update golang.org/x/vuln to v1.1.4
- (GH-1835) Update golangci-lint to v1.63.4
- (GH-1837) Update goreleaser/nfpm to v2.41.2

## [v0.21.19] - 2025-01-02

### Changed

- (GH-1824) Update golang.org/x/tools/cmd/deadcode to v0.28.0
- (GH-1826) Update golangci-lint to v1.63.2

## [v0.21.18] - 2024-12-04

### Changed

- (GH-1812) General Build Image: Bump amd64/golang from 1.22.9-alpine3.20 to 1.22.10-alpine3.20 in /oldstable/build/alpine-x64
- (GH-1818) General Build Image: Bump amd64/golang from 1.22.9-bullseye to 1.22.10-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-1800) General Build Image: Bump amd64/golang from 1.23.3-alpine3.20 to 1.23.4-alpine3.20 in /stable/build/alpine-x64
- (GH-1805) General Build Image: Bump amd64/golang from 1.23.3-alpine3.20 to 1.23.4-alpine3.20 in /unstable/build/alpine-x64
- (GH-1815) General Build Image: Bump amd64/golang from 1.23.3-bullseye to 1.23.4-bullseye in /unstable/build/cgo-mingw-w64-x64
- (GH-1814) General Build Image: Bump i386/golang from 1.22.9-alpine3.20 to 1.22.10-alpine3.20 in /oldstable/build/alpine-x86
- (GH-1810) General Build Image: Bump i386/golang from 1.22.9-bullseye to 1.22.10-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-1807) General Build Image: Bump i386/golang from 1.23.3-alpine3.20 to 1.23.4-alpine3.20 in /stable/build/alpine-x86
- (GH-1816) General Build Image: Bump i386/golang from 1.23.3-alpine3.20 to 1.23.4-alpine3.20 in /unstable/build/alpine-x86
- (GH-1813) General Build Image: Bump i386/golang from 1.23.3-bullseye to 1.23.4-bullseye in /stable/build/cgo-mingw-w64-x86
- (GH-1817) General Build Image: Bump i386/golang from 1.23.3-bullseye to 1.23.4-bullseye in /unstable/build/cgo-mingw-w64-x86
- (GH-1811) Matrix Image: Bump amd64/golang from 1.22.9-bookworm to 1.22.10-bookworm in /oldstable/combined
- (GH-1802) Matrix Image: Bump amd64/golang from 1.23.3-bookworm to 1.23.4-bookworm in /stable/combined
- (GH-1804) Matrix Image: Bump amd64/golang from 1.23.3-bookworm to 1.23.4-bookworm in /unstable/combined
- (GH-1803) Mirror Build Image: Bump amd64/golang from 1.22.9-bookworm to 1.22.10-bookworm in /mirror/1.22
- (GH-1801) Mirror Build Image: Bump amd64/golang from 1.23.3-bookworm to 1.23.4-bookworm in /mirror/1.23
- (GH-1806) Release Build Image: Bump amd64/golang from 1.22.9-bookworm to 1.22.10-bookworm in /oldstable/build/release
- (GH-1808) Release Build Image: Bump amd64/golang from 1.23.3-bookworm to 1.23.4-bookworm in /stable/build/release
- (GH-1809) Release Build Image: Bump amd64/golang from 1.23.3-bookworm to 1.23.4-bookworm in /unstable/build/release

## [v0.21.17] - 2024-11-27

### Changed

- (GH-1797) Update golangci-lint to v1.62.2
- (GH-1795) Update goreleaser/nfpm to v2.41.1

## [v0.21.16] - 2024-11-13

### Changed

- (GH-1790) Update golang.org/x/tools/cmd/deadcode to v0.27.0
- (GH-1791) Update golangci-lint to v1.62.0

## [v0.21.15] - 2024-11-08

### Changed

- (GH-1778) General Build Image: Bump amd64/golang from 1.22.8-alpine3.20 to 1.22.9-alpine3.20 in /oldstable/build/alpine-x64
- (GH-1775) General Build Image: Bump amd64/golang from 1.22.8-bullseye to 1.22.9-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-1766) General Build Image: Bump amd64/golang from 1.23.2-alpine3.20 to 1.23.3-alpine3.20 in /stable/build/alpine-x64
- (GH-1765) General Build Image: Bump amd64/golang from 1.23.2-alpine3.20 to 1.23.3-alpine3.20 in /unstable/build/alpine-x64
- (GH-1773) General Build Image: Bump amd64/golang from 1.23.2-bullseye to 1.23.3-bullseye in /unstable/build/cgo-mingw-w64-x64
- (GH-1771) General Build Image: Bump i386/golang from 1.22.8-alpine3.20 to 1.22.9-alpine3.20 in /oldstable/build/alpine-x86
- (GH-1770) General Build Image: Bump i386/golang from 1.22.8-bullseye to 1.22.9-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-1776) General Build Image: Bump i386/golang from 1.23.2-alpine3.20 to 1.23.3-alpine3.20 in /stable/build/alpine-x86
- (GH-1779) General Build Image: Bump i386/golang from 1.23.2-alpine3.20 to 1.23.3-alpine3.20 in /unstable/build/alpine-x86
- (GH-1774) General Build Image: Bump i386/golang from 1.23.2-bullseye to 1.23.3-bullseye in /stable/build/cgo-mingw-w64-x86
- (GH-1782) General Build Image: Bump i386/golang from 1.23.2-bullseye to 1.23.3-bullseye in /unstable/build/cgo-mingw-w64-x86
- (GH-1769) Matrix Image: Bump amd64/golang from 1.22.8-bookworm to 1.22.9-bookworm in /oldstable/combined
- (GH-1772) Matrix Image: Bump amd64/golang from 1.23.2-bookworm to 1.23.3-bookworm in /stable/combined
- (GH-1764) Matrix Image: Bump amd64/golang from 1.23.2-bookworm to 1.23.3-bookworm in /unstable/combined
- (GH-1768) Mirror Build Image: Bump amd64/golang from 1.22.8-bookworm to 1.22.9-bookworm in /mirror/1.22
- (GH-1781) Mirror Build Image: Bump amd64/golang from 1.23.2-bookworm to 1.23.3-bookworm in /mirror/1.23
- (GH-1767) Release Build Image: Bump amd64/golang from 1.22.8-bookworm to 1.22.9-bookworm in /oldstable/build/release
- (GH-1777) Release Build Image: Bump amd64/golang from 1.23.2-bookworm to 1.23.3-bookworm in /stable/build/release
- (GH-1780) Release Build Image: Bump amd64/golang from 1.23.2-bookworm to 1.23.3-bookworm in /unstable/build/release
- (GH-1783) Update golang.org/x/tools/cmd/deadcode to v0.26.0
- (GH-1786) Update goreleaser/nfpm to v2.41.0 (redux)
- (GH-1784) Update goreleaser/nfpm to v2.41.0

## [v0.21.14] - 2024-10-04

### Changed

- (GH-1746) General Build Image: Bump amd64/golang from 1.22.7-alpine3.20 to 1.22.8-alpine3.20 in /oldstable/build/alpine-x64
- (GH-1757) General Build Image: Bump amd64/golang from 1.22.7-bullseye to 1.22.8-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-1756) General Build Image: Bump amd64/golang from 1.23.1-alpine3.20 to 1.23.2-alpine3.20 in /stable/build/alpine-x64
- (GH-1741) General Build Image: Bump amd64/golang from 1.23.1-alpine3.20 to 1.23.2-alpine3.20 in /unstable/build/alpine-x64
- (GH-1745) General Build Image: Bump amd64/golang from 1.23.1-bullseye to 1.23.2-bullseye in /unstable/build/cgo-mingw-w64-x64
- (GH-1747) General Build Image: Bump i386/golang from 1.22.7-alpine3.20 to 1.22.8-alpine3.20 in /oldstable/build/alpine-x86
- (GH-1758) General Build Image: Bump i386/golang from 1.22.7-bullseye to 1.22.8-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-1750) General Build Image: Bump i386/golang from 1.23.1-alpine3.20 to 1.23.2-alpine3.20 in /stable/build/alpine-x86
- (GH-1755) General Build Image: Bump i386/golang from 1.23.1-alpine3.20 to 1.23.2-alpine3.20 in /unstable/build/alpine-x86
- (GH-1759) General Build Image: Bump i386/golang from 1.23.1-bullseye to 1.23.2-bullseye in /stable/build/cgo-mingw-w64-x86
- (GH-1754) General Build Image: Bump i386/golang from 1.23.1-bullseye to 1.23.2-bullseye in /unstable/build/cgo-mingw-w64-x86
- (GH-1749) Matrix Image: Bump amd64/golang from 1.22.7-bookworm to 1.22.8-bookworm in /oldstable/combined
- (GH-1753) Matrix Image: Bump amd64/golang from 1.23.1-bookworm to 1.23.2-bookworm in /stable/combined
- (GH-1743) Matrix Image: Bump amd64/golang from 1.23.1-bookworm to 1.23.2-bookworm in /unstable/combined
- (GH-1751) Mirror Build Image: Bump amd64/golang from 1.22.7-bookworm to 1.22.8-bookworm in /mirror/1.22
- (GH-1748) Mirror Build Image: Bump amd64/golang from 1.23.1-bookworm to 1.23.2-bookworm in /mirror/1.23
- (GH-1742) Release Build Image: Bump amd64/golang from 1.22.7-bookworm to 1.22.8-bookworm in /oldstable/build/release
- (GH-1744) Release Build Image: Bump amd64/golang from 1.23.1-bookworm to 1.23.2-bookworm in /stable/build/release
- (GH-1752) Release Build Image: Bump amd64/golang from 1.23.1-bookworm to 1.23.2-bookworm in /unstable/build/release

## [v0.21.13] - 2024-09-19

### Changed

- (GH-1736) Update golangci-lint to v1.61.0
- (GH-1737) Update golang.org/x/tools/cmd/deadcode to v0.25.0
- (GH-1738) Update goreleaser/nfpm to v2.40.0

## [v0.21.12] - 2024-09-06

### Changed

- (GH-1710) General Build Image: Bump amd64/golang from 1.22.6-alpine3.20 to 1.22.7-alpine3.20 in /oldstable/build/alpine-x64
- (GH-1713) General Build Image: Bump amd64/golang from 1.22.6-bullseye to 1.22.7-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-1716) General Build Image: Bump amd64/golang from 1.23.0-alpine3.20 to 1.23.1-alpine3.20 in /stable/build/alpine-x64
- (GH-1726) General Build Image: Bump amd64/golang from 1.23.0-alpine3.20 to 1.23.1-alpine3.20 in /unstable/build/alpine-x64
- (GH-1729) General Build Image: Bump amd64/golang from 1.23.0-bullseye to 1.23.1-bullseye in /unstable/build/cgo-mingw-w64-x64
- (GH-1718) General Build Image: Bump i386/golang from 1.22.6-alpine3.20 to 1.22.7-alpine3.20 in /oldstable/build/alpine-x86
- (GH-1712) General Build Image: Bump i386/golang from 1.22.6-bullseye to 1.22.7-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-1719) General Build Image: Bump i386/golang from 1.23.0-alpine3.20 to 1.23.1-alpine3.20 in /stable/build/alpine-x86
- (GH-1728) General Build Image: Bump i386/golang from 1.23.0-alpine3.20 to 1.23.1-alpine3.20 in /unstable/build/alpine-x86
- (GH-1715) General Build Image: Bump i386/golang from 1.23.0-bullseye to 1.23.1-bullseye in /stable/build/cgo-mingw-w64-x86
- (GH-1730) General Build Image: Bump i386/golang from 1.23.0-bullseye to 1.23.1-bullseye in /unstable/build/cgo-mingw-w64-x86
- (GH-1720) Matrix Image: Bump amd64/golang from 1.22.6-bookworm to 1.22.7-bookworm in /oldstable/combined
- (GH-1708) Matrix Image: Bump amd64/golang from 1.23.0-bookworm to 1.23.1-bookworm in /stable/combined
- (GH-1727) Matrix Image: Bump amd64/golang from 1.23.0-bookworm to 1.23.1-bookworm in /unstable/combined
- (GH-1714) Mirror Build Image: Bump amd64/golang from 1.22.6-bookworm to 1.22.7-bookworm in /mirror/1.22
- (GH-1711) Mirror Build Image: Bump amd64/golang from 1.23.0-bookworm to 1.23.1-bookworm in /mirror/1.23
- (GH-1709) Release Build Image: Bump amd64/golang from 1.22.6-bookworm to 1.22.7-bookworm in /oldstable/build/release
- (GH-1717) Release Build Image: Bump amd64/golang from 1.23.0-bookworm to 1.23.1-bookworm in /stable/build/release
- (GH-1725) Release Build Image: Bump amd64/golang from 1.23.0-bookworm to 1.23.1-bookworm in /unstable/build/release
- (GH-1723) Update pelletier/go-toml to v2.2.3

### Fixed

- (GH-1724) Fix unstable image baseimage references

## [v0.21.11] - 2024-08-23

### Changed

- (GH-1705) Update golangci-lint to v1.60.3

## [v0.21.10] - 2024-08-22

### Changed

- (GH-1701) Update golangci-lint to v1.60.2

## [v0.21.9] - 2024-08-15

### Changed

- (GH-1662) Add Go 1.23 mirror img, fix STABLE/OLDSTABLE tags
- (GH-1667) General Build Image: Bump amd64/golang from 1.21.13-alpine3.20 to 1.22.6-alpine3.20 in /oldstable/build/alpine-x64
- (GH-1679) General Build Image: Bump amd64/golang from 1.21.13-bullseye to 1.22.6-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-1677) General Build Image: Bump amd64/golang from 1.22.6-alpine3.20 to 1.23.0-alpine3.20 in /stable/build/alpine-x64
- (GH-1668) General Build Image: Bump amd64/golang from 1.23rc2-alpine3.20 to 1.23-alpine3.20 in /unstable/build/alpine-x64
- (GH-1669) General Build Image: Bump amd64/golang from 1.23rc2-bullseye to 1.23-bullseye in /unstable/build/cgo-mingw-w64-x64
- (GH-1674) General Build Image: Bump i386/golang from 1.21.13-alpine3.20 to 1.22.6-alpine3.20 in /oldstable/build/alpine-x86
- (GH-1680) General Build Image: Bump i386/golang from 1.21.13-bullseye to 1.22.6-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-1665) General Build Image: Bump i386/golang from 1.22.6-alpine3.20 to 1.23.0-alpine3.20 in /stable/build/alpine-x86
- (GH-1672) General Build Image: Bump i386/golang from 1.22.6-bullseye to 1.23.0-bullseye in /stable/build/cgo-mingw-w64-x86
- (GH-1675) General Build Image: Bump i386/golang from 1.23rc2-alpine3.20 to 1.23-alpine3.20 in /unstable/build/alpine-x86
- (GH-1664) General Build Image: Bump i386/golang from 1.23rc2-bullseye to 1.23-bullseye in /unstable/build/cgo-mingw-w64-x86
- (GH-1670) Matrix Image: Bump amd64/golang from 1.21.13-bookworm to 1.22.6-bookworm in /oldstable/combined
- (GH-1666) Matrix Image: Bump amd64/golang from 1.22.6-bookworm to 1.23.0-bookworm in /stable/combined
- (GH-1678) Matrix Image: Bump amd64/golang from 1.23rc2-bookworm to 1.23-bookworm in /unstable/combined
- (GH-1673) Release Build Image: Bump amd64/golang from 1.21.13-bookworm to 1.22.6-bookworm in /oldstable/build/release
- (GH-1676) Release Build Image: Bump amd64/golang from 1.22.6-bookworm to 1.23.0-bookworm in /stable/build/release
- (GH-1671) Release Build Image: Bump amd64/golang from 1.23rc2-bookworm to 1.23-bookworm in /unstable/build/release
- (GH-1688) Restore `orijtech/structslop` linter
- (GH-1692) Update `orijtech` linters for Go 1.23 release
- (GH-1663) Update Dependabot monitoring for Go 1.23 release
- (GH-1693) Update golangci-lint to v1.60.1
- (GH-1695) Update goreleaser/nfpm to v2.39.0
- (GH-1689) Update stable img structslop install options
- (GH-1694) Update staticcheck to v0.5.1
- (GH-1697) Minor cleanup/consistency changes for linter imgs
- (GH-1691) Minor README cleanup
- (GH-1690) Split oldstable image into builder/final stages

### Fixed

- (GH-1696) README fixes for linters tables

## [v0.21.8] - 2024-08-07

### Changed

- (GH-1658) Bump golangci-lint Go 1.23 support to 2024-07-31
- (GH-1643) General Build Image: Bump amd64/golang from 1.21.12-alpine3.20 to 1.21.13-alpine3.20 in /oldstable/build/alpine-x64
- (GH-1654) General Build Image: Bump amd64/golang from 1.21.12-bullseye to 1.21.13-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-1650) General Build Image: Bump amd64/golang from 1.22.5-alpine3.20 to 1.22.6-alpine3.20 in /stable/build/alpine-x64
- (GH-1640) General Build Image: Bump amd64/golang from 1.22.5-bullseye to 1.22.6-bullseye in /stable/build/cgo-mingw-w64-x64
- (GH-1651) General Build Image: Bump i386/golang from 1.21.12-alpine3.20 to 1.21.13-alpine3.20 in /oldstable/build/alpine-x86
- (GH-1645) General Build Image: Bump i386/golang from 1.21.12-bullseye to 1.21.13-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-1646) General Build Image: Bump i386/golang from 1.22.5-alpine3.20 to 1.22.6-alpine3.20 in /stable/build/alpine-x86
- (GH-1642) General Build Image: Bump i386/golang from 1.22.5-bullseye to 1.22.6-bullseye in /stable/build/cgo-mingw-w64-x86
- (GH-1648) Matrix Image: Bump amd64/golang from 1.21.12-bookworm to 1.21.13-bookworm in /oldstable/combined
- (GH-1652) Matrix Image: Bump amd64/golang from 1.22.5-bookworm to 1.22.6-bookworm in /stable/combined
- (GH-1641) Mirror Build Image: Bump amd64/golang from 1.21.12-bookworm to 1.21.13-bookworm in /mirror/1.21
- (GH-1649) Mirror Build Image: Bump amd64/golang from 1.22.5-bookworm to 1.22.6-bookworm in /mirror/1.22
- (GH-1644) Release Build Image: Bump amd64/golang from 1.21.12-bookworm to 1.21.13-bookworm in /oldstable/build/release
- (GH-1653) Release Build Image: Bump amd64/golang from 1.22.5-bookworm to 1.22.6-bookworm in /stable/build/release
- (GH-1656) Update golang.org/x/tools/cmd/deadcode to v0.24.0
- (GH-1657) Use fixed tag for forked golangci-lint in unstable

### Fixed

- (GH-1655) Alpine images: bump `xz` from 5.6.1-r3 to 5.6.2-r0

## [v0.21.7] - 2024-07-29

### Fixed

- (GH-1637) Add `file` for stable, oldstable and unstable imgs

## [v0.21.6] - 2024-07-17

### Changed

- (GH-1627) General Build Image: Bump amd64/golang from 1.23rc1-alpine3.20 to 1.23rc2-alpine3.20 in /unstable/build/alpine-x64
- (GH-1629) General Build Image: Bump amd64/golang from 1.23rc1-bullseye to 1.23rc2-bullseye in /unstable/build/cgo-mingw-w64-x64
- (GH-1626) General Build Image: Bump i386/golang from 1.23rc1-alpine3.20 to 1.23rc2-alpine3.20 in /unstable/build/alpine-x86
- (GH-1632) General Build Image: Bump i386/golang from 1.23rc1-bullseye to 1.23rc2-bullseye in /unstable/build/cgo-mingw-w64-x86
- (GH-1631) Matrix Image: Bump amd64/golang from 1.23rc1-bookworm to 1.23rc2-bookworm in /unstable/combined
- (GH-1630) Release Build Image: Bump amd64/golang from 1.23rc1-bookworm to 1.23rc2-bookworm in /unstable/build/release
- (GH-1633) Update golang.org/x/vuln to v1.1.3

## [v0.21.5] - 2024-07-15

### Changed

- (GH-1622) Update golang.org/x/tools/cmd/deadcode to v0.23.0
- (GH-1623) Update goreleaser/nfpm to v2.38.0

## [v0.21.4] - 2024-07-03

### Changed

- (GH-1609) General Build Image: Bump amd64/golang from 1.21.11-alpine3.20 to 1.21.12-alpine3.20 in /oldstable/build/alpine-x64
- (GH-1608) General Build Image: Bump amd64/golang from 1.21.11-bullseye to 1.21.12-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-1613) General Build Image: Bump amd64/golang from 1.22.4-alpine3.20 to 1.22.5-alpine3.20 in /stable/build/alpine-x64
- (GH-1607) General Build Image: Bump amd64/golang from 1.22.4-bullseye to 1.22.5-bullseye in /stable/build/cgo-mingw-w64-x64
- (GH-1611) General Build Image: Bump i386/golang from 1.21.11-alpine3.20 to 1.21.12-alpine3.20 in /oldstable/build/alpine-x86
- (GH-1615) General Build Image: Bump i386/golang from 1.21.11-bullseye to 1.21.12-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-1616) General Build Image: Bump i386/golang from 1.22.4-alpine3.20 to 1.22.5-alpine3.20 in /stable/build/alpine-x86
- (GH-1614) General Build Image: Bump i386/golang from 1.22.4-bullseye to 1.22.5-bullseye in /stable/build/cgo-mingw-w64-x86
- (GH-1610) Matrix Image: Bump amd64/golang from 1.21.11-bookworm to 1.21.12-bookworm in /oldstable/combined
- (GH-1604) Matrix Image: Bump amd64/golang from 1.22.4-bookworm to 1.22.5-bookworm in /stable/combined
- (GH-1612) Mirror Build Image: Bump amd64/golang from 1.21.11-bookworm to 1.21.12-bookworm in /mirror/1.21
- (GH-1617) Mirror Build Image: Bump amd64/golang from 1.22.4-bookworm to 1.22.5-bookworm in /mirror/1.22
- (GH-1606) Release Build Image: Bump amd64/golang from 1.21.11-bookworm to 1.21.12-bookworm in /oldstable/build/release
- (GH-1605) Release Build Image: Bump amd64/golang from 1.22.4-bookworm to 1.22.5-bookworm in /stable/build/release

## [v0.21.3] - 2024-07-02

### Changed

- (GH-1601) Update staticcheck in unstable img to v0.5.0-rc.1

## [v0.21.2] - 2024-06-26

### Fixed

- (GH-1595) Fix GOLANGCI_LINT_VERSION tag in final stage
- (GH-1597) Install staticcheck from master for unstable image

## [v0.21.1] - 2024-06-26

### Changed

- (GH-1592) Drop `sudo` from image related commands

### Fixed

- (GH-1591) Install golangci-lint from fork using dev branch

## [v0.21.0] - 2024-06-24

### Changed

- (GH-1584) Update unstable images to Go 1.23rc1
- (GH-1586) Remove `orijtech/structslop` from unstable image

### Fixed

- (GH-1587) Cleanup forked linter version details

## [v0.20.8] - 2024-06-10

### Changed

- (GH-1578) Update golang.org/x/vuln to v1.1.2
- (GH-1580) Update golangci-lint to v1.59.1

## [v0.20.7] - 2024-06-05

### Changed

- (GH-1571) General Build Image: Bump amd64/golang from 1.21.10-alpine3.20 to 1.21.11-alpine3.20 in /oldstable/build/alpine-x64
- (GH-1553) General Build Image: Bump amd64/golang from 1.21.10-bullseye to 1.21.11-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-1558) General Build Image: Bump amd64/golang from 1.22.3-alpine3.20 to 1.22.4-alpine3.20 in /stable/build/alpine-x64
- (GH-1568) General Build Image: Bump amd64/golang from 1.22.3-alpine3.20 to 1.22.4-alpine3.20 in /unstable/build/alpine-x64
- (GH-1566) General Build Image: Bump amd64/golang from 1.22.3-bullseye to 1.22.4-bullseye in /stable/build/cgo-mingw-w64-x64
- (GH-1570) General Build Image: Bump amd64/golang from 1.22.3-bullseye to 1.22.4-bullseye in /unstable/build/cgo-mingw-w64-x64
- (GH-1559) General Build Image: Bump i386/golang from 1.21.10-alpine3.20 to 1.21.11-alpine3.20 in /oldstable/build/alpine-x86
- (GH-1556) General Build Image: Bump i386/golang from 1.21.10-bullseye to 1.21.11-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-1552) General Build Image: Bump i386/golang from 1.22.3-alpine3.20 to 1.22.4-alpine3.20 in /stable/build/alpine-x86
- (GH-1569) General Build Image: Bump i386/golang from 1.22.3-alpine3.20 to 1.22.4-alpine3.20 in /unstable/build/alpine-x86
- (GH-1563) General Build Image: Bump i386/golang from 1.22.3-bullseye to 1.22.4-bullseye in /stable/build/cgo-mingw-w64-x86
- (GH-1555) General Build Image: Bump i386/golang from 1.22.3-bullseye to 1.22.4-bullseye in /unstable/build/cgo-mingw-w64-x86
- (GH-1564) Matrix Image: Bump amd64/golang from 1.21.10-bookworm to 1.21.11-bookworm in /oldstable/combined
- (GH-1557) Matrix Image: Bump amd64/golang from 1.22.3-bookworm to 1.22.4-bookworm in /stable/combined
- (GH-1567) Matrix Image: Bump amd64/golang from 1.22.3-bookworm to 1.22.4-bookworm in /unstable/combined
- (GH-1554) Mirror Build Image: Bump amd64/golang from 1.21.10-bookworm to 1.21.11-bookworm in /mirror/1.21
- (GH-1562) Mirror Build Image: Bump amd64/golang from 1.22.3-bookworm to 1.22.4-bookworm in /mirror/1.22
- (GH-1565) Release Build Image: Bump amd64/golang from 1.21.10-bookworm to 1.21.11-bookworm in /oldstable/build/release
- (GH-1560) Release Build Image: Bump amd64/golang from 1.22.3-bookworm to 1.22.4-bookworm in /stable/build/release
- (GH-1551) Release Build Image: Bump amd64/golang from 1.22.3-bookworm to 1.22.4-bookworm in /unstable/build/release
- (GH-1573) Skip adding tools Dependabot PRs to release notes
- (GH-1572) Update git APK from 2.45.1-r0 to 2.45.2-r0
- (GH-1574) Update golang.org/x/tools/cmd/deadcode to v0.22.0

## [v0.20.6] - 2024-05-27

### Changed

- (GH-1544) Go Dependency: Bump github.com/golangci/golangci-lint from 1.58.2 to 1.59.0 in /tools
- (GH-1542) Go Dependency: Bump golang.org/x/vuln from 1.1.0 to 1.1.1 in /tools
- (GH-1546) Update golang.org/x/vuln to v1.1.1
- (GH-1545) Update golangci-lint to v1.59.0

### Fixed

- (GH-1547) Rename `goerr113` linter to `err113`
- (GH-1548) Swap Alpine base image version from 3.18 to 3.20

## [v0.20.5] - 2024-05-20

### Changed

- (GH-1537) Go Dependency: Bump github.com/golangci/golangci-lint from 1.58.1 to 1.58.2 in /tools
- (GH-1538) Update golangci-lint to v1.58.2

## [v0.20.4] - 2024-05-09

### Changed

- (GH-1528) Go Dependency: Bump github.com/golangci/golangci-lint from 1.58.0 to 1.58.1 in /tools
- (GH-1529) Go Dependency: Bump github.com/goreleaser/nfpm/v2 from 2.36.1 to 2.37.0 in /tools
- (GH-1532) Go Dependency: Bump github.com/goreleaser/nfpm/v2 from 2.37.0 to 2.37.1 in /tools
- (GH-1534) Update golangci-lint to v1.58.1
- (GH-1533) Update goreleaser/nfpm to v2.37.1

## [v0.20.3] - 2024-05-08

### Changed

- (GH-1516) General Build Image: Bump amd64/golang from 1.21.9-alpine3.18 to 1.21.10-alpine3.18 in /oldstable/build/alpine-x64
- (GH-1510) General Build Image: Bump amd64/golang from 1.21.9-bullseye to 1.21.10-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-1524) General Build Image: Bump amd64/golang from 1.22.2-alpine3.18 to 1.22.3-alpine3.18 in /stable/build/alpine-x64
- (GH-1514) General Build Image: Bump amd64/golang from 1.22.2-alpine3.18 to 1.22.3-alpine3.18 in /unstable/build/alpine-x64
- (GH-1512) General Build Image: Bump amd64/golang from 1.22.2-bullseye to 1.22.3-bullseye in /stable/build/cgo-mingw-w64-x64
- (GH-1508) General Build Image: Bump amd64/golang from 1.22.2-bullseye to 1.22.3-bullseye in /unstable/build/cgo-mingw-w64-x64
- (GH-1515) General Build Image: Bump i386/golang from 1.21.9-alpine3.18 to 1.21.10-alpine3.18 in /oldstable/build/alpine-x86
- (GH-1513) General Build Image: Bump i386/golang from 1.21.9-bullseye to 1.21.10-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-1522) General Build Image: Bump i386/golang from 1.22.2-alpine3.18 to 1.22.3-alpine3.18 in /stable/build/alpine-x86
- (GH-1517) General Build Image: Bump i386/golang from 1.22.2-alpine3.18 to 1.22.3-alpine3.18 in /unstable/build/alpine-x86
- (GH-1511) General Build Image: Bump i386/golang from 1.22.2-bullseye to 1.22.3-bullseye in /stable/build/cgo-mingw-w64-x86
- (GH-1509) General Build Image: Bump i386/golang from 1.22.2-bullseye to 1.22.3-bullseye in /unstable/build/cgo-mingw-w64-x86
- (GH-1518) Matrix Image: Bump amd64/golang from 1.21.9-bookworm to 1.21.10-bookworm in /oldstable/combined
- (GH-1525) Matrix Image: Bump amd64/golang from 1.22.2-bookworm to 1.22.3-bookworm in /stable/combined
- (GH-1520) Matrix Image: Bump amd64/golang from 1.22.2-bookworm to 1.22.3-bookworm in /unstable/combined
- (GH-1506) Mirror Build Image: Bump amd64/golang from 1.21.9-bookworm to 1.21.10-bookworm in /mirror/1.21
- (GH-1507) Mirror Build Image: Bump amd64/golang from 1.22.2-bookworm to 1.22.3-bookworm in /mirror/1.22
- (GH-1521) Release Build Image: Bump amd64/golang from 1.21.9-bookworm to 1.21.10-bookworm in /oldstable/build/release
- (GH-1523) Release Build Image: Bump amd64/golang from 1.22.2-bookworm to 1.22.3-bookworm in /stable/build/release
- (GH-1519) Release Build Image: Bump amd64/golang from 1.22.2-bookworm to 1.22.3-bookworm in /unstable/build/release

## [v0.20.2] - 2024-05-03

### Changed

- (GH-1500) Go Dependency: Bump github.com/golangci/golangci-lint from 1.57.2 to 1.58.0 in /tools
- (GH-1496) Go Dependency: Bump github.com/pelletier/go-toml/v2 from 2.2.0 to 2.2.2 in /tools
- (GH-1493) Go Dependency: Bump github.com/tc-hib/go-winres from 0.3.1 to 0.3.3 in /tools
- (GH-1495) Go Dependency: Bump golang.org/x/vuln from 1.0.4 to 1.1.0 in /tools
- (GH-1497) Update golang.org/x/vuln to v1.1.0
- (GH-1501) Update golangci-lint to v1.58.0
- (GH-1498) Update pelletier/go-toml to v2.2.2
- (GH-1499) Update tc-hib/go-winres to v0.3.3

### Fixed

- (GH-1502) Remove inactive `maligned` linter

## [v0.20.1] - 2024-04-04

### Changed

- (GH-1474) General Build Image: Bump amd64/golang from 1.21.8-alpine3.18 to 1.21.9-alpine3.18 in /oldstable/build/alpine-x64
- (GH-1487) General Build Image: Bump amd64/golang from 1.21.8-bullseye to 1.21.9-bullseye in /oldstable/build/cgo-mingw-w64-x64
- (GH-1485) General Build Image: Bump amd64/golang from 1.22.1-alpine3.18 to 1.22.2-alpine3.18 in /stable/build/alpine-x64
- (GH-1486) General Build Image: Bump amd64/golang from 1.22.1-alpine3.18 to 1.22.2-alpine3.18 in /unstable/build/alpine-x64
- (GH-1482) General Build Image: Bump amd64/golang from 1.22.1-bullseye to 1.22.2-bullseye in /stable/build/cgo-mingw-w64-x64
- (GH-1472) General Build Image: Bump amd64/golang from 1.22.1-bullseye to 1.22.2-bullseye in /unstable/build/cgo-mingw-w64-x64
- (GH-1483) General Build Image: Bump i386/golang from 1.21.8-alpine3.18 to 1.21.9-alpine3.18 in /oldstable/build/alpine-x86
- (GH-1488) General Build Image: Bump i386/golang from 1.21.8-bullseye to 1.21.9-bullseye in /oldstable/build/cgo-mingw-w64-x86
- (GH-1476) General Build Image: Bump i386/golang from 1.22.1-alpine3.18 to 1.22.2-alpine3.18 in /stable/build/alpine-x86
- (GH-1475) General Build Image: Bump i386/golang from 1.22.1-alpine3.18 to 1.22.2-alpine3.18 in /unstable/build/alpine-x86
- (GH-1477) General Build Image: Bump i386/golang from 1.22.1-bullseye to 1.22.2-bullseye in /stable/build/cgo-mingw-w64-x86
- (GH-1470) General Build Image: Bump i386/golang from 1.22.1-bullseye to 1.22.2-bullseye in /unstable/build/cgo-mingw-w64-x86
- (GH-1467) Go Dependency: Bump github.com/goreleaser/nfpm/v2 from 2.35.3 to 2.36.1 in /tools
- (GH-1471) Matrix Image: Bump amd64/golang from 1.21.8-bookworm to 1.21.9-bookworm in /oldstable/combined
- (GH-1469) Matrix Image: Bump amd64/golang from 1.22.1-bookworm to 1.22.2-bookworm in /stable/combined
- (GH-1481) Matrix Image: Bump amd64/golang from 1.22.1-bookworm to 1.22.2-bookworm in /unstable/combined
- (GH-1479) Mirror Build Image: Bump amd64/golang from 1.21.8-bookworm to 1.21.9-bookworm in /mirror/1.21
- (GH-1473) Mirror Build Image: Bump amd64/golang from 1.22.1-bookworm to 1.22.2-bookworm in /mirror/1.22
- (GH-1484) Release Build Image: Bump amd64/golang from 1.21.8-bookworm to 1.21.9-bookworm in /oldstable/build/release
- (GH-1480) Release Build Image: Bump amd64/golang from 1.22.1-bookworm to 1.22.2-bookworm in /stable/build/release
- (GH-1478) Release Build Image: Bump amd64/golang from 1.22.1-bookworm to 1.22.2-bookworm in /unstable/build/release
- (GH-1468) Update goreleaser/nfpm to v2.36.1

### Fixed

- (GH-1465) Fix monthly scheduled tasks workflow
- (GH-1466) Fix monthly scheduled tasks workflow (redux)

## [v0.20.0] - 2024-03-29

### Added

- - (GH-1462) Add github.com/bitfield/gotestdox

### Changed

- (GH-1460) Go Dependency: Bump github.com/golangci/golangci-lint from 1.57.1 to 1.57.2 in /tools
- (GH-1461) Update golangci-lint from v1.57.1 to v1.57.2

## [v0.19.0] - 2024-03-23

### Changed

- (GH-1456) Change mingw-w64 build image base OS

## [v0.18.0] - 2024-03-23

### Added

- (GH-1452) Split image build and upload tasks
- (GH-1453) Update release build workflow to use batches

### Fixed

- (GH-1451) Building all images exceeds "Standard" GitHub-hosted runners disk
  space

## [v0.17.1] - 2024-03-23

### Fixed

- (GH-1449) Fix build recipe to call current mingw-64 recipes

## [v0.17.0] - 2024-03-23

### Added

- (GH-1441) Add 32-bit variant of the mingw-w64 image
- (GH-1443) Add oldstable and unstable mingw-w64 img variants
- (GH-1447) Add Fyle toolkit dependencies to mingw-w64 images

### Fixed

- (GH-1445) Fix mingw-w64 Dependabot ignore dep name

## [v0.16.1] - 2024-03-21

### Changed

- (GH-1436) Go Dependency: Bump github.com/golangci/golangci-lint from 1.57.0 to 1.57.1 in /tools
- (GH-1437) Update golangci-lint from v1.57.0 to v1.57.1
- (GH-1433) Add deadcode reflink to README

### Fixed

- (GH-1434) Update CHANGELOG for v0.16.0 release

## [v0.16.0] - 2024-03-20

### Added

- (GH-1432) Add deadcode command

### Changed

- (GH-1429) Go Dependency: Bump github.com/golangci/golangci-lint from 1.56.2 to 1.57.0 in /tools
- (GH-1428) Go Dependency: Bump github.com/pelletier/go-toml/v2 from 2.1.1 to 2.2.0 in /tools
- (GH-1431) Update golangci-lint from v1.56.2 to v1.57.0
- (GH-1430) Update pelletier/go-toml to v2.2.0

## [v0.15.4] - 2024-03-06

### Changed

- (GH-1417) General Build Image: Bump amd64/golang from 1.21.7-alpine3.18 to 1.21.8-alpine3.18 in /oldstable/build/alpine-x64
- (GH-1413) General Build Image: Bump amd64/golang from 1.22.0-alpine3.18 to 1.22.1-alpine3.18 in /stable/build/alpine-x64
- (GH-1421) General Build Image: Bump amd64/golang from 1.22.0-alpine3.18 to 1.22.1-alpine3.18 in /unstable/build/alpine-x64
- (GH-1412) General Build Image: Bump amd64/golang from 1.22.0-bookworm to 1.22.1-bookworm in /stable/build/cgo-mingw-w64
- (GH-1425) General Build Image: Bump i386/golang from 1.21.7-alpine3.18 to 1.21.8-alpine3.18 in /oldstable/build/alpine-x86
- (GH-1424) General Build Image: Bump i386/golang from 1.22.0-alpine3.18 to 1.22.1-alpine3.18 in /stable/build/alpine-x86
- (GH-1423) General Build Image: Bump i386/golang from 1.22.0-alpine3.18 to 1.22.1-alpine3.18 in /unstable/build/alpine-x86
- (GH-1416) Matrix Image: Bump amd64/golang from 1.21.7-bookworm to 1.21.8-bookworm in /oldstable/combined
- (GH-1411) Matrix Image: Bump amd64/golang from 1.22.0-bookworm to 1.22.1-bookworm in /stable/combined
- (GH-1420) Matrix Image: Bump amd64/golang from 1.22.0-bookworm to 1.22.1-bookworm in /unstable/combined
- (GH-1422) Mirror Build Image: Bump amd64/golang from 1.21.7-bookworm to 1.21.8-bookworm in /mirror/1.21
- (GH-1418) Mirror Build Image: Bump amd64/golang from 1.22.0-bookworm to 1.22.1-bookworm in /mirror/1.22
- (GH-1415) Release Build Image: Bump amd64/golang from 1.21.7-bookworm to 1.21.8-bookworm in /oldstable/build/release
- (GH-1419) Release Build Image: Bump amd64/golang from 1.22.0-bookworm to 1.22.1-bookworm in /stable/build/release
- (GH-1414) Release Build Image: Bump amd64/golang from 1.22.0-bookworm to 1.22.1-bookworm in /unstable/build/release

## [v0.15.3] - 2024-02-23

### Changed

- (GH-1407) Go Dependency: Bump honnef.co/go/tools from 0.4.6 to 0.4.7 in /tools
- (GH-1406) Remove Dependabot monitoring for retired Go imgs
- (GH-1405) Update Dependabot PR prefixes
- (GH-1408) Update staticcheck from v0.4.6 to v0.4.7

## [v0.15.2] - 2024-02-16

### Fixed

- (GH-1401) Use builder/final pattern for stable Dockerfile

## [v0.15.1] - 2024-02-16

### Changed

- (GH-1389) Add Dependabot monitoring for Go 1.22 mirror image
- (GH-1397) docker: bump amd64/golang from 1.20.14-alpine3.18 to 1.21.7-alpine3.18 in /oldstable/build/alpine-x64
- (GH-1394) docker: bump amd64/golang from 1.20.14-bookworm to 1.21.7-bookworm in /oldstable/build/release
- (GH-1395) docker: bump amd64/golang from 1.20.14-bookworm to 1.21.7-bookworm in /oldstable/combined
- (GH-1380) docker: bump amd64/golang from 1.21.7-alpine3.18 to 1.22.0-alpine3.18 in /stable/build/alpine-x64
- (GH-1377) docker: bump amd64/golang from 1.21.7-bookworm to 1.22.0-bookworm in /stable/build/cgo-mingw-w64
- (GH-1385) docker: bump amd64/golang from 1.21.7-bookworm to 1.22.0-bookworm in /stable/build/release
- (GH-1376) docker: bump amd64/golang from 1.21.7-bookworm to 1.22.0-bookworm in /stable/combined
- (GH-1393) docker: bump i386/golang from 1.20.14-alpine3.18 to 1.21.7-alpine3.18 in /oldstable/build/alpine-x86
- (GH-1396) docker: bump i386/golang from 1.21.7-alpine3.18 to 1.22.0-alpine3.18 in /stable/build/alpine-x86
- (GH-1390) go.mod: bump github.com/golangci/golangci-lint from 1.56.1 to 1.56.2 in /tools
- (GH-1391) Update golangci-lint from v1.56.1 to v1.56.2

### Fixed

- (GH-1388) Fix Dependabot Docker image constraints
- (GH-1392) Update Dependabot Docker img version constraints

## [v0.15.0] - 2024-02-09

### Added

- (GH-1371) Add architecture specification to all Dockerfiles

### Changed

- (GH-1373) Add Go 1.22 mirror img, fix STABLE/OLDSTABLE tags
- (GH-1369) go.mod: bump github.com/golangci/golangci-lint from 1.56.0 to 1.56.1 in /tools
- (GH-1370) Update golangci-lint from v1.56.0 to v1.56.1

## [v0.14.9] - 2024-02-08

### Changed

- (GH-1362) docker: bump golang from 1.20.13-alpine3.18 to 1.20.14-alpine3.18 in /oldstable/build/alpine-x64
- (GH-1352) docker: bump golang from 1.20.13-bookworm to 1.20.14-bookworm in /mirror/1.20
- (GH-1361) docker: bump golang from 1.20.13-bookworm to 1.20.14-bookworm in /oldstable/build/release
- (GH-1351) docker: bump golang from 1.20.13-bookworm to 1.20.14-bookworm in /oldstable/combined
- (GH-1360) docker: bump golang from 1.21.6-alpine3.18 to 1.21.7-alpine3.18 in /stable/build/alpine-x64
- (GH-1354) docker: bump golang from 1.21.6-bookworm to 1.21.7-bookworm in /mirror/1.21
- (GH-1355) docker: bump golang from 1.21.6-bookworm to 1.21.7-bookworm in /stable/build/cgo-mingw-w64
- (GH-1359) docker: bump golang from 1.21.6-bookworm to 1.21.7-bookworm in /stable/build/release
- (GH-1353) docker: bump golang from 1.21.6-bookworm to 1.21.7-bookworm in /stable/combined
- (GH-1337) docker: bump golang from 1.22rc2-alpine3.18 to 1.22-alpine3.18 in /unstable/build/alpine-x64
- (GH-1335) docker: bump golang from 1.22rc2-bookworm to 1.22-bookworm in /unstable/build/release
- (GH-1340) docker: bump golang from 1.22rc2-bookworm to 1.22-bookworm in /unstable/combined
- (GH-1339) docker: bump i386/golang from 1.20.13-alpine3.18 to 1.20.14-alpine3.18 in /oldstable/build/alpine-x86
- (GH-1336) docker: bump i386/golang from 1.21.6-alpine3.18 to 1.21.7-alpine3.18 in /stable/build/alpine-x86
- (GH-1338) docker: bump i386/golang from 1.22rc2-alpine3.18 to 1.22-alpine3.18 in /unstable/build/alpine-x86
- (GH-1357) go.mod: bump github.com/fatih/errwrap from 1.5.0 to 1.6.0 in /tools
- (GH-1356) go.mod: bump github.com/golangci/golangci-lint from 1.55.2 to 1.56.0 in /tools
- (GH-1358) go.mod: bump golang.org/x/vuln from 1.0.3 to 1.0.4 in /tools
- (GH-1364) Update fatih/errwrap to v1.6.0
- (GH-1365) Update golang.org/x/vuln to v1.0.4
- (GH-1366) Update golangci-lint from v1.55.2 to v1.56.0

### Fixed

- (GH-1346) Fix unstable images Go release version
- (GH-1363) Update commit hashes for orijtech linter forks

## [v0.14.8] - 2024-02-06

### Fixed

- (GH-1332) Switch fatih/errwrap linter install source

## [v0.14.7] - 2024-02-05

### Fixed

- (GH-1328) Switch orijtech linters install source

## [v0.14.6] - 2024-02-01

### Changed

- (GH-1320) go.mod: bump github.com/goreleaser/nfpm/v2 from 2.35.2 to 2.35.3 in /tools
- (GH-1322) Update goreleaser/nfpm to v2.35.3

### Fixed

- (GH-1321) Replace choffmeister/git-describe-semver GH action

## [v0.14.5] - 2024-01-25

### Changed

- (GH-1314) docker: bump golang from 1.22rc1-alpine3.18 to 1.22rc2-alpine3.18 in /unstable/build/alpine-x64
- (GH-1313) docker: bump golang from 1.22rc1-bookworm to 1.22rc2-bookworm in /unstable/build/release
- (GH-1315) docker: bump golang from 1.22rc1-bookworm to 1.22rc2-bookworm in /unstable/combined
- (GH-1316) docker: bump i386/golang from 1.22rc1-alpine3.18 to 1.22rc2-alpine3.18 in /unstable/build/alpine-x86
- (GH-1312) go.mod: bump golang.org/x/vuln from 1.0.2 to 1.0.3 in /tools
- (GH-1317) Update golang.org/x/vuln to v1.0.3

## [v0.14.4] - 2024-01-17

### Changed

- (GH-1308) go.mod: bump golang.org/x/vuln from 1.0.1 to 1.0.2 in /tools
- (GH-1309) Update golang.org/x/vuln to v1.0.2
- (GH-1306) Update unstable images to Go 1.22rc1

## [v0.14.3] - 2024-01-13

### Changed

- (GH-1285) docker: bump golang from 1.20.12-alpine3.18 to 1.20.13-alpine3.18 in /oldstable/build/alpine-x64
- (GH-1288) docker: bump golang from 1.20.12-bookworm to 1.20.13-bookworm in /mirror/1.20
- (GH-1286) docker: bump golang from 1.20.12-bookworm to 1.20.13-bookworm in /oldstable/build/release
- (GH-1296) docker: bump golang from 1.20.12-bookworm to 1.20.13-bookworm in /oldstable/combined
- (GH-1295) docker: bump golang from 1.21.5-alpine3.18 to 1.21.6-alpine3.18 in /stable/build/alpine-x64
- (GH-1289) docker: bump golang from 1.21.5-alpine3.18 to 1.21.6-alpine3.18 in /unstable/build/alpine-x64
- (GH-1290) docker: bump golang from 1.21.5-bookworm to 1.21.6-bookworm in /mirror/1.21
- (GH-1291) docker: bump golang from 1.21.5-bookworm to 1.21.6-bookworm in /stable/build/cgo-mingw-w64
- (GH-1287) docker: bump golang from 1.21.5-bookworm to 1.21.6-bookworm in /stable/build/release
- (GH-1298) docker: bump golang from 1.21.5-bookworm to 1.21.6-bookworm in /stable/combined
- (GH-1293) docker: bump golang from 1.21.5-bookworm to 1.21.6-bookworm in /unstable/build/release
- (GH-1297) docker: bump i386/golang from 1.20.12-alpine3.18 to 1.20.13-alpine3.18 in /oldstable/build/alpine-x86
- (GH-1294) docker: bump i386/golang from 1.21.5-alpine3.18 to 1.21.6-alpine3.18 in /stable/build/alpine-x86
- (GH-1292) docker: bump i386/golang from 1.21.5-alpine3.18 to 1.21.6-alpine3.18 in /unstable/build/alpine-x86
- (GH-1275) go.mod: bump github.com/choffmeister/git-describe-semver from 0.3.11 to 0.4.0 in /tools
- (GH-1283) go.mod: bump github.com/goreleaser/nfpm/v2 from 2.34.0 to 2.35.2 in /tools
- (GH-1277) go.mod: bump github.com/pelletier/go-toml/v2 from 2.1.0 to 2.1.1 in /tools
- (GH-1301) Update choffmeister/git-describe-semver to v0.4.0
- (GH-1302) Update goreleaser/nfpm to v2.35.2
- (GH-1303) Update pelletier/go-toml to v2.1.1

### Fixed

- (GH-1299) Replace choffmeister/git-describe-semver GH action

## [v0.14.2] - 2023-12-06

### Changed

- (GH-1270) docker: bump golang from 1.20.11-alpine3.18 to 1.20.12-alpine3.18 in /oldstable/build/alpine-x64
- (GH-1272) docker: bump golang from 1.20.11-bookworm to 1.20.12-bookworm in /mirror/1.20
- (GH-1260) docker: bump golang from 1.20.11-bookworm to 1.20.12-bookworm in /oldstable/build/release
- (GH-1263) docker: bump golang from 1.20.11-bookworm to 1.20.12-bookworm in /oldstable/combined
- (GH-1261) docker: bump golang from 1.21.4-alpine3.18 to 1.21.5-alpine3.18 in /stable/build/alpine-x64
- (GH-1266) docker: bump golang from 1.21.4-alpine3.18 to 1.21.5-alpine3.18 in /unstable/build/alpine-x64
- (GH-1259) docker: bump golang from 1.21.4-bookworm to 1.21.5-bookworm in /mirror/1.21
- (GH-1265) docker: bump golang from 1.21.4-bookworm to 1.21.5-bookworm in /stable/build/cgo-mingw-w64
- (GH-1268) docker: bump golang from 1.21.4-bookworm to 1.21.5-bookworm in /stable/build/release
- (GH-1269) docker: bump golang from 1.21.4-bookworm to 1.21.5-bookworm in /stable/combined
- (GH-1267) docker: bump golang from 1.21.4-bookworm to 1.21.5-bookworm in /unstable/build/release
- (GH-1262) docker: bump i386/golang from 1.20.11-alpine3.18 to 1.20.12-alpine3.18 in /oldstable/build/alpine-x86
- (GH-1271) docker: bump i386/golang from 1.21.4-alpine3.18 to 1.21.5-alpine3.18 in /stable/build/alpine-x86
- (GH-1264) docker: bump i386/golang from 1.21.4-alpine3.18 to 1.21.5-alpine3.18 in /unstable/build/alpine-x86

## [v0.14.1] - 2023-11-13

### Changed

- (GH-1246) docker: bump golang from 1.20.10-alpine3.18 to 1.20.11-alpine3.18 in /oldstable/build/alpine-x64
- (GH-1244) docker: bump golang from 1.20.10-bookworm to 1.20.11-bookworm in /mirror/1.20
- (GH-1242) docker: bump golang from 1.20.10-bookworm to 1.20.11-bookworm in /oldstable/build/release
- (GH-1254) docker: bump golang from 1.20.10-bookworm to 1.20.11-bookworm in /oldstable/combined
- (GH-1245) docker: bump golang from 1.21.3-alpine3.18 to 1.21.4-alpine3.18 in /stable/build/alpine-x64
- (GH-1251) docker: bump golang from 1.21.3-alpine3.18 to 1.21.4-alpine3.18 in /unstable/build/alpine-x64
- (GH-1252) docker: bump golang from 1.21.3-bookworm to 1.21.4-bookworm in /mirror/1.21
- (GH-1250) docker: bump golang from 1.21.3-bookworm to 1.21.4-bookworm in /stable/build/cgo-mingw-w64
- (GH-1249) docker: bump golang from 1.21.3-bookworm to 1.21.4-bookworm in /stable/build/release
- (GH-1243) docker: bump golang from 1.21.3-bookworm to 1.21.4-bookworm in /stable/combined
- (GH-1253) docker: bump golang from 1.21.3-bookworm to 1.21.4-bookworm in /unstable/build/release
- (GH-1248) docker: bump i386/golang from 1.20.10-alpine3.18 to 1.20.11-alpine3.18 in /oldstable/build/alpine-x86
- (GH-1241) docker: bump i386/golang from 1.21.3-alpine3.18 to 1.21.4-alpine3.18 in /stable/build/alpine-x86
- (GH-1247) docker: bump i386/golang from 1.21.3-alpine3.18 to 1.21.4-alpine3.18 in /unstable/build/alpine-x86
- (GH-1240) go.mod: bump github.com/golangci/golangci-lint from 1.55.1 to 1.55.2 in /tools
- (GH-1238) go.mod: bump github.com/goreleaser/nfpm/v2 from 2.33.1 to 2.34.0 in /tools
- (GH-1255) Update golangci-lint from v1.55.1 to v1.55.2
- (GH-1256) Update goreleaser/nfpm from v2.33.1 to v2.34.0

## [v0.14.0] - 2023-10-26

### Added

- (GH-1235) Explicitly set `GOTOOLCHAIN` environment variable

### Changed

- (GH-1234) Update golangci-lint from v1.54.1 to v1.55.1

## [v0.13.12] - 2023-10-11

### Changed

- Go versions
  - mirror build images
    - Update `go-ci-mirror-build-go1.20` from `1.20.9` to `1.20.10`
    - Update `go-ci-mirror-build-go1.21` from `1.21.2` to `1.21.3`
  - oldstable images
    - Update `go-ci-oldstable` from `1.20.9` to `1.20.10`
    - Update `go-ci-oldstable-build` from `1.20.9` to `1.20.10`
    - Update `go-ci-oldstable-alpine-buildx86` from `1.20.9-alpine3.18` to
      `1.20.10-alpine3.18`
    - Update `go-ci-oldstable-alpine-buildx64` from `1.20.9-alpine3.18` to
      `1.20.10-alpine3.18`
  - stable images
    - Update `go-ci-stable` from `1.21.2` to `1.21.3`
    - Update `go-ci-stable-build` from `1.21.2` to `1.21.3`
    - Update `go-ci-stable-cgo-mingw-w64-build` from `1.21.2` to `1.21.3`
    - Update `go-ci-stable-alpine-buildx86` from `1.21.2-alpine3.18` to
      `1.21.3-alpine3.18`
    - Update `go-ci-stable-alpine-buildx64` from `1.21.2-alpine3.18` to
      `1.21.3-alpine3.18`
  - unstable images
    - Update `go-ci-unstable` from `1.21.2` to `1.21.3`
    - Update `go-ci-unstable-build` from `1.21.2` to `1.21.3`
    - Update `go-ci-unstable-alpine-buildx86` from `1.21.2-alpine3.18` to
      `1.21.3-alpine3.18`
    - Update `go-ci-unstable-alpine-buildx64` from `1.21.2-alpine3.18` to
      `1.21.3-alpine3.18`

## [v0.13.11] - 2023-10-10

### Changed

- Go versions
  - mirror build images
    - Update `go-ci-mirror-build-go1.20` from `1.20.8` to `1.20.9`
    - Update `go-ci-mirror-build-go1.21` from `1.21.1` to `1.21.2`
  - oldstable images
    - Update `go-ci-oldstable` from `1.20.8` to `1.20.9`
    - Update `go-ci-oldstable-build` from `1.20.8` to `1.20.9`
    - Update `go-ci-oldstable-alpine-buildx86` from `1.20.8-alpine3.18` to
      `1.20.9-alpine3.18`
    - Update `go-ci-oldstable-alpine-buildx64` from `1.20.8-alpine3.18` to
      `1.20.9-alpine3.18`
  - stable images
    - Update `go-ci-stable` from `1.21.1` to `1.21.2`
    - Update `go-ci-stable-build` from `1.21.1` to `1.21.2`
    - Update `go-ci-stable-cgo-mingw-w64-build` from `1.21.1` to `1.21.2`
    - Update `go-ci-stable-alpine-buildx86` from `1.21.1-alpine3.18` to
      `1.21.2-alpine3.18`
    - Update `go-ci-stable-alpine-buildx64` from `1.21.1-alpine3.18` to
      `1.21.2-alpine3.18`
  - unstable images
    - Update `go-ci-unstable` from `1.21.1` to `1.21.2`
    - Update `go-ci-unstable-build` from `1.21.1` to `1.21.2`
    - Update `go-ci-unstable-alpine-buildx86` from `1.21.1-alpine3.18` to
      `1.21.2-alpine3.18`
    - Update `go-ci-unstable-alpine-buildx64` from `1.21.1-alpine3.18` to
      `1.21.2-alpine3.18`

## [v0.13.10] - 2023-09-22

### Changed

- Dependencies
  - `goreleaser/nfpm`
    - `v2.33.0` to `v2.33.1`

## [v0.13.9] - 2023-09-20

### Changed

- Dependencies
  - `goreleaser/nfpm`
    - `v2.32.0` to `v2.33.0`
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.4.5` to `v0.4.6`

## [v0.13.8] - 2023-09-12

### Added

- (GH-1182) Add Dependabot monitoring for Go 1.21 mirror image

### Changed

- Go versions
  - mirror build images
    - Update `go-ci-mirror-build-go1.19` from `1.19.12` to `1.19.13`
    - Update `go-ci-mirror-build-go1.20` from `1.20.7` to `1.20.8`
    - Update `go-ci-mirror-build-go1.21` from `1.21.0` to `1.21.1`
  - oldstable images
    - Update `go-ci-oldstable` from `1.20.7` to `1.20.8`
    - Update `go-ci-oldstable-build` from `1.20.7` to `1.20.8`
    - Update `go-ci-oldstable-alpine-buildx86` from `1.20.7-alpine3.18` to
      `1.20.8-alpine3.18`
    - Update `go-ci-oldstable-alpine-buildx64` from `1.20.7-alpine3.18` to
      `1.20.8-alpine3.18`
  - stable images
    - Update `go-ci-stable` from `1.21.0` to `1.21.1`
    - Update `go-ci-stable-build` from `1.21.0` to `1.21.1`
    - Update `go-ci-stable-cgo-mingw-w64-build` from `1.21.0` to `1.21.1`
    - Update `go-ci-stable-alpine-buildx86` from `1.21.0-alpine3.18` to
      `1.21.1-alpine3.18`
    - Update `go-ci-stable-alpine-buildx64` from `1.21.0-alpine3.18` to
      `1.21.1-alpine3.18`
  - unstable images
    - Update `go-ci-unstable` from `1.21.0` to `1.21.1`
    - Update `go-ci-unstable-build` from `1.21.0` to `1.21.1`
    - Update `go-ci-unstable-alpine-buildx86` from `1.21.0-alpine3.18` to
      `1.21.1-alpine3.18`
    - Update `go-ci-unstable-alpine-buildx64` from `1.21.0-alpine3.18` to
      `1.21.1-alpine3.18`

- Dependencies
  - `actions/checkout`
    - `v3` to `v4`
  - `pelletier/go-toml`
    - `v2.0.9` to `v2.1.0`

### Fixed

- (GH-1166) Update unstable images version
- (GH-1170) Update Dependabot Docker img version constraints
- (GH-1181) Fix Go 1.20 mirror image version constraint

## [v0.13.7] - 2023-08-22

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.54.2` to `v1.54.1`

## [v0.13.6] - 2023-08-22

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.54.1` to `v1.54.2`

## [v0.13.5] - 2023-08-18

### Changed

- Dependencies
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.4.3` to `v0.4.5`
  - `golang.org/x/vuln` (`govulncheck`)
    - `v1.0.0` to `v1.0.1`

## [v0.13.4] - 2023-08-14

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.54.0` to `v1.54.1`

## [v0.13.3] - 2023-08-09

### Changed

- Go versions
  - mirror build images
    - Add `go-ci-mirror-build-go1.21` at `1.21.0`
  - oldstable images
    - Update `go-ci-oldstable` from `1.19.12` to `1.20.7`
    - Update `go-ci-oldstable-build` from `1.19.12` to `1.20.7`
    - Update `go-ci-oldstable-alpine-buildx86` from `1.19.12-alpine3.18` to
      `1.20.7-alpine3.18`
    - Update `go-ci-oldstable-alpine-buildx64` from `1.19.12-alpine3.18` to
      `1.20.7-alpine3.18`
  - stable images
    - Update `go-ci-stable` from `1.20.7` to `1.21.0`
    - Update `go-ci-stable-build` from `1.20.7` to `1.21.0`
    - Update `go-ci-stable-cgo-mingw-w64-build` from `1.20.7` to `1.21.0`
    - Update `go-ci-stable-alpine-buildx86` from `1.20.7-alpine3.18` to
      `1.21.0-alpine3.18`
    - Update `go-ci-stable-alpine-buildx64` from `1.20.7-alpine3.18` to
      `1.21.0-alpine3.18`
  - unstable images
    - Update `go-ci-unstable` from `1.21rc4` to `1.21.0`
    - Update `go-ci-unstable-build` from `1.21rc4` to `1.21.0`
    - Update `go-ci-unstable-alpine-buildx86` from `1.21rc4-alpine3.18` to
      `1.21.0-alpine3.18`
    - Update `go-ci-unstable-alpine-buildx64` from `1.21rc4-alpine3.18` to
      `1.21.0-alpine3.18`

- Dependencies
  - `golangci/golangci-lint`
    - `v1.53.3` to `v1.54.0`

### Fixed

- (GH-1140) Fix Alpine oldstable and stable img descs, tags

## [v0.13.2] - 2023-08-03

### Changed

- Go versions
  - mirror build images
    - Update `go-ci-mirror-build-go1.19` from `1.19.11` to `1.19.12`
    - Update `go-ci-mirror-build-go1.20` from `1.20.6` to `1.20.7`
  - oldstable images
    - Update `go-ci-oldstable` from `1.19.11` to `1.19.12`
    - Update `go-ci-oldstable-build` from `1.19.11` to `1.19.12`
    - Update `go-ci-oldstable-alpine-buildx86` from `1.19.11-alpine3.18` to
      `1.19.12-alpine3.18`
    - Update `go-ci-oldstable-alpine-buildx64` from `1.19.11-alpine3.18` to
      `1.19.12-alpine3.18`
  - stable images
    - Update `go-ci-stable` from `1.20.6` to `1.20.7`
    - Update `go-ci-stable-build` from `1.20.6` to `1.20.7`
    - Update `go-ci-stable-cgo-mingw-w64-build` from `1.20.6` to `1.20.7`
    - Update `go-ci-stable-alpine-buildx86` from `1.20.6-alpine3.18` to
      `1.20.7-alpine3.18`
    - Update `go-ci-stable-alpine-buildx64` from `1.20.6-alpine3.18` to
      `1.20.7-alpine3.18`
  - unstable images
    - Update `go-ci-unstable` from `1.21rc3` to `1.21rc4`
    - Update `go-ci-unstable-build` from `1.21rc3` to `1.21rc4`
    - Update `go-ci-unstable-alpine-buildx86` from `1.21rc3-alpine3.18` to
      `1.21rc4-alpine3.18`
    - Update `go-ci-unstable-alpine-buildx64` from `1.21rc3-alpine3.18` to
      `1.21rc4-alpine3.18`
- (GH-1114) Increase timeout for monthly workflow

### Fixed

- (GH-1112) `ERROR: unable to select packages` error for `file=5.44-r4` and
  `musl-dev=1.2.4-r0`

## [v0.13.1] - 2023-07-23

### Changed

- (GH-1109) Update timeout for release build workflow

### Fixed

- (GH-1108) Fix token environment variables

## [v0.13.0] - 2023-07-23

### Added

- (GH-756) CI: Setup automatic build & publish workflow for tagged releases

### Changed

- (GH-1103) Switch registry token access from file to env var

### Fixed

- (GH-1102) Fix syntax for v0.12.0 changes
- (GH-1104) Fix GHCR username variable reference

## [v0.12.0] - 2023-07-23

### Added

- (GH-1097) Add initial automated release notes config
- (GH-1098) Add `unstable` Alpine build image variants

## [v0.11.5] - 2023-07-18

### Changed

- Go versions
  - unstable images
    - Update `go-ci-unstable` from `1.21rc2` to `1.21rc3`
    - Update `go-ci-unstable-build` from `1.21rc2` to `1.21rc3`

## [v0.11.4] - 2023-07-14

### Changed

- Dependencies
  - `goreleaser/nfpm`
    - `v2.31.0` to `v2.32.0`
  - `golang.org/x/vuln` (`govulncheck`)
    - `v0.2.0` to `v1.0.0`
  - `pelletier/go-toml`
    - `v2.0.8` to `v2.0.9`

## [v0.11.3] - 2023-07-12

### Changed

- Go versions
  - oldstable images
    - Update `go-ci-oldstable-alpine-buildx86` from `1.19.10-alpine3.18` to
      `1.19.11-alpine3.18`
    - Update `go-ci-oldstable-alpine-buildx64` from `1.19.10-alpine3.18` to
      `1.19.11-alpine3.18`

### Fixed

- (GH-1081) Fix Go series used for Alpine oldstable images
- (GH-1084) Fix CHANGELOG entry for v0.11.2 release

## [v0.11.2] - 2023-07-12

### Changed

- Go versions
  - mirror build images
    - Update `go-ci-mirror-build-go1.19` from `1.19.10` to `1.19.11`
    - Update `go-ci-mirror-build-go1.20` from `1.20.5` to `1.20.6`
  - oldstable images
    - Update `go-ci-oldstable` from `1.19.10` to `1.19.11`
    - Update `go-ci-oldstable-build` from `1.19.10` to `1.19.11`
  - stable images
    - Update `go-ci-stable` from `1.20.5` to `1.20.6`
    - Update `go-ci-stable-build` from `1.20.5` to `1.20.6`
    - Update `go-ci-stable-cgo-mingw-w64-build` from `1.20.5` to `1.20.6`
    - Update `go-ci-stable-alpine-buildx86` from `1.20.5-alpine3.18` to
      `1.20.6-alpine3.18`
    - Update `go-ci-stable-alpine-buildx64` from `1.20.5-alpine3.18` to
      `1.20.6-alpine3.18`
  - unstable images
    - no change since the v0.11.1 release (`1.21rc2`)

- Dependencies
  - `goreleaser/nfpm`
    - `v2.28.0` to `v2.30.1`
  - `golang.org/x/vuln` (`govulncheck`)
    - `v0.1.0` to `v0.2.0`

### Fixed

- (GH-1078) Fix CHANGELOG entries for v0.10.6 and v0.11.0

## [v0.11.1] - 2023-06-26

### Changed

- Go versions
  - unstable images
    - Update `go-ci-unstable` from `1.20.5` to `1.21rc2`
    - Update `go-ci-unstable-build` from `1.20.5` to `1.21rc2`
- (GH-1057) Update Dockerfiles to reflect a chosen base image OS

### Fixed

- (GH-1060) ERROR: unable to select packages: `file-5.44-r4`: breaks:
  `world[file=5.44-r3]`

## [v0.11.0] - 2023-06-15

### Added

  (GH-1044) Add `oldstable` Alpine build image variants

### Changed

- Go versions
  - stable images
    - Update `go-ci-stable-alpine-buildx86` from `1.20.4-alpine3.16` to
      `1.20.5-alpine3.18`
    - Update `go-ci-stable-alpine-buildx64` from `1.20.4-alpine3.16` to
      `1.20.5-alpine3.18`
  - oldstable images
    - Add `go-ci-oldstable-alpine-buildx86` at `1.20.5-alpine3.18`
    - Add `go-ci-oldstable-alpine-buildx64` at `1.20.5-alpine3.18`

- Dependencies
  - `golangci/golangci-lint`
    - `v1.53.2` to `v1.53.3`
- (GH-1045) Update GitHub Actions workflows to allow image build CI jobs to be
  executed on-demand

### Fixed

- (GH-1041) Fix `build` recipe help text
- (GH-1043) Stable build images for Alpine x64 and x86 have outdated Go version
- (GH-1047) Debian-based images fail to build using current pinned dependency
  versions

## [v0.10.6] - 2023-06-07

### Changed

- Go versions
  - mirror build images
    - Update `go-ci-mirror-build-go1.19` from `1.19.9` to `1.19.10`
    - Update `go-ci-mirror-build-go1.20` from `1.20.4` to `1.20.5`
  - oldstable images
    - Update `go-ci-oldstable` from `1.19.9` to `1.19.10`
    - Update `go-ci-oldstable-build` from `1.19.9` to `1.19.10`
  - stable images
    - Update `go-ci-stable` from `1.20.4` to `1.20.5`
    - Update `go-ci-stable-build` from `1.20.4` to `1.20.5`
    - Update `go-ci-stable-cgo-mingw-w64-build` from `1.20.4` to `1.20.5`
  - unstable images
    - Update `go-ci-unstable` from `1.20.4` to `1.20.5`
    - Update `go-ci-unstable-build` from `1.20.4` to `1.20.5`

- Dependencies
  - `golangci/golangci-lint`
    - `v1.52.2` to `v1.53.2`
  - `goreleaser/nfpm`
    - `v2.28.0` to `v2.30.1`
  - `choffmeister/git-describe-semver`
    - `v0.3.9` to `v0.3.11`
  - `pelletier/go-toml`
    - `v2.0.7` to `v2.0.8`

### Fixed

- (GH-1018) ERROR: unable to select packages: `musl-dev-1.2.3-r3`: breaks:
  `world[musl-dev=1.2.3-r2]`
- (GH-1024) New version of depguard linter included in golangci-lint v1.53.0
  and newer fails when run without explicit configuration

## [v0.10.5] - 2023-05-05

### Changed

- Go versions
  - mirror build images
    - Update `go-ci-mirror-build-go1.19` from `1.19.8` to `1.19.9`
    - Update `go-ci-mirror-build-go1.20` from `1.20.3` to `1.20.4`
  - oldstable images
    - Update `go-ci-oldstable` from `1.19.8` to `1.19.9`
    - Update `go-ci-oldstable-build` from `1.19.8` to `1.19.9`
  - stable images
    - Update `go-ci-stable` from `1.20.3` to `1.20.4`
    - Update `go-ci-stable-build` from `1.20.3` to `1.20.4`
    - Update `go-ci-stable-cgo-mingw-w64-build` from `1.20.3` to `1.20.4`
    - Update `go-ci-stable-alpine-buildx86` from `1.20.3-alpine3.16` to
      `1.20.4-alpine3.16`
    - Update `go-ci-stable-alpine-buildx64` from `1.20.3-alpine3.16` to
      `1.20.4-alpine3.16`
  - unstable images
    - Update `go-ci-unstable` from `1.20.3` to `1.20.4`
    - Update `go-ci-unstable-build` from `1.20.3` to `1.20.4`

- Dependencies
  - `goreleaser/nfpm`
    - `v2.27.1` to `v2.28.0`
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20230404205743-41aec7335792` to `v0.1.0`
  - `orijtech/structslop`
    - `v0.0.7` to `v0.0.8`

### Fixed

- (GH-962) structslop linter failing on Go 1.20 with `internal error: package
  "errors" without types was imported from ...`
- (GH-1007) ERROR: unable to select packages: git-2.36.6-r0: breaks:
  world[git=2.36.5-r0]

## [v0.10.4] - 2023-04-05

### Changed

- Go versions
  - mirror build images
    - Update `go-ci-mirror-build-go1.19` from `1.19.7` to `1.19.8`
    - Update `go-ci-mirror-build-go1.20` from `1.20.2` to `1.20.3`
  - oldstable images
    - Update `go-ci-oldstable` from `1.19.7` to `1.19.8`
    - Update `go-ci-oldstable-build` from `1.19.7` to `1.19.8`
  - stable images
    - Update `go-ci-stable` from `1.20.2` to `1.20.3`
    - Update `go-ci-stable-build` from `1.20.2` to `1.20.3`
    - Update `go-ci-stable-cgo-mingw-w64-build` from `1.20.2` to `1.20.3`
    - Update `go-ci-stable-alpine-buildx86` from `1.20.2-alpine3.16` to
      `1.20.3-alpine3.16`
    - Update `go-ci-stable-alpine-buildx64` from `1.20.2-alpine3.16` to
      `1.20.3-alpine3.16`
  - unstable images
    - Update `go-ci-unstable` from `1.20.2` to `1.20.3`
    - Update `go-ci-unstable-build` from `1.20.2` to `1.20.3`

- Dependencies
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20230308034057-d4ed0a4fab9e` to
    - `v0.0.0-20230404205743-41aec7335792`

## [v0.10.3] - 2023-03-27

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.52.1` to `v1.52.2`

## [v0.10.2] - 2023-03-23

### Fixed

- (GH-965) `orijtech/tickeryzer` missing from `unstable` image

## [v0.10.1] - 2023-03-22

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.52.0` to `v1.52.1`
  - `goreleaser/nfpm`
    - `v2.26.0` to `v2.27.1`

## [v0.10.0] - 2023-03-18

### Added

- Enable `golangci-lint` linters
  - `unstable` "combined" image
    - `nilnil`
    - `predeclared`

- New linters
  - `orijtech/tickeryzer` @`v0.0.3`

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.51.2` to `v1.52.0`

### Fixed

- (GH-949) go mod tidy flags `golang.org/x/vuln/vulncheck` as problematic

## [v0.9.2] - 2023-03-16

### Changed

- Dependencies
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.4.2` to `v0.4.3`
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20230308034057-d4ed0a4fab9e` to
    - `v0.0.0-20230313161840-8a73a7e4f203`

## [v0.9.1] - 2023-03-08

### Changed

- Go versions
  - mirror build images
    - Update `go-ci-mirror-build-go1.19` from `1.19.6` to `1.19.7`
    - Update `go-ci-mirror-build-go1.20` from `1.20.1` to `1.20.2`
  - oldstable images
    - Update `go-ci-oldstable` from `1.19.6` to `1.19.7`
    - Update `go-ci-oldstable-build` from `1.19.6` to `1.19.7`
  - stable images
    - Update `go-ci-stable` from `1.20.1` to `1.20.2`
    - Update `go-ci-stable-build` from `1.20.1` to `1.20.2`
    - Update `go-ci-stable-cgo-mingw-w64-build` from `1.20.1` to `1.20.2`
    - Update `go-ci-stable-alpine-buildx86` from `1.20.1-alpine3.16` to
      `1.20.2-alpine3.16`
    - Update `go-ci-stable-alpine-buildx64` from `1.20.1-alpine3.16` to
      `1.20.2-alpine3.16`
  - unstable images
    - Update `go-ci-unstable` from `1.20.1` to `1.20.2`
    - Update `go-ci-unstable-build` from `1.20.1` to `1.20.2`

- Dependencies
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20230217204342-b91abcc5ae3c` to
    - `v0.0.0-20230308034057-d4ed0a4fab9e`
  - `pelletier/go-toml`
    - `v2.0.6` to `v2.0.7`

- Misc
  - (GH-895) Update tracked tools for Dependabot PRs
  - (GH-897) Minor tweaks to Makefile build tasks status output
  - (GH-898) Simplify Dockerfile linting
  - (GH-924) Update tools/go.mod monitoring config

### Fixed

- (GH-932) Dependabot monitoring of multiple build images not working

## [v0.9.0] - 2023-02-23

### Added

- (GH-891) Add `choffmeister/git-describe-semver` to build images

### Changed

- (GH-889) Change versioned tags to support Dependabot updates

## [v0.8.1] - 2023-02-22

### Changed

- (GH-882) Add `xz` to builder images
- (GH-884) Add quoting for installed package version vars

### Fixed

- (GH-881) Fix build-unstable recipe syntax
- (GH-885) Fix paths referenced in `DOCKER_FILES` var
- (GH-886) Add missing ghcr.io image upload steps

## [v0.8.0] - 2023-02-21

### Added

- Tools
  - (GH-818) Add `goreleaser/nfpm` tool to build images
  - (GH-873) Add `tc-hib/go-winres` tool to build images
- Images
  - (GH-865) Rework mirror images
    - add Go 1.14 "legacy" mirror image
    - add Go 1.15 "legacy" mirror image
    - add Go 1.16 "legacy" mirror image
    - add Go 1.17 "legacy" mirror image
    - add Go 1.18 "legacy" mirror image
    - add Go 1.19 mirror image
    - add Go 1.20 mirror image
  - (GH-874) Rework images
    - add `go-ci-stable-build` image
    - add `go-ci-oldstable-build` image
    - add `go-ci-unstable-build` image

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.51.1` to `v1.51.2`
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.4.1` to `v0.4.2`
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20230213165600-1a019b0c7f30` to
    - `v0.0.0-20230217204342-b91abcc5ae3c`
  - `fatih/errwrap`
    - `v1.4.0` to `v1.5.0`

- Images
  - (GH-869) Rebrand, update `go-ci-stable-debian-build` image
    - rename `go-ci-stable-debian-build` image to
      `go-ci-stable-cgo-mingw-w64-build`
  - (GH-874) Rework images
    - update `go-ci-stable-alpine-buildx64` image
      - provide build tools
    - update `go-ci-stable-alpine-buildx86` image
      - provide build tools
    - update `go-ci-stable-cgo-mingw-w64-build` image
      - provide build tools

- Build
  - (GH-868) Update Makefile `clean` recipe to prune BuildKit cache of
    content older than 24 hours
  - (GH-874) Rework images
    - add `prune` recipe to aggressively reclaim disk space on image build
      host

- Workflows
  - (GH-860) Rework workflow scheduling
    - Add `scheduled-weekly.yml` workflow
    - Add `scheduled-monthly.yml` workflow
    - update project-analysis.yml
      - remove schedule
      - remove "on push"
      - apply jobs for PRs against ANY branch
  - (GH-861) Use local job defs for scheduled jobs
    - re-enable make build as a monthly task to build all images
    - remove imports for shared `scheduled-*.yml` workflow files and define
      local jobs to this repo
      - the jobs for this repo are different enough that pulling in a blanket
        "org-wide" set of tasks is unlikely to end well
  - (GH-866) Update CI jobs to build legacy images
  - (GH-870) Process all images when building
    - build legacy mirror images alongside other mirror images (and other
      images in general)

### Removed

- (GH-867) Remove `go-ci-lint-only` image
  - remove `go-ci-lint-only` Dockerfile
  - remove mention of `go-ci-lint-only` from the README
  - remove related Makefile recipe and settings for the `go-ci-lint-only`
    image
  - remove related GitHub Actions Workflow entry

### Fixed

- (GH-864) Remove stray space in image title LABEL

## [v0.7.11] - 2023-02-15

### Changed

- Go versions
  - Update `go-ci-stable` from `1.20.0` to `1.20.1`
  - Update `go-ci-unstable` from `1.20.0` to `1.20.1`
  - Update `go-ci-oldstable` from `1.19.5` to `1.19.6`
  - Update `go-ci-lint-only` from `1.20.0` to `1.20.1`
  - Update `go-ci-stable-mirror-build` from `1.20.0` to `1.20.1`
  - Update `go-ci-stable-debian-build` from `1.20.0` to `1.20.1`
  - Update `go-ci-stable-alpine-buildx86` from `1.20.0-alpine3.16` to
    `1.20.1-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.20.0-alpine3.16` to
    `1.20.1-alpine3.16`

- Dependencies
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.4.0` to `v0.4.1`
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20230209185747-5884084d81cd` to
    - `v0.0.0-20230213165600-1a019b0c7f30`

### Fixed

- (GH-851) Update Go Dockerfile version thresholds
- (GH-848) CI jobs failing after v0.7.10 images were published
  - workaround applied to explicitly set CWD as trusted by Git
- (GH-849) Fix Project Analysis README badge
- (GH-854) ERROR: unable to select packages: git-2.36.5-r0: breaks:
  world[git=2.36.4-r0]

## [v0.7.10] - 2023-02-10

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.51.0` to `v1.51.1`
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20230201222900-4c848edceff1` to
    - `v0.0.0-20230209185747-5884084d81cd`

- (GH-844) Re-enable disabled linters in golangci-lint config files

## [v0.7.9] - 2023-02-03

### Changed

- Go versions
  - Update `go-ci-stable` from `1.19.5` to `1.20`
  - Update `go-ci-unstable` from `1.20rc3` to `1.20`
  - Update `go-ci-oldstable` from `1.18.10` to `1.19.5`
  - Update `go-ci-lint-only` from `1.19.5` to `1.20`
  - Update `go-ci-stable-mirror-build` from `1.19.5` to `1.20`
  - Update `go-ci-stable-debian-build` from `1.19.5` to `1.20`
  - Update `go-ci-stable-alpine-buildx86` from `1.19.5-alpine3.16` to
    `1.20-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.19.5-alpine3.16` to
    `1.20-alpine3.16`

- Dependencies
  - `golangci/golangci-lint`
    - `v1.50.1` to `v1.51.0`
      - stable, oldstable images
    - `dev feat/go1.20 branch` to `v1.51.0`
      - unstable image
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.3.3` to `v0.4.0`
      - stable, oldstable images
    - commit `58c4d7e4b720c21f21f0d68e60a31117995fcd0b` to `v0.4.0`
      - unstable image
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20230110180137-6ad3e3d07815` to
    - `v0.0.0-20230201222900-4c848edceff1`

- (GH-825) Disable `Build all images using Makefile` CI job

### Fixed

- (GH-822) ERROR: unable to select packages: git-2.36.4-r0: breaks:
  world[git=2.36.3-r0]

## [v0.7.8] - 2023-01-13

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.20rc2` to `1.20rc3`

- Dependencies
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20230109202529-975d4c73dae3` to
    - `v0.0.0-20230110180137-6ad3e3d07815`

## [v0.7.7] - 2023-01-12

### Changed

- Dependencies
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.3.3` to `master` branch commit
      `58c4d7e4b720c21f21f0d68e60a31117995fcd0b`
      - `unstable` image

## [v0.7.6] - 2023-01-11

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.20rc1` to `1.20rc2`
  - Update `go-ci-stable` from `1.19.4` to `1.19.5`
  - Update `go-ci-oldstable` from `1.18.9` to `1.18.10`
  - Update `go-ci-lint-only` from `1.19.4` to `1.19.5`
  - Update `go-ci-stable-mirror-build` from `1.19.4` to `1.19.5`
  - Update `go-ci-stable-debian-build` from `1.19.4` to `1.19.5`
  - Update `go-ci-stable-alpine-buildx86` from `1.19.4-alpine3.16` to
    `1.19.5-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.19.4-alpine3.16` to
    `1.19.5-alpine3.16`

- Dependencies
  - `golangci/golangci-lint`
    - `stable`, `oldstable` images remain at `v1.50.1`
    - updated `unstable` image from `v1.50.1` to `feat/go1.20` dev branch
      (github.com/atc0005/golangci-lint@v0.0.0-20230110030621-1af8a004961f)
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20221122171214-05fb7250142c` to
    - `v0.0.0-20230109202529-975d4c73dae3`

## [v0.7.5] - 2022-12-09

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.19.4` to `1.20rc1`

## [v0.7.4] - 2022-12-08

### Changed

- Go versions
  - Update `go-ci-stable` from `1.19.3` to `1.19.4`
  - Update `go-ci-oldstable` from `1.18.8` to `1.18.9`
  - Update `go-ci-lint-only` from `1.19.3` to `1.19.4`
  - Update `go-ci-stable-mirror-build` from `1.19.3` to `1.19.4`
  - Update `go-ci-stable-debian-build` from `1.19.3` to `1.19.4`
  - Update `go-ci-stable-alpine-buildx86` from `1.19.3-alpine3.16` to
    `1.19.4-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.19.3-alpine3.16` to
    `1.19.4-alpine3.16`

- Dependencies
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20221111165027-50a0e29f49cc` to
    - `v0.0.0-20221122171214-05fb7250142c`
  - `pelletier/go-toml`
    - `v2.0.5` to `v2.0.6`

## [v0.7.3] - 2022-11-15

### Changed

- Go versions
  - Update `go-ci-stable` from `1.19.2` to `1.19.3`
  - Update `go-ci-oldstable` from `1.18.7` to `1.18.8`
  - Update `go-ci-lint-only` from `1.19.2` to `1.19.3`
  - Update `go-ci-stable-mirror-build` from `1.19.2` to `1.19.3`
  - Update `go-ci-stable-debian-build` from `1.19.2` to `1.19.3`
  - Update `go-ci-stable-alpine-buildx86` from `1.19.2-alpine3.16` to
    `1.19.3-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.19.2-alpine3.16` to
    `1.19.3-alpine3.16`

- Dependencies
  - `golangci/golangci-lint`
    - `v1.50.0` to `v1.50.1`
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20221006005703-27389ae96df4` to
      `v0.0.0-20221111165027-50a0e29f49cc`

- (GH-758) Update README to include status badge for `Build Images` workflow
- (GH-769) Update git version for Alpine container images
- (GH-770) Update musl-dev package in Alpine images

## [v0.7.2] - 2022-10-07

### Changed

- Go versions
  - Update `go-ci-stable` from `1.19.1` to `1.19.2`
  - Update `go-ci-oldstable` from `1.18.6` to `1.18.7`
  - Update `go-ci-lint-only` from `1.19.1` to `1.19.2`
  - Update `go-ci-stable-mirror-build` from `1.19.1` to `1.19.2`
  - Update `go-ci-stable-debian-build` from `1.19.1` to `1.19.2`
  - Update `go-ci-stable-alpine-buildx86` from `1.19.1-alpine3.16` to
    `1.19.2-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.19.1-alpine3.16` to
    `1.19.2-alpine3.16`

- Dependencies
  - `golangci/golangci-lint`
    - `v1.49.0` to `v1.50.0`
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20220922224308-abdd677224e4` to
      `v0.0.0-20221006005703-27389ae96df4`

- (GH-742) GitHub Actions Workflows refactor
- (GH-752) Adjust timeout value for `Build all images using Makefile` job

## [v0.7.1] - 2022-09-23

### Changed

- Dependencies
  - `orijtech/structslop`
    - `v0.0.6` to `v0.0.7`
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20220908210932-64dbbd7bba4f` to
      `v0.0.0-20220922224308-abdd677224e4`

## [v0.7.0] - 2022-09-12

### Added

- New linters
  - [`golang.org/x/vuln/cmd/govulncheck`](https://go.dev/blog/vuln)
    @`v0.0.0-20220908210932-64dbbd7bba4f`

## [v0.6.26] - 2022-09-07

### Changed

- Go versions
  - Update `go-ci-stable` from `1.19.0` to `1.19.1`
  - Update `go-ci-oldstable` from `1.18.5` to `1.18.6`
  - Update `go-ci-lint-only` from `1.19.0` to `1.19.1`
  - Update `go-ci-stable-mirror-build` from `1.19.0` to `1.19.1`
  - Update `go-ci-stable-debian-build` from `1.19.0` to `1.19.1`
  - Update `go-ci-stable-alpine-buildx86` from `1.19.0-alpine3.16` to
    `1.19.1-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.19.0-alpine3.16` to
    `1.19.1-alpine3.16`
- (GH-466) Setup GitHub Actions workflow(s) to build images for CI purposes
- (GH-720) Swap Docker registry upload order
  (GH-723) Split makefile build recipe into sub recipes, call each from GHAW

## [v0.6.25] - 2022-09-04

### Changed

- Dependencies
  - `pelletier/go-toml`
    - `v2.0.4` to `v2.0.5`

### Fixed

- (GH-716) Explicitly setting Go version for golangci-lint causes issues with
  projects using deprecated Go versions

## [v0.6.24] - 2022-08-26

### Changed

- Dependencies
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.3.2` to `v0.3.3`
      - `oldstable` image
  - `pelletier/go-toml`
    - `v2.0.3` to `v2.0.4`

### Fixed

- (GH-711) Outdated `staticcheck` version (v0.2.2) fails to run in `oldstable`
  image

## [v0.6.23] - 2022-08-25

### Changed

- Go versions
  - Update `go-ci-stable` from `1.18.5` to `1.19.0`
  - Update `go-ci-oldstable` from `1.17.13` to `1.18.5`
  - Update `go-ci-lint-only` from `1.18.5` to `1.19.0`
  - Update `go-ci-stable-mirror-build` from `1.18.5` to `1.19.0`
  - Update `go-ci-stable-debian-build` from `1.18.5` to `1.19.0`
  - Update `go-ci-stable-alpine-buildx86` from `1.18.5-alpine3.16` to
    `1.19.0-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.18.5-alpine3.16` to
    `1.19.0-alpine3.16`

- Dependencies
  - `golangci/golangci-lint`
    - `v1.47.3` to `v1.49.0`
  - `pelletier/go-toml`
    - `v2.0.2` to `v2.0.3`

## [v0.6.22] - 2022-08-15

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.48.0` to `v1.47.3`

## [v0.6.21] - 2022-08-09

### Changed

- Go versions
  - Update `go-ci-stable` from `1.18.4` to `1.18.5`
  - Update `go-ci-unstable` from `1.19rc2` to `1.19.0`
  - Update `go-ci-oldstable` from `1.17.12` to `1.17.13`
  - Update `go-ci-lint-only` from `1.18.4` to `1.18.5`
  - Update `go-ci-stable-mirror-build` from `1.18.4` to `1.18.5`
  - Update `go-ci-stable-debian-build` from `1.18.4` to `1.18.5`
  - Update `go-ci-stable-alpine-buildx86` from `1.18.4-alpine3.16` to
    `1.18.5-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.18.4-alpine3.16` to
    `1.18.5-alpine3.16`

- Dependencies
  - `golangci/golangci-lint`
    - `v1.47.2` to `v1.48.0`
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.3.2` to `v0.3.3`

### Fixed

- (GH-696) README: Update pelletier/go-toml to v2.0.2

## [v0.6.20] - 2022-07-22

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.47.1` to `v1.47.2`

## [v0.6.19] - 2022-07-20

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.47.0` to `v1.47.1`

- Linters
  - (GH-681) Refresh list of disabled linters (due to Go 1.18+
    incompatibilities) for golangci-lint v1.47.1 release

## [v0.6.18] - 2022-07-19

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.46.2` to `v1.47.0`

- Linters
  - (GH-676) Refresh list of disabled linters (due to Go 1.18+
    incompatibilities) for golangci-lint v1.47.0 release

## [v0.6.17] - 2022-07-13

### Changed

- Go versions
  - Update `go-ci-stable` from `1.18.3` to `1.18.4`
  - Update `go-ci-unstable` from `1.19rc1` to `1.19rc2`
  - Update `go-ci-oldstable` from `1.17.11` to `1.17.12`
  - Update `go-ci-lint-only` from `1.18.3` to `1.18.4`
  - Update `go-ci-stable-mirror-build` from `1.18.3` to `1.18.4`
  - Update `go-ci-stable-debian-build` from `1.18.3` to `1.18.4`
  - Update `go-ci-stable-alpine-buildx86` from `1.18.3-alpine3.16` to
    `1.18.4-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.18.3-alpine3.16` to
    `1.18.4-alpine3.16`

## [v0.6.16] - 2022-07-11

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.19beta1` to `1.19rc1`

## [v0.6.15] - 2022-06-20

### Fixed

- (GH-665) Add missing "from" to CHANGELOG entry
- (GH-666) `stable` containers unintentionally enable *all* `govet` analyzers

## [v0.6.14] - 2022-06-20

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.11` to `1.18.3`
  - Update `go-ci-unstable` from `1.18.3` to `1.19beta1`
  - Update `go-ci-oldstable` from `1.16.15` to `1.17.11`
  - Update `go-ci-lint-only` from `1.17.11` to `1.18.3`
  - Update `go-ci-stable-mirror-build` from `1.17.11` to `1.18.3`
  - Update `go-ci-stable-debian-build` from `1.17.11` to `1.18.3`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.11-alpine3.16` to
    `1.18.3-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.11-alpine3.16` to
    `1.18.3-alpine3.16`

- Linters
  - (GH-658) Refresh list of disabled linters due to Go 1.18+
    incompatibilities

- Dependencies
  - `pelletier/go-toml`
    - `v2.0.1` to `v2.0.2`

## [v0.6.13] - 2022-06-02

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.10` to `1.17.11`
  - Update `go-ci-unstable` from `1.18.2` to `1.18.3`
  - NOTE: No changes to `go-ci-oldstable`
    - still using `1.16.15` until atc0005/go-ci#557 is resolved
  - Update `go-ci-lint-only` from `1.17.10` to `1.17.11`
    - continue to use `golang:1.17` series in place of
      `golangci/golangci-lint:vX.Y.Z-alpine` series until atc0005/go-ci#557
      is resolved
  - Update `go-ci-stable-mirror-build` from `1.17.10` to `1.17.11`
  - Update `go-ci-stable-debian-build` from `1.17.10` to `1.17.11`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.10-alpine3.14` to
    `1.17.11-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.10-alpine3.14` to
    `1.17.11-alpine3.16`

## [v0.6.12] - 2022-05-18

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.46.1` to `v1.46.2`
    - binary installed within `oldstable`, `stable` and `unstable` images
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.3.1` to `v0.3.2`
      - `oldstable` image (based on Go `1.16` base image) remains at `v0.2.2`
        due to incompatibility with `v0.3.0` and newer

## [v0.6.11] - 2022-05-13

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.46.0` to `v1.46.1`
    - binary installed within `oldstable`, `stable` and `unstable` images

## [v0.6.10] - 2022-05-11

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.9` to `1.17.10`
  - Update `go-ci-unstable` from `1.18.1` to `1.18.2`
  - NOTE: No changes to `go-ci-oldstable`
    - still using `1.16.15` until atc0005/go-ci#557 is resolved
  - Update `go-ci-lint-only` from `1.17.9` to `1.17.10`
    - continue to use `golang:1.17` series in place of
      `golangci/golangci-lint:vX.Y.Z-alpine` series until atc0005/go-ci#557
      is resolved
  - Update `go-ci-stable-mirror-build` from `1.17.9` to `1.17.10`
  - Update `go-ci-stable-debian-build` from `1.17.9` to `1.17.10`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.9-alpine3.14` to
    `1.17.10-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.9-alpine3.14` to
    `1.17.10-alpine3.14`

- Dependencies
  - `pelletier/go-toml`
    - `v2.0.0` to `v2.0.1`

## [v0.6.9] - 2022-05-10

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.45.2` to `v1.46.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
  - `pelletier/go-toml`
    - `v1.9.5` to `v2.0.0`

- (GH-622) Enable staticcheck linter in `unstable` Go 1.18 image

## [v0.6.8] - 2022-04-25

### Changed

- Dependencies
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.3.0` to `v0.3.1`
      - `oldstable` image (based on Go `1.16` base image) remains at `v0.2.2`
        due to incompatibility with `v0.3.0` and newer
  - `pelletier/go-toml`
    - `v1.9.4` to `v1.9.5`

### Fixed

- (GH-609) Dependabot ignores version constraint for i386 Docker image

## [v0.6.7] - 2022-04-13

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.8` to `1.17.9`
  - Update `go-ci-unstable` from `1.18.0` to `1.18.1`
  - NOTE: No changes to `go-ci-oldstable`
    - still using `1.16.15` until atc0005/go-ci#557 is resolved
  - Update `go-ci-lint-only` from `1.17.8` to `1.17.9`
    - continue to use `golang:1.17` series in place of
      `golangci/golangci-lint:vX.Y.Z-alpine` series until atc0005/go-ci#557
      is resolved
  - Update `go-ci-stable-mirror-build` from `1.17.8` to `1.17.9`
  - Update `go-ci-stable-debian-build` from `1.17.8` to `1.17.9`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.8-alpine3.14` to
    `1.17.9-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.8-alpine3.14` to
    `1.17.9-alpine3.14`

### Fixed

- (GH-603) ERROR: unable to select packages: `git-2.32.1-r0`: breaks:
  `world[git=2.32.0-r0]`
- (GH-605) Dependabot incorrectly updated `i386/golang` from
  `1.17.8-alpine3.14` to `1.18.1-alpine3.14` in `/stable/build/alpine-x86`

## [v0.6.6] - 2022-03-30

### Changed

- Dependencies
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.2.2` to `v0.3.0`
      - `oldstable` image (based on Go `1.16` base image) remains at `v0.2.2`
        due to incompatibility with `v0.3.0` and newer

- (GH-590) Add debugging output for tooling installation

### Fixed

- (GH-583) Conflicting golangci-lint config file settings for `unstable` image
- (GH-588) Makefile `build` recipe for `oldstable` image fails to build with
  `pkg/mod/honnef.co/go/tools@v0.3.0/go/ir/builder.go:36:2: //go:build comment
  without // +build comment`
- (GH-593) Fix broken chained RUN directive

## [v0.6.5] - 2022-03-25

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.45.0` to `v1.45.2`
    - binary installed within `oldstable`, `stable` and `unstable` images

### Fixed

- (GH-572) Update description of `unstable` image
- (GH-574) Conflicting golangci-lint config file settings for `unstable` image
- (GH-575) Disable go-critic analyzers incompatible with Go 1.18
- (GH-581) ERROR: unable to select packages: bash-5.1.16-r0: breaks:
  world[bash=5.1.4-r0]

## [v0.6.4] - 2022-03-21

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.18rc1` to `1.18.0`
  - Update `go-ci-lint-only` from `1.17.7` to `1.17.8`
    - temporarily switch from `golangci/golangci-lint:v1.45.0-alpine` to
      `golang:1.17` series

- Dependencies
  - `golangci/golangci-lint`
    - `v1.44.2` to `v1.45.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image
      - upstream `golang:1.17` series is used until golangci-lint fully
        supports Go 1.18
    - Docker image used as a builder/base for `unstable` image
      - builder/base workflow currently used to work around golangci-lint
        incompatibilities with Go 1.18

## [v0.6.3] - 2022-03-07

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.7` to `1.17.8`
  - Update `go-ci-oldstable` from `1.16.14` to `1.16.15`
  - Update `go-ci-lint-only` from `1.17.7` to `1.17.8`
  - Update `go-ci-stable-mirror-build` from `1.17.7` to `1.17.8`
  - Update `go-ci-stable-debian-build` from `1.17.7` to `1.17.8`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.7-alpine3.14` to
    `1.17.8-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.7-alpine3.14` to
    `1.17.8-alpine3.14`

- Dependencies
  - `actions/checkout`
    - `v2.5.1` to `v3`
  - `actions/setup-node`
    - `v2.5.1` to `v3`
  - `fatih/errwrap`
    - `v1.3.1` to `v1.4.0`

## [v0.6.2] - 2022-02-18

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.44.0` to `v1.44.2`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image
    - Docker image used as a builder/base for `unstable` image
      - this is used until golangci-lint officially supports Go 1.18

- Go versions
  - Update `go-ci-unstable` from `1.18beta2` to `1.18rc1`

### Fixed

- (GH-528) ERROR: unable to select packages: `util-linux-2.37.4-r0`: breaks:
  `world[util-linux=2.37.3-r0]`
- CHANGELOG
  - `v0.6.1` `unstable` image listed as updated (it wasn't)

## [v0.6.1] - 2022-02-11

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.6` to `1.17.7`
  - Update `go-ci-oldstable` from `1.16.13` to `1.16.14`
  - Update `go-ci-lint-only` from `1.17.6` to `1.17.7`
  - Update `go-ci-stable-mirror-build` from `1.17.6` to `1.17.7`
  - Update `go-ci-stable-debian-build` from `1.17.6` to `1.17.7`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.6-alpine3.14` to
    `1.17.7-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.6-alpine3.14` to
    `1.17.7-alpine3.14`

### Fixed

- (GH-518) ERROR: unable to select packages: `util-linux-2.37.3-r0`: breaks:
  `world[util-linux=2.37.2-r0]`
- (GH-520) Inconsistency in image name/title for "upstream mirror" image

## [v0.6.0] - 2022-02-03

### Added

- (GH-509) Mirror current `latest` version of official `golang` image from
  Docker Hub

### Fixed

- (GH-508) Dockerfiles, README, Makefile incorrectly refer to images as
  "containers"

## [v0.5.0] - 2022-02-03

### Added

- (GH-4) Support uploading to both Docker Hub and GitHub Container Registry
- (GH-498) Connect GitHub repo to container images using Dockerfile `LABEL`
- (GH-501) Add additional "Pre-Defined annotation Keys" to Dockerfiles

### Changed

- (GH-503) Expand `clean` Makefile recipe

### Fixed

- (GH-497) Tweak doc comments for linter config files for `unstable` image

## [v0.4.1] - 2022-02-01

### Changed

- Disable `golangci-lint` linters, analyzers
  - (GH-494) oldstable, stable images
    - `gocyclo`
    - `gocognit`
    - `goerr113`

- Go versions
  - Update `go-ci-unstable` from `1.18beta1` to `1.18beta2`
    - NOTE: There are known issues with pre-releases of Go 1.18 and
      `golangci-lint`. See
      <https://github.com/golangci/golangci-lint/pull/2438> for additional
      details.

## [v0.4.0] - 2022-01-27

### Added

- Enable `golangci-lint` linters, analyzers
  - stable image
    - `gocyclo`
    - `gocognit`
    - `goerr113`
    - `revive`
  - unstable image
    - `gochecknoglobals`
    - `govet`
      - explicitly disable `fieldalignment` analyzer
      - enable all other `govet` analyzers
    - `revive`
- Remove `golangci-lint` linter
  - `golint`

### Fixed

- Add missing section header for v0.3.43 release

## [v0.3.43] - 2022-01-26

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.43.0` to `v1.44.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

## [v0.3.42] - 2022-01-07

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.5` to `1.17.6`
  - Update `go-ci-unstable` from `1.17.5` to `1.17.6`
  - Update `go-ci-oldstable` from `1.16.12` to `1.16.13`
  - Update `go-ci-stable-debian-build` from `1.17.5` to `1.17.6`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.5-alpine3.14` to
    `1.17.6-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.5-alpine3.14` to
    `1.17.6-alpine3.14`

## [v0.3.41] - 2022-01-04

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.17.5` to `1.18beta1`
    - NOTE: There are known issues with Go 1.18beta1 and `golangci-lint`. See
      <https://github.com/golangci/golangci-lint/pull/2438> for additional
      details.

- README
  - note that the `unstable` container uses the latest available `beta` or
    `rc` base image before falling back to mirroring the same base image as
    the `stable` release

## [v0.3.40] - 2021-12-10

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.4` to `1.17.5`
  - Update `go-ci-unstable` from `1.17.4` to `1.17.5`
  - Update `go-ci-oldstable` from `1.16.11` to `1.16.12`
  - Update `go-ci-stable-debian-build` from `1.17.4` to `1.17.5`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.4-alpine3.14` to
    `1.17.5-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.4-alpine3.14` to
    `1.17.5-alpine3.14`

## [v0.3.39] - 2021-12-06

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.3` to `1.17.4`
  - Update `go-ci-unstable` from `1.17.3` to `1.17.4`
  - Update `go-ci-oldstable` from `1.16.10` to `1.16.11`
  - Update `go-ci-stable-debian-build` from `1.17.3` to `1.17.4`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.3-alpine3.14` to
    `1.17.4-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.3-alpine3.14` to
    `1.17.4-alpine3.14`

## [v0.3.38] - 2021-11-12

### Changed

- Dependencies
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.2.1` to `v0.2.2`
  - `hadolint/hadolint`
    - `latest-debian` to `v2.8.0-debian`

## [v0.3.37] - 2021-11-09

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.2` to `1.17.3`
  - Update `go-ci-unstable` from `1.17.2` to `1.17.3`
  - Update `go-ci-oldstable` from `1.16.9` to `1.16.10`
  - Update `go-ci-stable-debian-build` from `1.17.2` to `1.17.3`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.2-alpine3.14` to
    `1.17.3-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.2-alpine3.14` to
    `1.17.3-alpine3.14`

### Fixed

- (GH-442) ERROR: unable to select packages: util-linux-2.37.2-r0: breaks:
  world[util-linux=2.37-r0]

## [v0.3.36] - 2021-11-04

- Dependencies
  - `golangci/golangci-lint`
    - `v1.42.1` to `v1.43.0`
    - binary installed within `oldstable`, `stable` and `unstable` images

## [v0.3.35] - 2021-11-04

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.42.1` to `v1.43.0`
    - Docker image used as a builder/base for `lint-only` image
  - `actions/checkout`
    - `v2.3.4` to `v2.4.0`

## [v0.3.34] - 2021-10-08

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.1` to `1.17.2`
  - Update `go-ci-unstable` from `1.17.1` to `1.17.2`
  - Update `go-ci-oldstable` from `1.16.8` to `1.16.9`
  - Update `go-ci-stable-debian-build` from `1.17.1` to `1.17.2`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.1-alpine3.14` to
    `1.17.2-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.1-alpine3.14` to
    `1.17.2-alpine3.14`

- Dependencies
  - `actions/setup-node`
    - `v2.4.0` to `v2.4.1`

## [v0.3.33] - 2021-09-10

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.0` to `1.17.1`
  - Update `go-ci-unstable` from `1.17.0` to `1.17.1`
  - Update `go-ci-oldstable` from `1.16.7` to `1.16.8`
  - Update `go-ci-stable-debian-build` from `1.17.0` to `1.17.1`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.0-alpine3.14` to
    `1.17.1-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.0-alpine3.14` to
    `1.17.1-alpine3.14`

### Fixed

- CHANGELOG
  - Formatting
    - Add missing space between text and formatted version string in multiple
      prior sections

## [v0.3.32] - 2021-09-07

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.42.0` to `v1.42.1`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image
  - `pelletier/go-toml`
    - `v1.9.3` to `v1.9.4`

## [v0.3.31] - 2021-08-19

### Changed

- Go versions
  - Update `go-ci-stable` from `1.16.7` to `1.17.0`
  - Update `go-ci-unstable` from `1.17.rc2` to `1.17.0`
  - Update `go-ci-oldstable` from `1.15.15` to `1.16.7`
  - Update `go-ci-stable-debian-build` from `1.16.7` to `1.17.0`
  - Update `go-ci-stable-alpine-buildx86` from `1.16.7-alpine3.14` to
    `1.17.0-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.16.7-alpine3.14` to
    `1.17.0-alpine3.14`

- Dependencies
  - `golangci/golangci-lint`
    - `v1.41.1` to `v1.42.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.2.0` to `v0.2.1`

- Remove `GO111MODULE` env var usage

- Replace `oldstable` image `go get` calls used for installation with `go
  install`

- Update dependabot monitoring for `oldstable` version to reflect promotion
  of `oldstable` to Go 1.16

- Add back `errwrap` to `oldstable` image

- Update Debian-based images to reference current dependency versions for
  `Bullseye` release

## [v0.3.30] - 2021-08-06

### Changed

- Go versions
  - Update `go-ci-stable` from `1.16.6` to `1.16.7`
  - Update `go-ci-oldstable` from `1.15.14` to `1.15.15`
  - Update `go-ci-stable-debian-build` from `1.16.6` to `1.16.7`
  - Update `go-ci-stable-alpine-buildx86` from `1.16.6-alpine3.14` to
    `1.16.7-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.16.6-alpine3.14` to
    `1.16.7-alpine3.14`

- Dependencies
  - `actions/setup-node`
    - `v2.3.2` to `v2.4.0`

## [v0.3.29] - 2021-08-05

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.17rc1` to `1.17rc2`

- Dependencies
  - `actions/setup-node`
    - `v2.2.0` to `v2.3.2`
    - update `node-version` value to always use latest LTS version instead of
      hard-coded version

### Fixed

- remove incorrect `go-ci-unstable` entry from `Changed` list for `v0.3.28`
  release

## [v0.3.28] - 2021-07-14

### Changed

- Go versions
  - Update `go-ci-stable` from `1.16.5` to `1.16.6`
  - Update `go-ci-unstable` from `1.17beta1` to `1.17rc1`
  - Update `go-ci-oldstable` from `1.15.13` to `1.15.14`
  - Update `go-ci-stable-debian-build` from `1.16.5` to `1.16.6`
  - Update `go-ci-stable-alpine-buildx86` from `1.16.5-alpine3.12` to
    `1.16.6-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.16.5-alpine3.12` to
    `1.16.6-alpine3.14`

- Dependencies
  - `actions/setup-node`
    - `v2.1.5` to `v2.2.0`

### Fixed

- README
  - Update `golangci/golangci-lint` linters table entry to reflect `v1.41.1`
    release included in `v0.3.27` images

## [v0.3.27] - 2021-06-23

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.41.0` to `v1.41.1`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

## [v0.3.26] - 2021-06-17

### Added

- `linting` Makefile recipe
  - uses `hadolint/hadolint` to run linting checks against project Dockerfiles

### Changed

- Dependencies
  - `pelletier/go-toml`
    - `v1.9.2` to `v1.9.3`
  - `golangci/golangci-lint`
    - `v1.40.1` to `v1.41.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

### Fixed

- Incorrect target names (typos)
- hadolint linting errors | `DL3059 info: Multiple consecutive RUN
  instructions. Consider consolidation`

## [v0.3.25] - 2021-06-11

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.16.5` to `1.17beta1`

### Fixed

- go get: installing executables with 'go get' in module mode is deprecated
- CHANGELOG entries missing for recent `go-ci-unstable` Go version updates

## [v0.3.24] - 2021-06-10

### Changed

- Go versions
  - Update `go-ci-stable` from `1.16.4` to `1.16.5`
  - Update `go-ci-unstable` from `1.16.4` to `1.16.5`
  - Update `go-ci-oldstable` from `1.15.12` to `1.15.13`
  - Update `go-ci-stable-debian-build` from `1.16.4` to `1.16.5`
  - Update `go-ci-stable-alpine-buildx86` from `1.16.4-alpine3.12` to
    `1.16.5-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.16.4-alpine3.12` to
    `1.16.5-alpine3.12`

- Dependencies
  - `pelletier/go-toml`
    - `v1.9.1` to `v1.9.2`

## [v0.3.23] - 2021-06-02

### Changed

- Dependencies
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.1.4` to `v0.2.0`

## [v0.3.22] - 2021-05-19

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.40.0` to `v1.40.1`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

## [v0.3.21] - 2021-05-13

### Changed

- Go versions
  - Update `go-ci-stable` from `1.16.3` to `1.16.4`
  - Update `go-ci-unstable` from `1.16.3` to `1.16.4`
  - Update `go-ci-oldstable` from `1.15.11` to `1.15.12`
  - Update `go-ci-stable-debian-build` from `1.16.3` to `1.16.4`
  - Update `go-ci-stable-alpine-buildx86` from `1.16.3-alpine3.12` to
    `1.16.4-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.16.3-alpine3.12` to
    `1.16.4-alpine3.12`

- Dependencies
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.1.3` to `v0.1.4`
  - `golangci/golangci-lint`
    - `v1.39.0` to `v1.40.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image
  - `pelletier/go-toml`
    - `v1.9.0` to `v1.9.1`

### Fixed

- Explicitly use public Docker Hub repo link

## [v0.3.20] - 2021-04-15

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - re-enable deprecated `maligned` linter, disable `govet: fieldalignment`
  - `pelletier/go-toml`
    - `v1.8.1` to `v1.9.0`

## [v0.3.19] - 2021-04-02

### Changed

- Go versions
  - Update `go-ci-stable` from `1.16.2` to `1.16.3`
  - Update `go-ci-unstable` from `1.16.2` to `1.16.3`
  - Update `go-ci-oldstable` from `1.15.10` to `1.15.11`
  - Update `go-ci-stable-debian-build` from `1.16.2` to `1.16.3`
  - Update `go-ci-stable-alpine-buildx86` from `1.16.2-alpine3.12` to
    `1.16.3-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.16.2-alpine3.12` to
    `1.16.3-alpine3.12`

- Dependencies
  - `golangci/golangci-lint`
    - replace deprecated `maligned` linter with `govet: fieldalignment`
    - replace deprecated `scopelint` linter with `exportloopref`

NOTE: The `go-ci-lint-only` image is *not* updated in this release. We're
waiting on a new upstream release.

## [v0.3.18] - 2021-03-26

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.38.0` to `v1.39.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image
  - `fatih/errwrap`
    - `v1.2.0` to `v1.3.1`
      - for images other than `oldstable` (see Removed section)

### Removed

- Dependencies
  - `fatih/errwrap`
    - removed from the `oldstable` image since it now requires Go 1.16
    - the plan is to restore this once Go 1.17 is released and Go 1.16 becomes
      the `oldstable` version

## [v0.3.17] - 2021-03-12

### Changed

- Update `git` pkg from `2.26.2-r0` to `2.26.3-r0`

### Fixed

- Alpine build containers
  - image build failure for v0.3.16 release

## [v0.3.16] - 2021-03-12

### Changed

- Go versions
  - Update `go-ci-stable` from `1.16.0` to `1.16.2`
  - Update `go-ci-unstable` from `1.16.0` to `1.16.2`
  - Update `go-ci-oldstable` from `1.15.8` to `1.15.10`
  - Update `go-ci-stable-debian-build` from `1.16.0` to `1.16.2`
  - Update `go-ci-stable-alpine-buildx86` from `1.16.0-alpine3.12` to
    `1.16.2-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.16.0-alpine3.12` to
    `1.16.2-alpine3.12`

- Dependencies
  - `go.mod`
    - Update Go version from `1.14` to `1.15`
  - `honnef.co/go/tools`
    - `v0.1.2` to `v0.1.3`

NOTE: The `go-ci-lint-only` image is *not* updated in this release. We're
waiting on a new upstream release.

## [v0.3.15] - 2021-03-04

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.37.1` to `v1.38.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

## [v0.3.14] - 2021-02-25

### Changed

- Go versions
  - Update `go-ci-stable-alpine-buildx86` from `1.15.8-alpine3.12` to
    `1.16.0-alpine3.12` (GH-248)

- Dependencies
  - `actions/setup-node`
    - `v2.1.4` to `v2.1.5`

### Fixed

- Update CHANGELOG entry for v0.3.12 to reflect that the
  `go-ci-stable-alpine-buildx86` image was *not* updated as intended

## [v0.3.13] - 2021-02-21

### Changed

- Dependencies
  - `honnef.co/go/tools`
    - `v0.1.1` to `v0.1.2`
  - `golangci/golangci-lint`
    - `v1.37.0` to `v1.37.1`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

## [v0.3.12] - 2021-02-17

### Changed

- Go versions
  - Update `go-ci-stable` from `1.15.8` to `1.16.0`
  - Update `go-ci-unstable` from `1.16rc1` to `1.16.0`
  - Update `go-ci-oldstable` from `1.14.15` to `1.15.8`
  - Update `go-ci-stable-debian-build` from `1.15.8` to `1.16.0`
  - Update `go-ci-stable-alpine-buildx64` from `1.15.8-alpine3.12` to
    `1.16.0-alpine3.12`
- Dependencies
  - `golangci/golangci-lint`
    - `v1.36.0` to `v1.37.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

**NOTE**: `go-ci-stable-alpine-buildx86` was not updated as intended.

## [v0.3.11] - 2021-02-05

### Changed

- Go versions
  - Update `go-ci-stable` from `1.15.7` to `1.15.8`
  - Update `go-ci-oldstable` from `1.14.14` to `1.14.15`
  - Update `go-ci-stable-debian-build` from `1.15.7` to `1.15.8`
  - Update `go-ci-stable-alpine-buildx86` from `1.15.7-alpine3.12` to
    `1.15.8-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.15.7-alpine3.12` to
    `1.15.8-alpine3.12`

NOTE: The `go-ci-lint-only` image is *not* updated in this release. We're
waiting on a new upstream release.

### Fixed

- update version listed in `v0.3.7` release

## [v0.3.10] - 2021-01-29

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.16beta1` to `1.16rc1`

### Fixed

- CHANGELOG entry for `v0.3.7` which incorrectly inferred a change from
  `1.16beta1` to then current `1.15.7` Go version

## [v0.3.9] - 2021-01-27

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.35.2` to `v1.36.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

## [v0.3.8] - 2021-01-21

### Changed

- Dependencies
  - `honnef.co/go/tools`
    - `v0.1.0` to `v0.1.1`

### Fixed

- Update Docker container build process to explicitly pull latest upstream
  when building new images

## [v0.3.7] - 2021-01-20

### Changed

- Move grouped Dockerfiles into separate subdirectories
  - workaround a bug in Dependabot which replaces separate Docker images with
    the same image (dependabot/dependabot-core#2179)

- Go versions
  - Update `go-ci-stable` from `1.15.6` to `1.15.7`
  - Update `go-ci-oldstable` from `1.14.13` to `1.14.14`
  - Update `go-ci-stable-debian-build` from `1.15.6` to `1.15.7`
  - Update `go-ci-stable-alpine-buildx86` from `1.15.6-alpine3.12` to
    `1.15.7-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.15.6-alpine3.12` to
    `1.15.7-alpine3.12`

NOTE: The `go-ci-lint-only` image is *not* updated in this release. We're
waiting on a new upstream release.

### Fixed

- Year in previous CHANGELOG version entries incorrect
- golangci-lint version in linters table outdated

## [v0.3.6] - 2021-01-11

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.35.0` to `v1.35.2`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

## [v0.3.5] - 2021-01-08

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.34.1` to `v1.35.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

## [v0.3.4] - 2020-12-29

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.33.0` to `v1.34.1`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

### Fixed

- Update CHANGELOG versions list to include last release

## [v0.3.3] - 2020-12-19

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.15.6` to `1.16beta1`

- Dependencies
  - `orijtech/structslop`
    - `v0.0.5` to `v0.0.6`
  - `actions/setup-node`
    - `v2.1.3` to `v2.1.4`

## [v0.3.2] - 2020-12-15

### Changed

- README
  - Update `staticcheck` linters table entry to reflect `2020.02` (`v0.1.0`)

- Dependencies
  - `go.mod`
    - Update Go version from `1.13` to `1.14`
  - `honnef.co/go/tools`
    - `v0.0.1-2020.1.6` to `v0.1.0`

## [v0.3.1] - 2020-12-04

### Changed

- README
  - Replace linters list with version table to act as a quick reference

- Go versions
  - Update `go-ci-stable` from `1.15.5` to `1.15.6`
  - Update `go-ci-oldstable` from `1.14.12` to `1.14.13`
  - Update `go-ci-unstable` from `1.15.5` to `1.15.6`
    - the plan is to swap out to the next unstable Go version when it becomes
      available
  - Update `go-ci-stable-debian-build` from `1.15.5` to `1.15.6`
  - Update `go-ci-stable-alpine-buildx86` from `1.15.5-alpine3.12` to
    `1.15.6-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.15.5-alpine3.12` to
    `1.15.6-alpine3.12`

NOTE: The `go-ci-lint-only` image is *not* updated in this release. We're
waiting on a new upstream release.

### Fixed

- Replace `orijtech/httperroryzer` pseudo-version with equivalent tag

- Dependabot: Invalid ignore condition (version range) specified for
  "oldstable" image

## [v0.3.0] - 2020-11-29

### Added

- New linters
  - `pelletier/go-toml/cmd/tomll` @`v1.8.1`
  - `orijtech/structslop` @`v0.0.5`
  - `orijtech/httperroryzer` @`9d75de8cdf66f34670c84aeef3c2b698b001fd44`
  - `fatih/errwrap` @`v1.2.0`

### Fixed

- README
  - update container image descriptions to better emphasize purpose
- gitignore
  - exclude Visual Studio Code workspace settings (`.vscode`)
  - exclude `scratch` directory

## [v0.2.16] - 2020-11-23

### Changed

- Update musl-dev pkg from 1.1.24-r9 to 1.1.24-r10

### Fixed

- Alpine build containers image build failure for v0.2.15 release

## [v0.2.15] - 2020-11-23

### Changed

- Update golangci/golangci-lint from `v1.32.2` to `v1.33.0`
  - binary installed within `oldstable`, `stable` and `unstable` images
  - Docker image used as a builder/base for `lint-only` image

## [v0.2.14] - 2020-11-13

### Changed

- Go versions
  - Update `go-ci-stable` from `1.15.4` to `1.15.5`
  - Update `go-ci-oldstable` from `1.14.11` to `1.14.12`
  - Update `go-ci-unstable` from `1.15.4` to `1.15.5`
    - the plan is to swap out to the next unstable Go version when it becomes
      available
  - Update `go-ci-stable-debian-build` from `1.15.4` to `1.15.5`
  - Update `go-ci-stable-alpine-buildx86` from `1.15.4-alpine3.12` to
    `1.15.5-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.15.4-alpine3.12` to
    `1.15.5-alpine3.12`

NOTE: The `go-ci-lint-only` image is *not* updated in this release. We're
waiting on a new upstream release.

## [v0.2.13] - 2020-11-08

### Changed

- Go versions
  - Update `go-ci-stable` from `1.15.3` to `1.15.4`
  - Update `go-ci-oldstable` from `1.14.10` to `1.14.11`
  - Update `go-ci-unstable` from `1.15.3` to `1.15.4`
    - the plan is to swap out to the next unstable Go version when it becomes
      available
  - Update `go-ci-stable-debian-build` from `1.15.3` to `1.15.4`
  - Update `go-ci-stable-alpine-buildx86` from `1.15.3-alpine3.12` to
    `1.15.4-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.15.3-alpine3.12` to
    `1.15.4-alpine3.12`

- Dependencies
  - `actions/checkout`
    - `v2.3.3` to `v2.3.4`

NOTE: The `go-ci-lint-only` image is *not* updated in this release. We're
waiting on a new upstream release.

## [v0.2.12] - 2020-11-03

### Changed

- Update golangci/golangci-lint from `v1.32.0` to `v1.32.2`
  - binary installed within `oldstable`, `stable` and `unstable` images
  - Docker image used as a builder/base for `lint-only` image

## [v0.2.11] - 2020-10-25

### Changed

- Update golangci/golangci-lint from `v1.31.0` to `v1.32.0`
  - binary installed within `oldstable`, `stable` and `unstable` images
  - Docker image used as a builder/base for `lint-only` image

## [v0.2.10] - 2020-10-17

### Changed

- Go versions
  - Update `go-ci-stable` from `1.15.2` to `1.15.3`
  - Update `go-ci-oldstable` from `1.14.9` to `1.14.10`
  - Update `go-ci-unstable` from `1.15.2` to `1.15.3`
    - the plan is to swap out to the next unstable Go version when it becomes
      available
  - Update `go-ci-stable-debian-build` from `1.15.2` to `1.15.3`
  - Update `go-ci-stable-alpine-buildx86` from `1.15.2-alpine3.12` to
    `1.15.3-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.15.2-alpine3.12` to
    `1.15.3-alpine3.12`

NOTE: The `go-ci-lint-only` image is *not* updated in this release. We're
waiting on a new upstream release.

### Fixed

- Dependabot: Invalid ignore condition (version range) specified for
  "oldstable" image

## [v0.2.9] - 2020-10-14

### Added

- Cross-platform Debian build image
  - used to generate cgo binaries for multiple architectures/platforms

### Fixed

- Dockerfiles using deprecated `ENV` syntax

## [v0.2.8] - 2020-10-12

### Changed

- Dependencies
  - `honnef.co/go/tools/cmd/staticcheck`
    - `2020.1.5` to `2020.1.6`

## [v0.2.7] - 2020-10-08

### Added

- new Alpine build images to support cgo builds
  - based on the latest version of the current stable `i386/golang` and
    `golang` `alpine` images.
  - used for building Go applications, both directly and via `Makefile`
    builds.
  - uses [musl libc](https://musl.libc.org/) instead of
    [glibc](https://www.gnu.org/software/libc/)
  - supports cross-platform, static cgo-enabled builds for Windows and Linux
  - new tags
    - `go-ci-stable-alpine-buildx86`
    - `go-ci-stable-alpine-buildx64`

### Changed

- Dependencies
  - `actions/checkout`
    - `v2.3.2` to `v2.3.3`
  - `actions/setup-node`
    - `v2.1.1` to `v2.1.2`

- Light README updates to describe new image
- Makefile changes to build/tag the new images

## [v0.2.6] - 2020-09-11

### Changed

- Go versions
  - Update `stable` container from `1.15.1` to `1.15.2`
  - Update `oldstable` container from `1.14.8` to `1.14.9`
  - Update `unstable` container from `1.15.1` to `1.15.2`
    - the plan is to swap out to the next unstable Go version when it becomes
      available

## [v0.2.5] - 2020-09-08

### Changed

- Update golangci/golangci-lint from `v1.30.0` to `v1.31.0`
  - binary installed within `oldstable`, `stable` and `unstable` images
  - Docker image used as a builder/base for `lint-only` image

## [v0.2.4] - 2020-09-02

### Added

- `golangci-lint` linters
  - `unstable` container
    - `errcheck`
    - `gocognit`
    - `gocyclo`
    - `goerr113`

### Changed

- Go versions
  - Update `stable` container from `1.15.0` to `1.15.1`
  - Update `oldstable` container from `1.14.7` to `1.14.8`
  - Update `unstable` container from `1.15rc2` to `1.15.1`
    - the plan is to swap out to the next unstable Go version when it becomes
      available

- `unstable` container
  - use latest stable Go version (see note above)
  - update linters (see above)
  - local copy of `golangci-lint` config file specific to this image variant

## [v0.2.3] - 2020-08-12

### Changed

- Go versions
  - Update `stable` container from `1.14.7` to `1.15.0`
  - Update `oldstable` container from `1.13.15` to `1.14.7`
  - NOTE: the `unstable` container is still at `1.15rc2` for now

- Dependencies
  - upgrade `actions/checkout`
    - `v2.3.1` to `v2.3.2`

## [v0.2.2] - 2020-08-08

### Changed

- Go versions
  - Update "stable" container from 1.14.6 to 1.14.7
  - Update "oldstable" container from 1.13.14 to 1.13.15
  - Update "unstable" container from 1.15rc1 to 1.15rc2

## [v0.2.1] - 2020-08-03

### Changed

- Update golangci/golangci-lint from `v1.29.0` to `v1.30.0`
  - binary installed within `oldstable`, `stable` and `unstable` images
  - Docker image used as a builder/base for `lint-only` image

## [v0.2.0] - 2020-08-02

### Added

- Bundle `golangci-lint` and `markdownlint` config files
  - provide a usable default baseline for our projects, hopefully for others
    also

### Fixed

- Fix Makefile recipe description

## [v0.1.1] - 2020-07-31

### Changed

- `lint-only` image
  - swap base image from `golang` and `alpine` to `golangci/golangci-lint`
    - the intent is to provide a working environment for `golangci-lint`

### Fixed

- `lint-only` image
  - `golangci-lint` requires working go environment

## [v0.1.0] - 2020-07-31

### Added

- Add Docker containers for linting, testing, building in place of
  `actions/setup-go` provided environment currently used by most of my Go
  projects
  - "old stable"
    - Go 1.13.x series (currently)
  - "stable"
    - Go 1.14.x series (currently)
  - "linting-only"
    - bundles `staticcheck`, `golangci-lint` linting tools into a thin image
  - "unstable"
    - Go 1.15rc1 (currently)

- Include common linting tools used by my Go projects
  - `staticcheck`, `golangci-lint`

- Add GitHub Actions workflows
  - lint Markdown documentation
  - lint Dockerfile files

- Add Dependabot updates
  - GitHub Actions
  - Go modules
    - using a "trick" to have a `tools` module that depends on the linting
      tools that we include in our container images
  - Dockerfile base images

[Unreleased]: https://github.com/atc0005/go-ci/compare/v0.23.11...HEAD
[v0.23.11]: https://github.com/atc0005/go-ci/releases/tag/v0.23.11
[v0.23.10]: https://github.com/atc0005/go-ci/releases/tag/v0.23.10
[v0.23.9]: https://github.com/atc0005/go-ci/releases/tag/v0.23.9
[v0.23.8]: https://github.com/atc0005/go-ci/releases/tag/v0.23.8
[v0.23.7]: https://github.com/atc0005/go-ci/releases/tag/v0.23.7
[v0.23.6]: https://github.com/atc0005/go-ci/releases/tag/v0.23.6
[v0.23.5]: https://github.com/atc0005/go-ci/releases/tag/v0.23.5
[v0.23.4]: https://github.com/atc0005/go-ci/releases/tag/v0.23.4
[v0.23.3]: https://github.com/atc0005/go-ci/releases/tag/v0.23.3
[v0.23.2]: https://github.com/atc0005/go-ci/releases/tag/v0.23.2
[v0.23.1]: https://github.com/atc0005/go-ci/releases/tag/v0.23.1
[v0.23.0]: https://github.com/atc0005/go-ci/releases/tag/v0.23.0
[v0.22.10]: https://github.com/atc0005/go-ci/releases/tag/v0.22.10
[v0.22.9]: https://github.com/atc0005/go-ci/releases/tag/v0.22.9
[v0.22.8]: https://github.com/atc0005/go-ci/releases/tag/v0.22.8
[v0.22.7]: https://github.com/atc0005/go-ci/releases/tag/v0.22.7
[v0.22.6]: https://github.com/atc0005/go-ci/releases/tag/v0.22.6
[v0.22.5]: https://github.com/atc0005/go-ci/releases/tag/v0.22.5
[v0.22.4]: https://github.com/atc0005/go-ci/releases/tag/v0.22.4
[v0.22.3]: https://github.com/atc0005/go-ci/releases/tag/v0.22.3
[v0.22.2]: https://github.com/atc0005/go-ci/releases/tag/v0.22.2
[v0.22.1]: https://github.com/atc0005/go-ci/releases/tag/v0.22.1
[v0.22.0]: https://github.com/atc0005/go-ci/releases/tag/v0.22.0
[v0.21.20]: https://github.com/atc0005/go-ci/releases/tag/v0.21.20
[v0.21.19]: https://github.com/atc0005/go-ci/releases/tag/v0.21.19
[v0.21.18]: https://github.com/atc0005/go-ci/releases/tag/v0.21.18
[v0.21.17]: https://github.com/atc0005/go-ci/releases/tag/v0.21.17
[v0.21.16]: https://github.com/atc0005/go-ci/releases/tag/v0.21.16
[v0.21.15]: https://github.com/atc0005/go-ci/releases/tag/v0.21.15
[v0.21.14]: https://github.com/atc0005/go-ci/releases/tag/v0.21.14
[v0.21.13]: https://github.com/atc0005/go-ci/releases/tag/v0.21.13
[v0.21.12]: https://github.com/atc0005/go-ci/releases/tag/v0.21.12
[v0.21.11]: https://github.com/atc0005/go-ci/releases/tag/v0.21.11
[v0.21.10]: https://github.com/atc0005/go-ci/releases/tag/v0.21.10
[v0.21.9]: https://github.com/atc0005/go-ci/releases/tag/v0.21.9
[v0.21.8]: https://github.com/atc0005/go-ci/releases/tag/v0.21.8
[v0.21.7]: https://github.com/atc0005/go-ci/releases/tag/v0.21.7
[v0.21.6]: https://github.com/atc0005/go-ci/releases/tag/v0.21.6
[v0.21.5]: https://github.com/atc0005/go-ci/releases/tag/v0.21.5
[v0.21.4]: https://github.com/atc0005/go-ci/releases/tag/v0.21.4
[v0.21.3]: https://github.com/atc0005/go-ci/releases/tag/v0.21.3
[v0.21.2]: https://github.com/atc0005/go-ci/releases/tag/v0.21.2
[v0.21.1]: https://github.com/atc0005/go-ci/releases/tag/v0.21.1
[v0.21.0]: https://github.com/atc0005/go-ci/releases/tag/v0.21.0
[v0.20.8]: https://github.com/atc0005/go-ci/releases/tag/v0.20.8
[v0.20.7]: https://github.com/atc0005/go-ci/releases/tag/v0.20.7
[v0.20.6]: https://github.com/atc0005/go-ci/releases/tag/v0.20.6
[v0.20.5]: https://github.com/atc0005/go-ci/releases/tag/v0.20.5
[v0.20.4]: https://github.com/atc0005/go-ci/releases/tag/v0.20.4
[v0.20.3]: https://github.com/atc0005/go-ci/releases/tag/v0.20.3
[v0.20.2]: https://github.com/atc0005/go-ci/releases/tag/v0.20.2
[v0.20.1]: https://github.com/atc0005/go-ci/releases/tag/v0.20.1
[v0.20.0]: https://github.com/atc0005/go-ci/releases/tag/v0.20.0
[v0.19.0]: https://github.com/atc0005/go-ci/releases/tag/v0.19.0
[v0.18.0]: https://github.com/atc0005/go-ci/releases/tag/v0.18.0
[v0.17.1]: https://github.com/atc0005/go-ci/releases/tag/v0.17.1
[v0.17.0]: https://github.com/atc0005/go-ci/releases/tag/v0.17.0
[v0.16.1]: https://github.com/atc0005/go-ci/releases/tag/v0.16.1
[v0.16.0]: https://github.com/atc0005/go-ci/releases/tag/v0.16.0
[v0.15.4]: https://github.com/atc0005/go-ci/releases/tag/v0.15.4
[v0.15.3]: https://github.com/atc0005/go-ci/releases/tag/v0.15.3
[v0.15.2]: https://github.com/atc0005/go-ci/releases/tag/v0.15.2
[v0.15.1]: https://github.com/atc0005/go-ci/releases/tag/v0.15.1
[v0.15.0]: https://github.com/atc0005/go-ci/releases/tag/v0.15.0
[v0.14.9]: https://github.com/atc0005/go-ci/releases/tag/v0.14.9
[v0.14.8]: https://github.com/atc0005/go-ci/releases/tag/v0.14.8
[v0.14.7]: https://github.com/atc0005/go-ci/releases/tag/v0.14.7
[v0.14.6]: https://github.com/atc0005/go-ci/releases/tag/v0.14.6
[v0.14.5]: https://github.com/atc0005/go-ci/releases/tag/v0.14.5
[v0.14.4]: https://github.com/atc0005/go-ci/releases/tag/v0.14.4
[v0.14.3]: https://github.com/atc0005/go-ci/releases/tag/v0.14.3
[v0.14.2]: https://github.com/atc0005/go-ci/releases/tag/v0.14.2
[v0.14.1]: https://github.com/atc0005/go-ci/releases/tag/v0.14.1
[v0.14.0]: https://github.com/atc0005/go-ci/releases/tag/v0.14.0
[v0.13.12]: https://github.com/atc0005/go-ci/releases/tag/v0.13.12
[v0.13.11]: https://github.com/atc0005/go-ci/releases/tag/v0.13.11
[v0.13.10]: https://github.com/atc0005/go-ci/releases/tag/v0.13.10
[v0.13.9]: https://github.com/atc0005/go-ci/releases/tag/v0.13.9
[v0.13.8]: https://github.com/atc0005/go-ci/releases/tag/v0.13.8
[v0.13.7]: https://github.com/atc0005/go-ci/releases/tag/v0.13.7
[v0.13.6]: https://github.com/atc0005/go-ci/releases/tag/v0.13.6
[v0.13.5]: https://github.com/atc0005/go-ci/releases/tag/v0.13.5
[v0.13.4]: https://github.com/atc0005/go-ci/releases/tag/v0.13.4
[v0.13.3]: https://github.com/atc0005/go-ci/releases/tag/v0.13.3
[v0.13.2]: https://github.com/atc0005/go-ci/releases/tag/v0.13.2
[v0.13.1]: https://github.com/atc0005/go-ci/releases/tag/v0.13.1
[v0.13.0]: https://github.com/atc0005/go-ci/releases/tag/v0.13.0
[v0.12.0]: https://github.com/atc0005/go-ci/releases/tag/v0.12.0
[v0.11.5]: https://github.com/atc0005/go-ci/releases/tag/v0.11.5
[v0.11.4]: https://github.com/atc0005/go-ci/releases/tag/v0.11.4
[v0.11.3]: https://github.com/atc0005/go-ci/releases/tag/v0.11.3
[v0.11.2]: https://github.com/atc0005/go-ci/releases/tag/v0.11.2
[v0.11.1]: https://github.com/atc0005/go-ci/releases/tag/v0.11.1
[v0.11.0]: https://github.com/atc0005/go-ci/releases/tag/v0.11.0
[v0.10.6]: https://github.com/atc0005/go-ci/releases/tag/v0.10.6
[v0.10.5]: https://github.com/atc0005/go-ci/releases/tag/v0.10.5
[v0.10.4]: https://github.com/atc0005/go-ci/releases/tag/v0.10.4
[v0.10.3]: https://github.com/atc0005/go-ci/releases/tag/v0.10.3
[v0.10.2]: https://github.com/atc0005/go-ci/releases/tag/v0.10.2
[v0.10.1]: https://github.com/atc0005/go-ci/releases/tag/v0.10.1
[v0.10.0]: https://github.com/atc0005/go-ci/releases/tag/v0.10.0
[v0.9.2]: https://github.com/atc0005/go-ci/releases/tag/v0.9.2
[v0.9.1]: https://github.com/atc0005/go-ci/releases/tag/v0.9.1
[v0.9.0]: https://github.com/atc0005/go-ci/releases/tag/v0.9.0
[v0.8.1]: https://github.com/atc0005/go-ci/releases/tag/v0.8.1
[v0.8.0]: https://github.com/atc0005/go-ci/releases/tag/v0.8.0
[v0.7.11]: https://github.com/atc0005/go-ci/releases/tag/v0.7.11
[v0.7.10]: https://github.com/atc0005/go-ci/releases/tag/v0.7.10
[v0.7.9]: https://github.com/atc0005/go-ci/releases/tag/v0.7.9
[v0.7.8]: https://github.com/atc0005/go-ci/releases/tag/v0.7.8
[v0.7.7]: https://github.com/atc0005/go-ci/releases/tag/v0.7.7
[v0.7.6]: https://github.com/atc0005/go-ci/releases/tag/v0.7.6
[v0.7.5]: https://github.com/atc0005/go-ci/releases/tag/v0.7.5
[v0.7.4]: https://github.com/atc0005/go-ci/releases/tag/v0.7.4
[v0.7.3]: https://github.com/atc0005/go-ci/releases/tag/v0.7.3
[v0.7.2]: https://github.com/atc0005/go-ci/releases/tag/v0.7.2
[v0.7.1]: https://github.com/atc0005/go-ci/releases/tag/v0.7.1
[v0.7.0]: https://github.com/atc0005/go-ci/releases/tag/v0.7.0
[v0.6.26]: https://github.com/atc0005/go-ci/releases/tag/v0.6.26
[v0.6.25]: https://github.com/atc0005/go-ci/releases/tag/v0.6.25
[v0.6.24]: https://github.com/atc0005/go-ci/releases/tag/v0.6.24
[v0.6.23]: https://github.com/atc0005/go-ci/releases/tag/v0.6.23
[v0.6.22]: https://github.com/atc0005/go-ci/releases/tag/v0.6.22
[v0.6.21]: https://github.com/atc0005/go-ci/releases/tag/v0.6.21
[v0.6.20]: https://github.com/atc0005/go-ci/releases/tag/v0.6.20
[v0.6.19]: https://github.com/atc0005/go-ci/releases/tag/v0.6.19
[v0.6.18]: https://github.com/atc0005/go-ci/releases/tag/v0.6.18
[v0.6.17]: https://github.com/atc0005/go-ci/releases/tag/v0.6.17
[v0.6.16]: https://github.com/atc0005/go-ci/releases/tag/v0.6.16
[v0.6.15]: https://github.com/atc0005/go-ci/releases/tag/v0.6.15
[v0.6.14]: https://github.com/atc0005/go-ci/releases/tag/v0.6.14
[v0.6.13]: https://github.com/atc0005/go-ci/releases/tag/v0.6.13
[v0.6.12]: https://github.com/atc0005/go-ci/releases/tag/v0.6.12
[v0.6.11]: https://github.com/atc0005/go-ci/releases/tag/v0.6.11
[v0.6.10]: https://github.com/atc0005/go-ci/releases/tag/v0.6.10
[v0.6.9]: https://github.com/atc0005/go-ci/releases/tag/v0.6.9
[v0.6.8]: https://github.com/atc0005/go-ci/releases/tag/v0.6.8
[v0.6.7]: https://github.com/atc0005/go-ci/releases/tag/v0.6.7
[v0.6.6]: https://github.com/atc0005/go-ci/releases/tag/v0.6.6
[v0.6.5]: https://github.com/atc0005/go-ci/releases/tag/v0.6.5
[v0.6.4]: https://github.com/atc0005/go-ci/releases/tag/v0.6.4
[v0.6.3]: https://github.com/atc0005/go-ci/releases/tag/v0.6.3
[v0.6.2]: https://github.com/atc0005/go-ci/releases/tag/v0.6.2
[v0.6.1]: https://github.com/atc0005/go-ci/releases/tag/v0.6.1
[v0.6.0]: https://github.com/atc0005/go-ci/releases/tag/v0.6.0
[v0.5.0]: https://github.com/atc0005/go-ci/releases/tag/v0.5.0
[v0.4.1]: https://github.com/atc0005/go-ci/releases/tag/v0.4.1
[v0.4.0]: https://github.com/atc0005/go-ci/releases/tag/v0.4.0
[v0.3.43]: https://github.com/atc0005/go-ci/releases/tag/v0.3.43
[v0.3.42]: https://github.com/atc0005/go-ci/releases/tag/v0.3.42
[v0.3.41]: https://github.com/atc0005/go-ci/releases/tag/v0.3.41
[v0.3.40]: https://github.com/atc0005/go-ci/releases/tag/v0.3.40
[v0.3.39]: https://github.com/atc0005/go-ci/releases/tag/v0.3.39
[v0.3.38]: https://github.com/atc0005/go-ci/releases/tag/v0.3.38
[v0.3.37]: https://github.com/atc0005/go-ci/releases/tag/v0.3.37
[v0.3.36]: https://github.com/atc0005/go-ci/releases/tag/v0.3.36
[v0.3.35]: https://github.com/atc0005/go-ci/releases/tag/v0.3.35
[v0.3.34]: https://github.com/atc0005/go-ci/releases/tag/v0.3.34
[v0.3.33]: https://github.com/atc0005/go-ci/releases/tag/v0.3.33
[v0.3.32]: https://github.com/atc0005/go-ci/releases/tag/v0.3.32
[v0.3.31]: https://github.com/atc0005/go-ci/releases/tag/v0.3.31
[v0.3.30]: https://github.com/atc0005/go-ci/releases/tag/v0.3.30
[v0.3.29]: https://github.com/atc0005/go-ci/releases/tag/v0.3.29
[v0.3.28]: https://github.com/atc0005/go-ci/releases/tag/v0.3.28
[v0.3.27]: https://github.com/atc0005/go-ci/releases/tag/v0.3.27
[v0.3.26]: https://github.com/atc0005/go-ci/releases/tag/v0.3.26
[v0.3.25]: https://github.com/atc0005/go-ci/releases/tag/v0.3.25
[v0.3.24]: https://github.com/atc0005/go-ci/releases/tag/v0.3.24
[v0.3.23]: https://github.com/atc0005/go-ci/releases/tag/v0.3.23
[v0.3.22]: https://github.com/atc0005/go-ci/releases/tag/v0.3.22
[v0.3.21]: https://github.com/atc0005/go-ci/releases/tag/v0.3.21
[v0.3.20]: https://github.com/atc0005/go-ci/releases/tag/v0.3.20
[v0.3.19]: https://github.com/atc0005/go-ci/releases/tag/v0.3.19
[v0.3.18]: https://github.com/atc0005/go-ci/releases/tag/v0.3.18
[v0.3.17]: https://github.com/atc0005/go-ci/releases/tag/v0.3.17
[v0.3.16]: https://github.com/atc0005/go-ci/releases/tag/v0.3.16
[v0.3.15]: https://github.com/atc0005/go-ci/releases/tag/v0.3.15
[v0.3.14]: https://github.com/atc0005/go-ci/releases/tag/v0.3.14
[v0.3.13]: https://github.com/atc0005/go-ci/releases/tag/v0.3.13
[v0.3.12]: https://github.com/atc0005/go-ci/releases/tag/v0.3.12
[v0.3.11]: https://github.com/atc0005/go-ci/releases/tag/v0.3.11
[v0.3.10]: https://github.com/atc0005/go-ci/releases/tag/v0.3.10
[v0.3.9]: https://github.com/atc0005/go-ci/releases/tag/v0.3.9
[v0.3.8]: https://github.com/atc0005/go-ci/releases/tag/v0.3.8
[v0.3.7]: https://github.com/atc0005/go-ci/releases/tag/v0.3.7
[v0.3.6]: https://github.com/atc0005/go-ci/releases/tag/v0.3.6
[v0.3.5]: https://github.com/atc0005/go-ci/releases/tag/v0.3.5
[v0.3.4]: https://github.com/atc0005/go-ci/releases/tag/v0.3.4
[v0.3.3]: https://github.com/atc0005/go-ci/releases/tag/v0.3.3
[v0.3.2]: https://github.com/atc0005/go-ci/releases/tag/v0.3.2
[v0.3.1]: https://github.com/atc0005/go-ci/releases/tag/v0.3.1
[v0.3.0]: https://github.com/atc0005/go-ci/releases/tag/v0.3.0
[v0.2.16]: https://github.com/atc0005/go-ci/releases/tag/v0.2.16
[v0.2.15]: https://github.com/atc0005/go-ci/releases/tag/v0.2.15
[v0.2.14]: https://github.com/atc0005/go-ci/releases/tag/v0.2.14
[v0.2.13]: https://github.com/atc0005/go-ci/releases/tag/v0.2.13
[v0.2.12]: https://github.com/atc0005/go-ci/releases/tag/v0.2.12
[v0.2.11]: https://github.com/atc0005/go-ci/releases/tag/v0.2.11
[v0.2.10]: https://github.com/atc0005/go-ci/releases/tag/v0.2.10
[v0.2.9]: https://github.com/atc0005/go-ci/releases/tag/v0.2.9
[v0.2.8]: https://github.com/atc0005/go-ci/releases/tag/v0.2.8
[v0.2.7]: https://github.com/atc0005/go-ci/releases/tag/v0.2.7
[v0.2.6]: https://github.com/atc0005/go-ci/releases/tag/v0.2.6
[v0.2.5]: https://github.com/atc0005/go-ci/releases/tag/v0.2.5
[v0.2.4]: https://github.com/atc0005/go-ci/releases/tag/v0.2.4
[v0.2.3]: https://github.com/atc0005/go-ci/releases/tag/v0.2.3
[v0.2.2]: https://github.com/atc0005/go-ci/releases/tag/v0.2.2
[v0.2.1]: https://github.com/atc0005/go-ci/releases/tag/v0.2.1
[v0.2.0]: https://github.com/atc0005/go-ci/releases/tag/v0.2.0
[v0.1.1]: https://github.com/atc0005/go-ci/releases/tag/v0.1.1
[v0.1.0]: https://github.com/atc0005/go-ci/releases/tag/v0.1.0
