# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

spinner = TTY::Spinner.new("[:spinner] Cadastrando moedas...")
spinner.auto_spin

coins = [
           {
              description: "Bitcoin",
              acronym: "BTC",
              url_image: "https://w7.pngwing.com/pngs/764/919/png-transparent-logo-bitcoin-graphics-dark-web-bmp-file-format-bitcoin-text-orange-logo.png"
           },
    
           {
              description: "Ethereum",
              acronym: "ETH",
              url_image: "https://www.pngitem.com/pimgs/m/124-1245793_ethereum-eth-icon-ethereum-png-transparent-png.png"
            },

           {
            description: "Dash",
                acronym: "DASH",
                url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/131.png"
            }
        ]

coins.each do |coin|
    Coin.find_or_create_by!(coin)
end

spinner.success("(Concluído.)")