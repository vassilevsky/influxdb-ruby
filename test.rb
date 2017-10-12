require 'influxdb'

c = InfluxDB::Client.new(database: 'test', async: true)

c.write_point('seriez', {tags: {foo: 'bar'}, values: {try: 1}}, 's', 'year')
c.write_point('seriez', {tags: {foo: 'bar'}, values: {try: 2}}, 's', 'year')
c.write_point('seriez', {tags: {foo: 'bar'}, values: {try: 3}}, 's', 'year')