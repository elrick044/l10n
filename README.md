# L10n: Um Exemplo de Localização em Flutter

Este projeto é um aplicativo de exemplo Flutter que demonstra como implementar a internacionalização e localização (i18n e l10n) usando o pacote `intl` e os recursos de localização nativos do Flutter. Ele oferece suporte a múltiplos idiomas e formatação de dados específicos de cada localidade.

---

## Recursos

* **Suporte a múltiplos idiomas:** Alterne entre inglês, espanhol e português.
* **Localização de strings:** Demonstração de strings localizadas usando `AppLocalizations`.
* **Plurals e gêneros:** Exemplos de como lidar com pluralização e gênero em diferentes idiomas.
* **Formatação de data e moeda:** Utiliza o pacote `intl` para formatar datas e valores monetários de acordo com o `locale` selecionado.
* **Troca de idioma em tempo de execução:** Permite que o usuário mude o idioma do aplicativo dinamicamente.

---

## Começando

Estas instruções ajudarão você a obter uma cópia do projeto em execução em sua máquina local para fins de desenvolvimento e teste.

### Pré-requisitos

Certifique-se de ter o Flutter SDK instalado e configurado em sua máquina. Para mais informações, consulte a [documentação oficial do Flutter](https://flutter.dev/docs/get-started/install).

### Instalação

1.  **Clone o repositório:**
    ```bash
    git clone https://github.com/elrick044/l10n
    cd l10n
    ```
2.  **Instale as dependências:**
    ```bash
    flutter pub get
    ```
3.  **Gere os arquivos de localização:**
    Este projeto usa a geração automática de arquivos de localização. Se você alterar as definições de localização (`.arb` files), você precisará executar:
    ```bash
    flutter gen-l10n
    ```
    Este comando é ativado pela linha `generate: true` no seu `pubspec.yaml`.

---

## Executando o Aplicativo

Para executar o aplicativo em um dispositivo ou emulador:

```bash
flutter run
```
---

## Estrutura do Projeto

* `lib/main.dart`: O ponto de entrada principal do aplicativo, configurando os delegados de localização e os idiomas suportados.
* `lib/l10n/app_localizations.dart`: Arquivo gerado que contém as classes de localização.
* `lib/l10n/*.arb`: Arquivos ARB (Application Resource Bundle) que contêm as traduções para cada idioma.

---

## Como Contribuir

Se você quiser contribuir com este projeto, sinta-se à vontade para abrir um *issue* ou enviar um *pull request*.

---

## Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE](LICENSE) para detalhes.

---

## Dúvidas ou Sugestões?

Se você tiver alguma dúvida ou sugestão, por favor, abra um *issue* no repositório do GitHub.