# frozen_string_literal: true

require 'net/https'
require 'uri'
require 'cgi'
require 'json'
require 'securerandom'

module TranslationService
  module Articles
    extend ActiveSupport::Concern

    def self.germanize(text)
      unless ENV['TRANSLATOR_TEXT_SUBSCRIPTION_KEY']
        raise 'Please set/export the following environment variable: TRANSLATOR_TEXT_SUBSCRIPTION_KEY'
      end

      subscription_key = ENV['TRANSLATOR_TEXT_SUBSCRIPTION_KEY']
      endpoint = 'https://api.cognitive.microsofttranslator.com'
      path = '/translate?api-version=3.0'

      # Translate to German
      params = '&from=en&to=de'

      uri = URI(endpoint + path + params)

      content = '[{"Text" : "' + text + '"}]'

      request = Net::HTTP::Post.new(uri)
      request['Content-type'] = 'application/json'
      request['Content-length'] = content.length
      request['Ocp-Apim-Subscription-Key'] = subscription_key
      request['X-ClientTraceId'] = SecureRandom.uuid
      request.body = content

      response = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https') do |http|
        http.request request
      end

      result = response.body.force_encoding('utf-8')

      json = JSON.parse(result)

      translation_text_from(json)
    end

    def self.translation_text_from(json)
      json.first['translations'].first['text']
    end
  end
end
