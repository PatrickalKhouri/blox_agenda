Ruby 2.6.6 Framework - Rails 6 Database - Postgresql

--Instalar dependencias:

$ bundle install && yarn install

--Migrar a base de dados:

$ rails db:migrate

-- Alimentar o projeto

$ rails db:seed

-- Iniciar Servidor:

$ rails s

-- Rodar testes:

$ rspec

-- Log in e senha:
email: patrick.darya@gmail.com 
senha: 123456

Ou se preferir pode criar um usuario e senha.

## Decisões Técnicas ##

Ao receber o projeto eu emulei uma de agenda de reuniões de uma empresa no qual os colaboradores estão em um mesmo ambiente fisico (visto que existe restrições de uso). P

Para simplificar coloquei somente 3 tabelas, Usuário, Sala e Reunião, sendo que a reunião precisa de um usuario e uma sala para existir. 

Como estou simulando um ambiente interno de uma empresa, para acessar o sistema é necessário um log in. Outra medida é que só quem criou a reunião pode deletar

Primeiro fiz toda a parte de back end, colocando os testes unitários, as validações e os métidos. Após o sistema estar funcionando (não podendo agendar uma reunião ao mesmo tempo de outra por exemplo)
foi atacado a parte do front end no qual usei a gema simple calendar. Com isso conseguimos criar e deletar tanto salas quanto reuniões.

O princpial ponto a evoluir seria fazer testes mais robustos, me falta experiencia e é algo que busco desenvolver.
                    
