FactoryBot.define do
    factory :product do
      trait :valid do
        title { "Bola" }
        description {"Bola da nike"}
        value {250}
        image {"bola.png"}
      end

      trait :invalid do
        title {}
        description {}
        value {}
        image {}
      end

      trait :invalidMin do
        title { "Bo" }
        description {"Bola da "}
        value {0}
        image {}
      end

      trait :invalidMax do
        title { "Bola de futebol branca e preta da nike com um título muito grande para testar a validação do número de caracteres presentes na string" }
        description {"Bola de futebol branca e preta da nike com um título muito grande para testar a validação do número de caracteres presentes na string
          Bola de futebol branca e preta da nike com um título muito grande para testar a validação do número de caracteres presentes na string
            Bola de futebol branca e preta da nike com um título muito grande para testar a validação do número de caracteres presentes na string
              Bola de futebol branca e preta da nike com um título muito grande para testar a validação do número de caracteres presentes na string"}
        value {0}
        image {}
      end

    end
  end
  