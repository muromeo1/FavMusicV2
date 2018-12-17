# FavMusic!

Um produto onde o usuário poderá favoritar suas músicas preferidas.

### Pré-requisitos

Ter instalado:

```
Ruby -v2.5.3
Rails -v5.2.2
PostgreSQL -v10.6
```

### Instalação

Com o repositório já clonado, execute para instalar as gems:

```
bundle install
```

Edite o arquivo "config/database.yml" com o nome de usuário e senha do seu PostgreSQL. Adicione também o domínio. 

```
default: &default
  host: seu_host (Ex.: localhost)
  username: seu_user
  password: sua_senha
  ...
```

Dentro do diretório do programa, crie a database rodando no terminal:

```
rails db:create
```

Depois, realize as migrations do banco:

```
rails db:migrate
```

Adicione as músicas pré-escolhidas com:

```
rails db:seed
```

Feito isso, apenas execute:

```
rails s
```

Acesse "localhost:3000" para vizualizar o sistema.

## Testes

Para essa aplicação, foi utilizado o Teste Unitário. Com as análises de erros encontrados, os mesmos foram corrigidos e validados através das "Models".

## Feito com

* [Ruby](https://www.ruby-lang.org/pt/) - Linguagem de progrmação
* [Rails](https://rubyonrails.org/) - Framework para aplicações WEB
* [PostgeSQL](https://www.postgresql.org/) - Banco relacional usado nessa aplicação
* [Bootstrap](https://getbootstrap.com/) - Framework de estilo responsívo


## Autor

* **Murilo Hernandes Romeo** - [muromeo1](https://github.com/muromeo1)
