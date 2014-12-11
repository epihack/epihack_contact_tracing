# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.where(:email => 'epihacktz@gmail.com', :password => '12345678', :password_confirmation => '12345678', :confirmed_at => DateTime.now()).create!

AnimalType.where(:name => 'cattle').create!
AnimalType.where(:name => 'goat').create!
AnimalType.where(:name => 'sheep').create!
AnimalType.where(:name => 'pig').create!
AnimalType.where(:name => 'chicken').create!
AnimalType.where(:name => 'horse').create!
AnimalType.where(:name => 'donkey').create!
AnimalType.where(:name => 'dog').create!
AnimalType.where(:name => 'all the species').create!

SymptomType.where(:name => 'fever', :code => 'fever').create!
SymptomType.where(:name => 'lameness', :code => 'lameness').create!
SymptomType.where(:name => 'cns', :code => 'cns').create!
SymptomType.where(:name => 'difficult breathing', :code => 'difficulties_breathing').create!
SymptomType.where(:name => 'coughing', :code => 'cough').create!
SymptomType.where(:name => 'hemorrhages', :code => 'haemorrhages').create!
SymptomType.where(:name => 'lymphadenopathy', :code => 'lymphadenopathy').create!
SymptomType.where(:name => 'sore', :code => 'sore_signs').create!
SymptomType.where(:name => 'diarrhoea', :code => 'diarrhoea').create!
SymptomType.where(:name => 'abortions', :code => 'abortions').create!