require 'rspec/core/formatters/base_text_formatter'
require 'colorize'

class SillyFormatYay
  # This registers the notifications this formatter supports, and tells
  # us that this was written against the RSpec 3.x formatter API.
  RSpec::Core::Formatters.register self, *[:example_started, :example_passed, :example_failed]

    def initialize(_output)
      port = RSpec.configuration.drb_port
      drb_uri = "druby://localhost:#{port}"
      @all_example_ids = []
      @failed_example_ids = []
      @bisect_server = DRbObject.new_with_uri(drb_uri)
      @remaining_failures = []
      RSpec.configuration.files_or_directories_to_run = @bisect_server.files_or_directories_to_run
    end

    def example_started(notification)
      @all_example_ids << notification.example.id
    end

    def example_passed(example)
      # if MacOS.version >= :lion
        @output.print ([' 🍺 ',' 🙌 ', ' 😍 '].sample).colorize(:background => :green)
      # else
      #   output.print ([' YAY ', ' YAAASS ', ' NICE '].sample).colorize(:background => :green)
      # end
    end

    def example_failed(example)
      # if MacOS.version >= :lion
        @output.print ([' 😨 ', ' 😵 ', ' 🙅 '].sample).colorize(:background => :red)
      # else
      #   output.print ([' NOOO ', ' LAME ', ' FFFUUUU '].sample).colorize(:background => :green)
      # end
    end

    # def close(example)
    # end

end
