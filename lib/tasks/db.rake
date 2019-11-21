namespace :db do
  desc "Creating faker datas for City, Mayor and Councilors tables"
  task fake: :environment do
    for i in 1..223 do
      City.create!(
        nome: Faker::Address.city,
        populacao: Faker::Number.number(digits: 5),
        mayor_attributes: {
          nome: Faker::Name.name,
          email: Faker::Internet.free_email,
        }
      )
    end

    for i in 1..1200 do
      Councilor.create!(
        nome: Faker::Name.name,
        telefone: Faker::PhoneNumber.cell_phone,
        city: City.all.sample
      )
    end
  end

end
