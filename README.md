
<!-- Improved compatibility of voltar ao início
 link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a id="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://upload.wikimedia.org/wikipedia/commons/e/e4/Robot-framework-logo.png">
    <img src="https://upload.wikimedia.org/wikipedia/commons/e/e4/Robot-framework-logo.png" alt="Logo" width="160" height="160">
  </a>

<h3 align="center">Automação de testes WEB com Robot Framework</h3>

  <p align="center">
   O projeto consiste em uma automação de testes Web utilizando o Robot Framework.
    <br />
  </p>
</div>



<!-- ABOUT THE PROJECT -->
## Sobre o projeto

A automação de testes é uma ferramenta valiosa para diversos sistemas de software, permitindo a execução eficiente de testes repetitivos e economizando tempo. Neste projeto, utilizaremos o Robot Framework para automatizar testes de API, aplicando essa abordagem na API viacep.


<p align="right">(<a href="#readme-top">voltar ao início</a>)</p>



<!-- GETTING STARTED -->
## Pré requisitos e instalação

Para execução do projeto pode ser seguido o passo a passo escrito abaixo.

### Pré requisitos

Será necesário a instalação das ferramentas abaixo para continuar. Informações de instalação podem ser encontradas no próprio site da ferramenta.
* Python 3 (>=3.8) para uso do Robot Framework;
* Java (>=8) para suprir dependência do Allure Report;
* Allure Report para gerar relatórios.

### Instalação

1. Clone o repositório
   ```sh
   git clone https://github.com/bruno25leo/repo_name.git
   ```
2. Instale as libs que serão utilizadas
   ```sh
   pip install -r requirements.txt
   ```

<p align="right">(<a href="#readme-top">voltar ao início</a>)</p>



<!-- USAGE EXAMPLES -->
## Execução

Execução dos testes:
   ```sh
   robot -d reports/ ./tests/address/check_address.robot
   ```

Geração de relatório Allure:
Os testes devem ser executados com um listener:
   ```sh
   robot --listener allure_robotframework -d reports tests/
   ```
Após esse comando, serão gerados os arquivos do Allure Report, e o seguinte comando deverá ser usado:
   ```sh
   allure serve ./output/allure/
   ```
Dessa forma é possível verificar detalhes dos testes que foram executados.

_Para mais exemplos de execução, segue o link da documentação do Robot Framework [Documentação](https://docs.robotframework.org/)_

<p align="right">(<a href="#readme-top">voltar ao início</a>)</p>


<!-- CONTACT -->
## Contato

Bruno Ribeiro - bruno25leo@gmail.com

Link do Projeto: [https://github.com/bruno25leo/robot-framework-api](https://github.com/bruno25leo/robot-framework-api)

<p align="right">(<a href="#readme-top">voltar ao início</a>)</p>
