namespace :docker do
  desc "build image"
  task build_image: :environment do
    image_tag = Rails.app_class.name.deconstantize.underscore
    sh "docker build -t #{image_tag} ."
  end

  desc "run image"
  task run_image: :environment do
    image_tag = Rails.app_class.name.deconstantize.underscore
    sh "docker run --env-file ./.env -p 3000:3000 #{image_tag}"
  end

end
