class RailsAdmin::Config::Fields::Types::Json
  register_instance_option :formatted_value do
    if value.is_a?(Hash) || value.is_a?(Array)
      JSON.pretty_generate(value)
    else
      value
    end
  end

  def parse_value(value)
    value.present? ? JSON.parse(value) : nil
  rescue JSON::ParserError
    value
  end
end
