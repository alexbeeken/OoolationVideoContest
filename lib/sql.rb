class SQL

  define_singleton_method(:connect) do
    PG::Connection.open(:dbname => 'd4bgdt5ocge7js', :host => 'ec2-107-22-249-138.compute-1.amazonaws.com', :port => '5432', :password => '', :user => 'qpuirwwgokptzl')
  end
end
