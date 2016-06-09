require 'rspec/core/formatters/backtrace_formatter'

class ExclusionGem < RSpec::Core::Formatters::BacktraceFormatter

  def backtrace_exclusion_patterns=(/gems/)
    @backtrace_formatter.exclusion_patterns = patterns
  end

end
