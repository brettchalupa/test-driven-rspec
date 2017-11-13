# Includes methods to make HTTP request specs easier to work with.
module RequestHelpers
  def response_json
    JSON.parse(response.body)
  end
end
