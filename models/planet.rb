def all_planets()
    run_sql("SELECT * FROM planets;")
end

def delete_planet(id)
    sql_query = "DELETE FROM planets WHERE id = #{id}"
    run_sql(sql_query)
end

def add_planet(name, image_url, diameter, distance, mass, moon_count)
    sql_query = "INSERT INTO planets(name, image_url, diameter, distance, mass, moon_count) VALUES ('#{name}', '#{image_url}', #{diameter}, #{distance}, #{mass}, #{moon_count})"
    run_sql(sql_query)
end