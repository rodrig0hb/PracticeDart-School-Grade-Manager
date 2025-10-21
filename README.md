<h1>📚 Gerenciador de Notas Escolares (School Grade Manager)</h1>
<p><strong> Projeto de aprofundamento e aplicação de fundamentos de Dart. </strong></p>

<hr>

<h2>🌟 Visão Geral</h2>
<p>Este projeto é um <strong>Gerenciador de Notas Escolares</strong> desenvolvido em <strong>Dart</strong>, rodando via terminal. Ele começou como um exercício simples no curso <em>Dart: trabalhando com sintaxe e configuração de projetos</em> da <strong>Alura</strong>, focado em praticar fundamentos.</p>

<p>Minha contribuição transformou o projeto de uma aplicação simples que apenas registrava notas textuais em uma ferramenta de utilidade real, capaz de gerenciar múltiplos alunos e suas respectivas coleções de notas decimais. É um exemplo prático da evolução do aprendizado, passando de conceitos básicos para uma aplicação mais robusta, na qual adicionei as principais funcionalidades, como adicionar notas a um aluno e calcular média.</p>

<h2>✨ Funcionalidades Principais</h2>
<p>O gerenciador oferece um <strong>menu interativo</strong> e as seguintes funcionalidades, todas construídas com foco na <strong>segurança e comunicação</strong> com o usuário:</p>
    
* ➕ <strong>Adicionar Aluno e Notas:</strong> Permite registrar um novo aluno e adicionar uma lista variável de notas.
* 📊 <strong>Calcular Média:</strong> Gera a média aritmética das notas de um aluno específico.
* 📝 <strong>Listar Notas:</strong> Exibe todos os alunos registrados e suas notas.
* 🔄 <strong>Reiniciar Notas:</strong> Limpa o histórico de notas de um aluno, sem removê-lo do sistema.
* <strong>Exit:</strong> Sai do programa e reinicia a lista dos alunos.

<hr>

<h2>💻 Tecnologias e Conceitos Aplicados</h2>
<p>Este projeto é um excelente <em>showcase</em> da aplicação dos seguintes conceitos de programação e da linguagem Dart:</p>

<h3>🎯 Fundamentos do Curso (Alura):</h3>

* <strong>Variáveis e Tipos:</strong> Uso correto de <code>String</code>, <code>double</code> e <code>List</code>.
* <strong>Controle de Fluxo:</strong> Utilização de <code>if-else</code> e <code>switch-case</code> para tomada de decisões.
* <strong>Estruturas de Repetição:</strong> Aplicação de <code>while</code> e <code>for</code> para processamento de listas de notas.
* <strong>Tratamento de <em>Input</em>:</strong> Captura de dados do terminal (<code>stdin.readLineSync()</code>) com proteção contra valores <code>null</code>.
<br>

<h3>🚀 Melhorias e Aprofundamentos (Desenvolvimento Autodidata):</h3>
<br>

* 🚫 <strong>Tratamento de Erros Robusto:</strong> Validação de <em>inputs</em> nulos, vazios ou não numéricos em todas as funções, utilizando recursão para forçar uma nova tentativa de comando em caso de erro.
* <strong>Interface Comunicativa:</strong> Mensagens de sucesso, erro e <em>prompts</em> claros para guiar o usuário.
* <strong>Estruturas de Dados Avançadas:</strong> Utilização do <code>Map&lt;String, List&lt;double&gt;&gt;</code> para criar uma coleção de alunos e notas, onde o <strong>nome do aluno é a chave</strong> e suas <strong>notas são os valores</strong> (estrutura chave-valor).
* <strong>Recursão para UX:</strong> Uso de <strong>recursão</strong> dentro das funções de validação (<code>getComando</code>, <code>adicionarNota</code>, etc.) para garantir que o usuário <strong>insira um valor válido</strong> antes de prosseguir, melhorando a experiência no terminal.
* <strong>Menu Avançado:</strong> Implementação de um menu estilizado usando <em>triplas aspas simples</em> (<code>'''</code>) e a função <code>switch-case</code> para navegação.
* <strong>Gerenciamento de Estado:</strong> Lógica para adicionar notas a alunos <strong>existentes</strong> (<code>alunos.containsKey</code>) ou criar novos, mantendo o estado do sistema.
* <strong>Métodos de Coleção:</strong> Uso do método <code>forEach</code> para iteração simples e elegante na função <code>listarNotas()</code>.
<br>

<hr>

<h2>🛠️ Como Executar</h2>
<p>Para rodar este projeto em sua máquina, você precisará ter o <strong>SDK do Dart</strong> instalado. E executá-lo no terminal com <code>dart run</code></p>
<br>
<hr>

<h2>📂 Estrutura do Repositório</h2>
<p>O projeto segue a estrutura padrão de projetos Dart:</p>
<table>
<thead>
<tr>
<th>Arquivo/Pasta</th>
<th>Propósito</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>bin/notas.dart</code></td>
                <td>Código principal do gerenciador, contém a função <code>main()</code> e todas as funcionalidades chamadas pela função menu.</td>
            </tr>
            <tr>
                <td><code>lib/</code></td>
                <td>Pasta reservada para bibliotecas e módulos futuros (atualmente não em uso).</td>
            </tr>
            <tr>
                <td><code>test/</code></td>
                <td>Arquivos de teste (<code>notas_test.dart</code>).</td>
            </tr>
            <tr>
                <td><code>pubspec.yaml</code></td>
                <td>Metadados e dependências do projeto Dart.</td>
            </tr>
            <tr>
                <td><code>CHANGELOG.md</code></td>
                <td>Histórico de versões e mudanças.</td>
            </tr>
        </tbody>
    </table>
