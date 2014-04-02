require 'yaml'
require 'sequel'
require 'sequel/jdbc_hive2_adapter'

class HiveConfig
  class << self
    def adapter
      config['adapter']
    end

    def host
      config['host']
    end

    def port
      config['port']
    end

    def database
      config['database']
    end

    def username
      config['username']
    end

    def password
      config['password']
    end

    def ssl
      config['ssl'] == true ? true : false
    end

    def connection_url
      "#{adapter}://#{host}:#{port}/#{database};user=#{username};password=#{password};ssl=#{ssl}"
    end

    private

    def config
      @config ||= YAML.load_file(File.join(File.dirname(__FILE__), 'database.yml'))
    end
  end
end
