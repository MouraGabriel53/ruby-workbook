# Ruby Workbook

Este é um projeto básico em Ruby on Rails criado para fins de aprendizado, seguindo o tutorial do YouTube ["Ruby on Rails - Curso Completo"](https://www.youtube.com/watch?v=Ldvdovngwhs&list=PLiHiV4-yH6fe5D1z9jPEHyoQ7EHTpP1wl&index=1).

## Objetivo

O projeto serve como uma introdução prática ao desenvolvimento web com Ruby on Rails. Ele cobre conceitos essenciais como:

- Estrutura de diretórios do Rails
- CRUD de modelos (exemplo: Vehicles)
- Views com ERB
- Controllers e rotas
- Helpers e layouts
- Assets (CSS, imagens, JavaScript)
- PWA básico (manifest e service worker)

## Estrutura do Projeto

```
app/
  assets/
    images/           # Imagens do projeto
    stylesheets/      # Arquivos CSS
  controllers/        # Controllers do Rails
  helpers/            # Helpers para views
  jobs/               # Jobs para background
  mailers/            # Mailers para envio de emails
  models/             # Modelos do banco de dados
  views/
    home/             # Página inicial
    layouts/          # Layouts base do projeto
    pwa/              # Arquivos para PWA
    shared/           # Partes reutilizáveis das views
    vehicles/         # CRUD de veículos
```

## Funcionalidades

- Listagem, criação, edição e exclusão de veículos
- Layout responsivo básico
- Navegação entre páginas
- Estrutura pronta para expandir com novos modelos

## Como rodar

1. Instale as dependências:
   ```
   bundle install
   ```
2. Crie e migre o banco de dados:
   ```
   rails db:create db:migrate
   ```
3. Inicie o servidor:
   ```
   rails server
   ```
4. Acesse [http://localhost:3000](http://localhost:3000) no navegador.

## Referência

Este projeto segue o passo a passo do vídeo:  
[Curso Ruby on Rails - YouTube](https://www.youtube.com/watch?v=Ldvdovngwhs&list=PLiHiV4-yH6fe5D1z9jPEHyoQ7EHTpP1wl&index=1)
