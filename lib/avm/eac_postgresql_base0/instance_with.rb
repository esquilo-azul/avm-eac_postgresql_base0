# frozen_string_literal: true

require 'avm/instances/entry_keys'
require 'avm/eac_postgresql_base0/instance'

module Avm
  module EacPostgresqlBase0
    module InstanceWith
      def pg
        @pg ||= ::Avm::EacPostgresqlBase0::Instance.new(
          host_env, host: database_hostname,
                    port: database_port,
                    user: database_username,
                    password: database_password,
                    name: database_name
        )
      end

      # @return [Avm::EacPostgresqlBase0::Instance::DataUnit]
      def pg_data_unit
        ::Avm::EacPostgresqlBase0::Instance::DataUnit.new(self)
      end
    end
  end
end
