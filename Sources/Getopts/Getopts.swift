
public enum ParsingStyle {
    /// Option and non-option arguments can be freely intermixed.
    /// This allows options to be given in any order.
    case anyOrder
    /// As soon as non-option argument is encountered, stop
    /// considering any remaining arguments as options.
    case stopAtFirstNonOption
}

/// A description of the options that a program can handle.
public struct Options {
    let options: [Options]
    let parsingStyle: ParsingStyle
    let longOnly: Bool
}

/// Represents an option.
public struct Option {
    /// Short name of the option, e.g. `h` for a `-h` option.
    let shortName: Character?
    /// Long name of the option, e.g. `help` for a `--help` option.
    let longName: String?
    /// Hint for argument, e.g. `FILE` for a `-o FILE` option.
    let hint: String?
    /// Description for usage help text.
    let description: String?
    /// Whether option has an argument.
    let hasArgument: HasArgument
}

/// Describes whether an option has an argument
public enum HasArgument {
    /// The option requires as argument.
    case yes
    /// The option takes no argument.
    case no
    /// The option argument is optional.
    case optional
}
