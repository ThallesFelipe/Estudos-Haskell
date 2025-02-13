type Usuario = (String, Maybe Int, [String])

user1 :: Usuario
user1 = ("Ana", Just 21, ["Farmacia", "SOAD"])

user2 :: Usuario
user2 = ("Thalles", Just 21, ["Haskell", "Rust"])

user3 :: Usuario
user3 = ("Leticia", Nothing, [])

--
type Nome = String
type Cidade = String
type Classe = Maybe String
type Reserva = (Nome, Cidade, Classe)

reserva1 :: Reserva
reserva1 = ("Thalles", "Ouro Preto", Nothing)

reserva2 :: Reserva
reserva2 = ("Ana", "Cairo", Just "Executiva")