User.delete_all
Post.delete_all
Subscription.delete_all
Comment.delete_all
Source.delete_all
Dataset.delete_all

margaret = User.create name: 'Margaret Hopper', email: 'margaret@example.org', password: 'apollo', description: 'I love exploring open data!'
grace = User.create name: 'Grace Turing', email: 'grace@example.org', password: 'cobol', description: 'Just for fun...'
alan = User.create name: 'Alan Hamilton', email: 'alan@example.org', password: 'imitationgame', description: 'Love this site so much!'
alice = User.create name: 'Alice Tang', email: 'alice@example.org', password: 'xiaoruit', description: "I'm really excited to share my work!"
admin = User.create name: 'Administrator', email: 'admin@example.org', password: 'alicetang', description: "Feel free to email me at admin@example.org if you need any help!", admin: 1

chicago_energy = Dataset.new
chicago_energy.database = 'City of Chicago Data Portal'
chicago_energy.table = 'Chicago Energy Benchmarking'
chicago_energy.url = 'https://data.cityofchicago.org/Environment-Sustainable-Development/Chicago-Energy-Benchmarking/xq83-jr8c'
chicago_energy.save

chicago_food = Dataset.new
chicago_food.database = 'City of Chicago Data Portal'
chicago_food.table = 'Food Inspections'
chicago_food.url = 'https://data.cityofchicago.org/Health-Human-Services/Food-Inspections/4ijn-s7e5'
chicago_food.save

energy_map1 = Post.new
energy_map1.title = 'Visualize Chicago Energy Benchmarking'
energy_map1.image_url = 'energy_alan.png'
energy_map1.content = 'This map shows the geographic distribution of buildings that are required to report annual energy use to the City by the ordinance. The Chicago Building Energy Use Benchmarking Ordinance calls on existing municipal, commercial, and residential buildings larger than 50,000 square feet to track whole-building energy use, report to the City annually, and verify data accuracy every three years. The law, which phases in from 2014-2017, covers less than 1% of Chicago’s buildings, which account for approximately 20% of total energy used by all buildings. For more details, including ordinance text, rules and regulations, and timing, please visit www.CityofChicago.org/EnergyBenchmarking. The ordinance authorizes the City to share property-specific information with the public, beginning with the second year in which a building is required to comply. Initially, the dataset includes 243 properties larger than 250,000 square feet that were covered by the ordinance in both 2014 and 2015. The dataset represents self-reported and publicly-available property information for January - December, 2014. In future years, the City plans to release additional building data, as-authorized by the ordinance. Using the "Data Year" column, this map shows data for 2014, as reported in 2015.'
energy_map1.user_id = alan.id
energy_map1.save

energy_map2 = Post.new
energy_map2.title = 'Chicago Energy Benchmarking Heat Map'
energy_map2.image_url = 'energy_alice.png'
energy_map2.content = "I was inspired by Alan's post and want to do one on Chicago energy mapping. I think for this dataset, heat map is more informative than spot map."
energy_map2.user_id = alice.id
energy_map2.save

food_chart1 = Post.new
food_chart1.title = 'Chicago Food Inspection Trends and Results'
food_chart1.image_url = 'food_alan.png'
food_chart1.content = "The top chart shows how the number of food inspections changes over time. The bottom chart shows the overall distribution of inspection results."
food_chart1.user_id = alan.id
food_chart1.save

food_chart2 = Post.new
food_chart2.title = 'Chicago Food Inspections by Community Areas'
food_chart2.image_url = 'food_grace.png'
food_chart2.content = "This map shows the community distribution of Chicago food inspections. This information is derived from inspections of restaurants and other food establishments in Chicago from January 1, 2010 to the present. Inspections are performed by staff from the Chicago Department of Public Health’s Food Protection Program using a standardized procedure. The results of the inspection are inputted into a database, then reviewed and approved by a State of Illinois Licensed Environmental Health Practitioner (LEHP). For descriptions of the data elements included in this set, go to http://bit.ly/tS9IE8."
food_chart2.user_id = grace.id
food_chart2.save

Source.create(post_id: energy_map1.id, dataset_id: chicago_energy.id)
Source.create(post_id: energy_map2.id, dataset_id: chicago_energy.id)
Source.create(post_id: food_chart1.id, dataset_id: chicago_food.id)
Source.create(post_id: food_chart2.id, dataset_id: chicago_food.id)