# get_adivice

O get_advice é um aplicativo escrito em Dart e Flutter que permite ao usuário fazer consultas a uma API de conselhos (advice) de forma simples e intuitiva. O aplicativo utiliza a dependência `dio` do Flutter para fazer as requisições à API e conta com uma arquitetura bem definida, com os seguintes componentes:

1. **Repository:** Responsável por abstrair o acesso à API e fornecer os dados para o Use Case. Ele define a interface para a obtenção de conselhos (advice) da API.

2. **Model:** Representa o modelo de dados do conselho obtido da API. É uma classe que mapeia a estrutura do JSON retornado pela API para um objeto Dart.

3. **RepositoryImpl:** Implementação concreta da interface Repository. Nesta classe, a lógica de requisição e obtenção de dados da API é implementada usando a dependência `dio`.

4. **Entidade (Entity):** Representa o conselho (advice) na camada de domínio do aplicativo. É uma classe que representa a informação relevante do conselho e pode conter métodos para manipular esses dados, se necessário.

5. **UseCase:** Responsável por intermediar entre a camada de apresentação e o repositório, fornecendo os conselhos (advice) para serem exibidos na interface do usuário. Ele pode conter lógica adicional, se necessário, antes de apresentar os conselhos.

O fluxo geral do aplicativo é o seguinte:

1. O usuário inicia o aplicativo e é apresentado com uma tela onde pode solicitar um novo conselho.

2. Quando o usuário clica no botão "Obter Conselho", o UseCase é acionado.

3. O UseCase, por sua vez, solicita os dados ao Repository.

4. O RepositoryImpl faz a requisição à API de conselhos.

5. A API retorna um conselho no formato JSON.

6. O RepositoryImpl mapeia o JSON para um objeto Model.

7. O Model é utilizado para criar uma instância da Entidade com as informações do conselho.

8. O RepositoryImpl retorna a Entidade com o conselho para o UseCase.

9. O UseCase retorna o conselho para a camada de apresentação.

10. Uma dependência de tradução (translate) é acionada para traduzir o conselho.

11. O conselho traduzido é exibido na tela para o usuário.

O aplicativo oferece uma maneira simples e interativa para os usuários receberem conselhos de forma rápida.

## Dependências Externas

O MyFlutterAdviceApp faz uso de duas principais dependências externas:

1. **dio:** É utilizada para fazer as requisições à API de conselhos. Ela permite ao aplicativo se comunicar com o servidor e obter os dados necessários para exibir os conselhos.

2. **translate:** É utilizada para realizar a tradução dos conselhos, caso a API retorne conselhos em idiomas diferentes e o usuário deseje visualizá-los em sua língua nativa.

## Como Executar o Projeto

Para executar o projeto MyFlutterAdviceApp, você precisará ter o Flutter e o Dart SDK instalados em seu ambiente de desenvolvimento.

1. Clone este repositório em sua máquina local:

```
git clone https://github.com/DanrleiC/get_advice.git
```

2. Acesse o diretório do projeto:

```
cd get_advice
```

3. Instale as dependências necessárias:

```
flutter pub get
```

4. Conecte seu dispositivo Android ou iOS ao computador ou inicie um emulador.

5. Execute o aplicativo:

```
flutter run
```

Com isso, o get_advice será instalado e executado em seu dispositivo/emulador Android ou iOS.

Aproveite os conselhos e divirta-se com o aplicativo!

**Observação:** Lembre-se de que o aplicativo dependerá da disponibilidade da API de conselhos para funcionar corretamente. Verifique se a API está online e acessível para que o aplicativo possa obter os conselhos adequadamente.
