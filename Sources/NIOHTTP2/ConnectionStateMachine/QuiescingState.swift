//===----------------------------------------------------------------------===//
//
// This source file is part of the SwiftNIO open source project
//
// Copyright (c) 2017-2018 Apple Inc. and the SwiftNIO project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of SwiftNIO project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

/// A state where the connection is being quiesced by someone.
///
/// This protocol should only be conformed to by states for the HTTP/2 connection state machine.
protocol QuiescingState {
    var streamState: ConnectionStreamState { get }

    var quiescedByServer: Bool { get }
}
