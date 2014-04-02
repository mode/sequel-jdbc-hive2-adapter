require 'spec_helper'

describe 'Sequel::JDBC::Hive2' do
  let(:conn) { Sequel.connect(HiveConfig.connection_url) }

  it 'should show tables' do
    tables = []
    conn.dataset.fetch_rows("SHOW TABLES") do |row|
      tables << row[:tab_name]
    end
    tables.length.should be > 0
  end

  it 'should select rows from a table' do
    rows = []
    conn.dataset.fetch_rows("SELECT * FROM cb_clean LIMIT 100") do |row|
      rows << row
    end
    rows.length.should be > 0
  end
end
