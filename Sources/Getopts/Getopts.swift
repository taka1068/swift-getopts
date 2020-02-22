
public enum ParsingStyle {
    /// Option and non-option arguments can be freely intermixed.
    /// This allows options to be given in any order.
    case anyOrder
    /// As soon as non-option argument is encountered, stop
    /// considering any remaining arguments as options.
    case stopAtFirstNonOption
}
