## Repositório Git ##
 
O Git é um conceito essencial no mercado de trabalho atualmente, por isso sempre reforçamos sua importância em nossa metodologia educacional. 
Por isso, todo código-fonte desenvolvido durante este conteúdo foi versionado no seguinte endereço para que você possa consultá-lo a qualquer momento: https://github.com/digitalinnovationone/workout_api 
 
## Instruções ##
 
- adicionar query parameters nos endpoints
      - atleta
            - nome
            - cpf
- customizar response de retorno de endpoints
      - get all
            - atleta
                  - nome
                  - centro_treinamento
                  - categoria
- Manipular exceção de integridade dos dados em cada módulo/tabela
      - sqlalchemy.exc.IntegrityError e devolver a seguinte mensagem: “Já existe um atleta cadastrado com o cpf: x”
      - status_code: 303
- Adicionar paginação utilizando a lib: fastapi-pagination
      - limit e offset
