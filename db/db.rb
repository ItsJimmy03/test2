def run_sql (sql_query)
    connection = PG.connect(ENV['DATABASE_URL'] || {dbname: 'planets_app'})
    results = connection.exec(sql_query)
    connection.close
    return results
end

