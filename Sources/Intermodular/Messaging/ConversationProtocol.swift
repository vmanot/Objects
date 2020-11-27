//
// Copyright (c) Vatsal Manot
//

import FoundationX
import Swift

public protocol ConversationProtocol: Identifiable {
    associatedtype Messages: RandomAccessCollection where Messages.Element: ConversationMessageProtocol
    
    typealias Message = Messages.Element
    
    var entityName: String { get }
    
    var messages: Messages { get }
}

public protocol ConversationMessageProtocol: Identifiable {
    var timestamp: Date { get }
    var fromMe: Bool { get }
    var body: String { get }
}

extension ConversationProtocol {
    public var lastSignificantMessage: Message? {
        messages.last
    }
}
