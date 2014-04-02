# encoding: utf-8
require 'sequel'
require 'sequel/adapters/jdbc'

Sequel::JDBC::DATABASE_SETUP[:hive] = proc do |db|
  require 'jdbc/hive2'
  Jdbc::Hive2.load_driver

  org.apache.hadoop.hive.jdbc.HiveDriver

  require 'sequel/adapters/jdbc/hive2'
  # db.extend(Sequel::JDBC::Postgres::DatabaseMethods)
  # db.dataset_class = Sequel::JDBC::Postgres::Dataset

  org.apache.hadoop.hive.jdbc.HiveDriver
end

Sequel::JDBC::DATABASE_SETUP[:hive2] = proc do |db|
  require 'jdbc/hive2'
  Jdbc::Hive2.load_driver

  org.apache.hive.jdbc.HiveDriver

  require 'sequel/adapters/jdbc/hive2'
  # db.extend(Sequel::JDBC::Postgres::DatabaseMethods)
  # db.dataset_class = Sequel::JDBC::Postgres::Dataset

  org.apache.hive.jdbc.HiveDriver
end
