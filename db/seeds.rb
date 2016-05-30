# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Post.delete_all
Subscription.delete_all
Comment.delete_all
Source.delete_all
Dataset.delete_all

margaret = User.create name: 'Margaret Hamilton', email: 'margaret@example.org', password: 'apollo', description: 'I love exploring open data!'
grace = User.create name: 'Grace Hopper', email: 'grace@example.org', password: 'cobol', description: 'Just for fun...'
alan = User.create name: 'Alan Turing', email: 'alan@example.org', password: 'imitationgame', description: 'Love this site so much!'

chicago_energy = Dataset.new
chicago_energy.database = 'City of Chicago Data Portal'
chicago_energy.table = 'Chicago Energy Benchmarking - 2014 Data Reported in 2015'
chicago_energy.url = 'https://data.cityofchicago.org/Environment-Sustainable-Development/Chicago-Energy-Benchmarking-2014-Data-Reported-in-/tepd-j7h5'
chicago_energy.save
chicago_energy = Dataset.new
chicago_energy.database = 'City of Chicago Data Portal'
chicago_energy.table = 'Chicago Energy Benchmarking - 2014 Data Reported in 2015'
chicago_energy.url = 'https://data.cityofchicago.org/Environment-Sustainable-Development/Chicago-Energy-Benchmarking-2014-Data-Reported-in-/tepd-j7h5'
chicago_energy.save
chicago_energy = Dataset.new
chicago_energy.database = 'City of Chicago Data Portal'
chicago_energy.table = 'Chicago Energy Benchmarking - 2014 Data Reported in 2015'
chicago_energy.url = 'https://data.cityofchicago.org/Environment-Sustainable-Development/Chicago-Energy-Benchmarking-2014-Data-Reported-in-/tepd-j7h5'
chicago_energy.save
chicago_energy = Dataset.new
chicago_energy.database = 'City of Chicago Data Portal'
chicago_energy.table = 'Chicago Energy Benchmarking - 2014 Data Reported in 2015'
chicago_energy.url = 'https://data.cityofchicago.org/Environment-Sustainable-Development/Chicago-Energy-Benchmarking-2014-Data-Reported-in-/tepd-j7h5'
chicago_energy.save
chicago_energy = Dataset.new
chicago_energy.database = 'City of Chicago Data Portal'
chicago_energy.table = 'Chicago Energy Benchmarking - 2014 Data Reported in 2015'
chicago_energy.url = 'https://data.cityofchicago.org/Environment-Sustainable-Development/Chicago-Energy-Benchmarking-2014-Data-Reported-in-/tepd-j7h5'
chicago_energy.save
chicago_energy = Dataset.new
chicago_energy.database = 'City of Chicago Data Portal'
chicago_energy.table = 'Chicago Energy Benchmarking - 2014 Data Reported in 2015'
chicago_energy.url = 'https://data.cityofchicago.org/Environment-Sustainable-Development/Chicago-Energy-Benchmarking-2014-Data-Reported-in-/tepd-j7h5'
chicago_energy.save

energy_map = Post.new
energy_map.title = 'Visualize Chicago Energy Benchmarking'
energy_map.image_url = 'energy_alan.png'
energy_map.content = 'Based on Chicago Energy Benchmarking - 2014 Data Reported in 2015. The Chicago Building Energy Use Benchmarking Ordinance calls on existing municipal, commercial, and residential buildings larger than 50,000 square feet to track whole-building energy use, report to the City annually, and verify data accuracy every three years. The law, which phases in from 2014-2017, covers less than 1% of Chicago’s buildings, which account for approximately 20% of total energy used by all buildings. For more details, including ordinance text, rules and regulations, and timing, please visit www.CityofChicago.org/EnergyBenchmarking. The ordinance authorizes the City to share property-specific information with the public, beginning with the second year in which a building is required to comply. Initially, the dataset includes 243 properties larger than 250,000 square feet that were covered by the ordinance in both 2014 and 2015. The dataset represents self-reported and publicly-available property information for January - December, 2014. In future years, the City plans to release additional building data, as-authorized by the ordinance. Using the "Data Year" column, this map shows data for 2014, as reported in 2015.'
energy_map.user_id = alan.id
energy_map.save

energy_map = Post.new
energy_map.title = 'Visualize Chicago Energy Benchmarking'
energy_map.image_url = 'energy_alan.png'
energy_map.content = 'Based on Chicago Energy Benchmarking - 2014 Data Reported in 2015. The Chicago Building Energy Use Benchmarking Ordinance calls on existing municipal, commercial, and residential buildings larger than 50,000 square feet to track whole-building energy use, report to the City annually, and verify data accuracy every three years. The law, which phases in from 2014-2017, covers less than 1% of Chicago’s buildings, which account for approximately 20% of total energy used by all buildings. For more details, including ordinance text, rules and regulations, and timing, please visit www.CityofChicago.org/EnergyBenchmarking. The ordinance authorizes the City to share property-specific information with the public, beginning with the second year in which a building is required to comply. Initially, the dataset includes 243 properties larger than 250,000 square feet that were covered by the ordinance in both 2014 and 2015. The dataset represents self-reported and publicly-available property information for January - December, 2014. In future years, the City plans to release additional building data, as-authorized by the ordinance. Using the "Data Year" column, this map shows data for 2014, as reported in 2015.'
energy_map.user_id = alan.id
energy_map.save

energy_map = Post.new
energy_map.title = 'Visualize Chicago Energy Benchmarking'
energy_map.image_url = 'energy_alan.png'
energy_map.content = 'Based on Chicago Energy Benchmarking - 2014 Data Reported in 2015. The Chicago Building Energy Use Benchmarking Ordinance calls on existing municipal, commercial, and residential buildings larger than 50,000 square feet to track whole-building energy use, report to the City annually, and verify data accuracy every three years. The law, which phases in from 2014-2017, covers less than 1% of Chicago’s buildings, which account for approximately 20% of total energy used by all buildings. For more details, including ordinance text, rules and regulations, and timing, please visit www.CityofChicago.org/EnergyBenchmarking. The ordinance authorizes the City to share property-specific information with the public, beginning with the second year in which a building is required to comply. Initially, the dataset includes 243 properties larger than 250,000 square feet that were covered by the ordinance in both 2014 and 2015. The dataset represents self-reported and publicly-available property information for January - December, 2014. In future years, the City plans to release additional building data, as-authorized by the ordinance. Using the "Data Year" column, this map shows data for 2014, as reported in 2015.'
energy_map.user_id = alan.id
energy_map.save
energy_map = Post.new
energy_map.title = 'Visualize Chicago Energy Benchmarking'
energy_map.image_url = 'energy_alan.png'
energy_map.content = 'Based on Chicago Energy Benchmarking - 2014 Data Reported in 2015. The Chicago Building Energy Use Benchmarking Ordinance calls on existing municipal, commercial, and residential buildings larger than 50,000 square feet to track whole-building energy use, report to the City annually, and verify data accuracy every three years. The law, which phases in from 2014-2017, covers less than 1% of Chicago’s buildings, which account for approximately 20% of total energy used by all buildings. For more details, including ordinance text, rules and regulations, and timing, please visit www.CityofChicago.org/EnergyBenchmarking. The ordinance authorizes the City to share property-specific information with the public, beginning with the second year in which a building is required to comply. Initially, the dataset includes 243 properties larger than 250,000 square feet that were covered by the ordinance in both 2014 and 2015. The dataset represents self-reported and publicly-available property information for January - December, 2014. In future years, the City plans to release additional building data, as-authorized by the ordinance. Using the "Data Year" column, this map shows data for 2014, as reported in 2015.'
energy_map.user_id = alan.id
energy_map.save
energy_map = Post.new
energy_map.title = 'Visualize Chicago Energy Benchmarking'
energy_map.image_url = 'energy_alan.png'
energy_map.content = 'Based on Chicago Energy Benchmarking - 2014 Data Reported in 2015. The Chicago Building Energy Use Benchmarking Ordinance calls on existing municipal, commercial, and residential buildings larger than 50,000 square feet to track whole-building energy use, report to the City annually, and verify data accuracy every three years. The law, which phases in from 2014-2017, covers less than 1% of Chicago’s buildings, which account for approximately 20% of total energy used by all buildings. For more details, including ordinance text, rules and regulations, and timing, please visit www.CityofChicago.org/EnergyBenchmarking. The ordinance authorizes the City to share property-specific information with the public, beginning with the second year in which a building is required to comply. Initially, the dataset includes 243 properties larger than 250,000 square feet that were covered by the ordinance in both 2014 and 2015. The dataset represents self-reported and publicly-available property information for January - December, 2014. In future years, the City plans to release additional building data, as-authorized by the ordinance. Using the "Data Year" column, this map shows data for 2014, as reported in 2015.'
energy_map.user_id = alan.id
energy_map.save
energy_map = Post.new
energy_map.title = 'Visualize Chicago Energy Benchmarking'
energy_map.image_url = 'energy_alan.png'
energy_map.content = 'Based on Chicago Energy Benchmarking - 2014 Data Reported in 2015. The Chicago Building Energy Use Benchmarking Ordinance calls on existing municipal, commercial, and residential buildings larger than 50,000 square feet to track whole-building energy use, report to the City annually, and verify data accuracy every three years. The law, which phases in from 2014-2017, covers less than 1% of Chicago’s buildings, which account for approximately 20% of total energy used by all buildings. For more details, including ordinance text, rules and regulations, and timing, please visit www.CityofChicago.org/EnergyBenchmarking. The ordinance authorizes the City to share property-specific information with the public, beginning with the second year in which a building is required to comply. Initially, the dataset includes 243 properties larger than 250,000 square feet that were covered by the ordinance in both 2014 and 2015. The dataset represents self-reported and publicly-available property information for January - December, 2014. In future years, the City plans to release additional building data, as-authorized by the ordinance. Using the "Data Year" column, this map shows data for 2014, as reported in 2015.'
energy_map.user_id = alan.id
energy_map.save

Source.create(post_id: energy_map.id, dataset_id: chicago_energy.id)