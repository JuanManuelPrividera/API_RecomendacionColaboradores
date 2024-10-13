namespace :datos_prueba do
  desc "Crear datos de prueba"
  task :crear => :environment do
    Colaborador.create(nombre: "Julian", apellido: "Perez", contacto: "julian@gmail.com", puntos: 100, cantDonaciones: 1)
    Colaborador.create(nombre: "Roman", apellido: "Hernandez", contacto: "roman@gmail.com", puntos: 100, cantDonaciones: 1)
    Colaborador.create(nombre: "Carlos", apellido: "Mesias", contacto: "carlos@gmail.com", puntos: 100, cantDonaciones: 1)
    Colaborador.create(nombre: "Tomas", apellido: "Gonzales", contacto: "tomas@gmail.com", puntos: 100, cantDonaciones: 1)
    Colaborador.create(nombre: "Pedro", apellido: "PicaPiedra", contacto: "pedro@gmail.com", puntos: 100, cantDonaciones: 1)
    puts "Colaboradores creados"
  end
end