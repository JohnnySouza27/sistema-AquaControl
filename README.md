# 💧 AquaControl - Sistema de Monitoramento e Racionamento de Água

## 📌 Descrição do Projeto
O **AquaControl** é um sistema de banco de dados relacional desenvolvido para monitorar e controlar o consumo de água em períodos de escassez.  
Seu objetivo é garantir uma distribuição justa e eficiente, atendendo companhias de abastecimento, órgãos públicos e moradores de regiões afetadas.

---

## 🗂️ Estrutura do Banco de Dados
O modelo lógico foi normalizado até a **3FN** e contém as seguintes entidades:

- **Usuario**: id_usuario (PK), nome, cpf, endereco, tipo_usuario  
- **ResidenciaEmpresa**: id_residencia (PK), endereco, tipo, id_usuario (FK)  
- **Medidor**: id_medidor (PK), numero_serie, id_residencia (FK)  
- **RegraRacionamento**: id_regra (PK), limite_diario, horario_inicio, horario_fim  
- **Consumo**: id_consumo (PK), data, litros_consumidos, id_medidor (FK), id_regra (FK)  
- **Notificacao**: id_notificacao (PK), data_envio, mensagem, id_usuario (FK)  
- **Relatorio**: id_relatorio (PK), periodo, id_regra (FK), id_usuario (FK)  

---

## ⚙️ Tecnologias Utilizadas
- **MySQL** (Workbench ou servidor local)  
- **SQL DDL/DML** para criação e manipulação de dados  
- **Versionamento**: Git/GitHub para compartilhamento do código  

---

## 🖼️ Imagens do Projeto
<img width="569" height="272" alt="Captura de tela 2025-12-01 212009" src="https://github.com/user-attachments/assets/fa8cb1e9-7832-4c19-90b8-63c77d1b3328" />
<img width="493" height="272" alt="Captura de tela 2025-12-01 212136" src="https://github.com/user-attachments/assets/3cf03519-31e0-41ad-8cae-593558c7b908" />
<img width="439" height="263" alt="Captura de tela 2025-12-01 212214" src="https://github.com/user-attachments/assets/4479dc31-81d6-44ae-aa5d-e729960b6b35" />

---

## 🚀 Como Executar
1. Clone este repositório:
   ```bash
   git clone https://github.com/seuusuario/aquacontrol.git

---

Abra o MySQL Workbench ou outro cliente SQL.

Execute o script aquacontrol.sql para criar o banco e as tabelas.

Insira os dados iniciais com os comandos INSERT.

Teste o banco com consultas SELECT, atualizações UPDATE e exclusões DELETE.

---
Faça esse promt para ter um destaque nos ids FK e PK, e que tenha cores Azuies nos titulos, e coloca a parte de ser horizontal
Perfeito, David! Aqui está o prompt revisado para você gerar o DER da atividade 3 com todos os detalhes que pediu: destaque visual para PK e FK, títulos em azul, e o diagrama em formato horizontal para facilitar a leitura:

🎨 Prompt para gerar o DER revisado do sistema AquaControl:

Crie um Diagrama Entidade-Relacionamento (DER) revisado e normalizado até a 3FN para um sistema de monitoramento e racionamento de água chamado "AquaControl". O diagrama deve conter as seguintes entidades, atributos, tipos de dados e relacionamentos, com destaque visual para chaves primárias (PK) e estrangeiras (FK):

Entidades e atributos (com PK/FK destacados):

USUÁRIO (título em azul): id_usuario (PK, Integer), nome (Varchar), cpf (Varchar), endereço (Varchar), tipo_usuario (Varchar)

RESIDÊNCIAEMPRESA (título em azul): id_residencia (PK, Integer), endereço (Varchar), tipo (Varchar), id_usuario (FK, Integer)

MEDIDOR (título em azul): id_medidor (PK, Integer), numero_serie (Varchar), id_residencia (FK, Integer)

CONSUMO (título em azul): id_consumo (PK, Integer), data (Date), litros_consumidos (Decimal), id_medidor (FK, Integer), id_regra (FK, Integer)

REGRARACIONAMENTO (título em azul): id_regra (PK, Integer), limite_diario (Decimal), horario_inicio (Time), horario_fim (Time)

NOTIFICAÇÃO (título em azul): id_notificacao (PK, Integer), data_envio (Date), mensagem (Varchar), id_usuario (FK, Integer)

RELATÓRIO (título em azul): id_relatorio (PK, Integer), periodo (Varchar), id_regra (FK, Integer), id_usuario (FK, Integer)

Relacionamentos e cardinalidades:

Um USUÁRIO pode ter várias RESIDÊNCIASEMPRESAS (1:N)

Cada RESIDÊNCIAEMPRESA possui um MEDIDOR exclusivo (1:1)

Um MEDIDOR registra vários CONSUMOS (1:N)

Cada CONSUMO está vinculado a uma REGRARACIONAMENTO (N:1)

Um USUÁRIO pode receber várias NOTIFICAÇÕES (1:N)

Um USUÁRIO pode gerar vários RELATÓRIOS (1:N)

Estilo visual:

Entidades em retângulos com títulos em azul.

PK e FK destacados em negrito ou com ícones visuais diferenciados.

Linhas de relacionamento com cardinalidades visíveis (1:N, N:1, 1:1).

Layout em formato horizontal para facilitar leitura e impressão.

Estilo técnico limpo e organizado, com foco em clareza acadêmica.

✨ Esse prompt já está pronto para você usar em uma IA de geração de diagramas/imagens. Ele garante que o resultado terá cores azuis nos títulos, PK/FK destacados, e será horizontal.

Quer que eu já gere esse DER para você com esse prompt, para você inserir direto no documento da atividade 3?

RESIDÊNCIAEMPRESA, MEDIDOR, CONSUMO. Faça essa parte do 1FN
Ótimo, David! Vamos preencher a parte da Primeira Forma Normal (1FN) para as três entidades que você citou: RESIDÊNCIAEMPRESA, MEDIDOR e CONSUMO.

🏠 Entidade / Tabela: RESIDÊNCIAEMPRESA
Afirmação	Atende	Atende Parcialmente	Não Atende
1	Cada célula contém apenas um único valor (valor atômico).	✅		
2	Não possui colunas com listas, arrays ou conjuntos de valores.	✅		
3	Não há grupos de colunas repetidas para itens semelhantes.	✅		
4	Cada linha é única e identificada por chave primária.	✅		
5	Valores em cada coluna são todos do mesmo tipo de dado.	✅		
6	Não é necessário decompor dados de nenhuma coluna.	⚠️		(se “endereço” armazenar rua+número+cidade juntos, pode ser problema)
7	Ordem das linhas não afeta interpretação dos dados.	✅		
8	Ordem das colunas não altera significado dos dados.	✅		
9	Chave primária claramente definida (id_residencia).	✅		
10	Estrutura evita consultas complexas para extrair dados.	✅		
🔧 Entidade / Tabela: MEDIDOR
Afirmação	Atende	Atende Parcialmente	Não Atende
1	Cada célula contém apenas um único valor (valor atômico).	✅		
2	Não possui colunas com listas, arrays ou conjuntos de valores.	✅		
3	Não há grupos de colunas repetidas para itens semelhantes.	✅		
4	Cada linha é única e identificada por chave primária.	✅		
5	Valores em cada coluna são todos do mesmo tipo de dado.	✅		
6	Não é necessário decompor dados de nenhuma coluna.	✅		
7	Ordem das linhas não afeta interpretação dos dados.	✅		
8	Ordem das colunas não altera significado dos dados.	✅		
9	Chave primária claramente definida (id_medidor).	✅		
10	Estrutura evita consultas complexas para extrair dados.	✅		
💧 Entidade / Tabela: CONSUMO
Afirmação	Atende	Atende Parcialmente	Não Atende
1	Cada célula contém apenas um único valor (valor atômico).	✅		
2	Não possui colunas com listas, arrays ou conjuntos de valores.	✅		
3	Não há grupos de colunas repetidas para itens semelhantes.	✅		
4	Cada linha é única e identificada por chave primária.	✅		
5	Valores em cada coluna são todos do mesmo tipo de dado.	✅		
6	Não é necessário decompor dados de nenhuma coluna.	✅		
7	Ordem das linhas não afeta interpretação dos dados.	✅		
8	Ordem das colunas não altera significado dos dados.	✅		
9	Chave primária claramente definida (id_consumo).	✅		
10	Estrutura evita consultas complexas para extrair dados.	✅		
👉 Assim você já tem a análise da 1FN para essas três entidades. Quer que eu avance e faça também a parte da 2FN para essas mesmas tabelas, para deixar pronto o próximo passo da atividade?

sim
Ótimo, David! Vamos preencher a Segunda Forma Normal (2FN) para as três entidades que você pediu: RESIDÊNCIAEMPRESA, MEDIDOR e CONSUMO.

🏠 Entidade / Tabela: RESIDÊNCIAEMPRESA
Afirmação	Atende	Atende Parcialmente	Não Atende	N/A
1	Está em conformidade com a 1FN.	✅			
2	Se possui chave primária simples, atende automaticamente à 2FN.	✅			
3	Possui chave primária composta.				✅
4	Todos os atributos não-chave dependem da chave primária em sua totalidade.	✅			
5	Não existem colunas que dependam de apenas parte da chave primária.	✅			
6	Se coluna não-chave fosse movida para outra tabela, não haveria perda de informação.	✅			
7	Não há redundância causada por dependência parcial.	✅			
8	Todas as colunas não-chave descrevem o objeto identificado pela chave primária.	✅			
9	Remoção da chave quebraria dependência funcional de atributos não-chave.	✅			
10	Estrutura evita anomalias de atualização/inserção/exclusão por dependência parcial.	✅			
🔧 Entidade / Tabela: MEDIDOR
Afirmação	Atende	Atende Parcialmente	Não Atende	N/A
1	Está em conformidade com a 1FN.	✅			
2	Se possui chave primária simples, atende automaticamente à 2FN.	✅			
3	Possui chave primária composta.				✅
4	Todos os atributos não-chave dependem da chave primária em sua totalidade.	✅			
5	Não existem colunas que dependam de apenas parte da chave primária.	✅			
6	Se coluna não-chave fosse movida para outra tabela, não haveria perda de informação.	✅			
7	Não há redundância causada por dependência parcial.	✅			
8	Todas as colunas não-chave descrevem o objeto identificado pela chave primária.	✅			
9	Remoção da chave quebraria dependência funcional de atributos não-chave.	✅			
10	Estrutura evita anomalias de atualização/inserção/exclusão por dependência parcial.	✅			
💧 Entidade / Tabela: CONSUMO
Afirmação	Atende	Atende Parcialmente	Não Atende	N/A
1	Está em conformidade com a 1FN.	✅			
2	Se possui chave primária simples, atende automaticamente à 2FN.	✅			
3	Possui chave primária composta.				✅
4	Todos os atributos não-chave dependem da chave primária em sua totalidade.	✅			
5	Não existem colunas que dependam de apenas parte da chave primária.	✅			
6	Se coluna não-chave fosse movida para outra tabela, não haveria perda de informação.	✅			
7	Não há redundância causada por dependência parcial.	✅			
8	Todas as colunas não-chave descrevem o objeto identificado pela chave primária.	✅			
9	Remoção da chave quebraria dependência funcional de atributos não-chave.	✅			
10	Estrutura evita anomalias de atualização/inserção/exclusão por dependência parcial.	✅			
✨ Assim você já tem a análise da 2FN para essas três entidades. Quer que eu avance e faça também a parte da 3FN para RESIDÊNCIAEMPRESA, MEDIDOR e CONSUMO, para deixar o documento totalmente pronto?

Sim
Perfeito, David! Vamos finalizar a análise da Terceira Forma Normal (3FN) para as três entidades que você pediu: RESIDÊNCIAEMPRESA, MEDIDOR e CONSUMO.

🏠 Entidade / Tabela: RESIDÊNCIAEMPRESA
Afirmação	Atende	Atende Parcialmente	Não Atende
1	A tabela já atende plenamente à 2FN.	✅		
2	Nenhum atributo não-chave depende de outro atributo não-chave.	✅		
3	Não existem dependências transitivas.	✅		
4	Todas as colunas dependem exclusivamente da chave primária.	✅		
5	Não há colunas que sejam atributos de outras colunas não-chave.	✅		
6	Alterar um atributo não exige alterar outro atributo não-chave.	✅		
7	Cada coluna não-chave depende apenas da chave primária.	✅		
8	Estrutura evita redundância de dados por dependência entre não-chaves.	✅		
9	Inserção de dado não depende de outro atributo não-chave.	✅		
10	Estrutura evita anomalias de atualização/inserção/exclusão por dependência entre atributos não-chave.	✅		
🔧 Entidade / Tabela: MEDIDOR
Afirmação	Atende	Atende Parcialmente	Não Atende
1	A tabela já atende plenamente à 2FN.	✅		
2	Nenhum atributo não-chave depende de outro atributo não-chave.	✅		
3	Não existem dependências transitivas.	✅		
4	Todas as colunas dependem exclusivamente da chave primária.	✅		
5	Não há colunas que sejam atributos de outras colunas não-chave.	✅		
6	Alterar um atributo não exige alterar outro atributo não-chave.	✅		
7	Cada coluna não-chave depende apenas da chave primária.	✅		
8	Estrutura evita redundância de dados por dependência entre não-chaves.	✅		
9	Inserção de dado não depende de outro atributo não-chave.	✅		
10	Estrutura evita anomalias de atualização/inserção/exclusão por dependência entre atributos não-chave.	✅		
💧 Entidade / Tabela: CONSUMO
Afirmação	Atende	Atende Parcialmente	Não Atende
1	A tabela já atende plenamente à 2FN.	✅		
2	Nenhum atributo não-chave depende de outro atributo não-chave.	✅		
3	Não existem dependências transitivas.	✅		
4	Todas as colunas dependem exclusivamente da chave primária.	✅		
5	Não há colunas que sejam atributos de outras colunas não-chave.	✅		
6	Alterar um atributo não exige alterar outro atributo não-chave.	✅		
7	Cada coluna não-chave depende apenas da chave primária.	✅		
8	Estrutura evita redundância de dados por dependência entre não-chaves.	✅		
9	Inserção de dado não depende de outro atributo não-chave.	✅		
10	Estrutura evita anomalias de atualização/inserção/exclusão por dependência entre atributos não-chave.	✅		
✨ Agora você tem a análise completa da 1FN, 2FN e 3FN para as três entidades principais. Isso fecha a parte de normalização da atividade 3.

Quer que eu monte também o quadro comparativo entre o DER original e o modelo lógico final (com as normalizações aplicadas), para deixar o documento pronto para entrega?

Experiência Prática 3 – Sistema de Monitoramento e Racionamento de Água AquaContro.pdf

PDF

FIcou bom?
Sim, David, ficou muito bom! ✅

O documento da Experiência Prática 3 está completo e atende ao que a atividade pede:

Você fez a verificação da 1FN, 2FN e 3FN para várias entidades, mostrando que cada tabela foi analisada passo a passo.

As tabelas estão bem estruturadas, com as marcações de “Atende” preenchidas corretamente.

O DER revisado aparece com as entidades, atributos, tipos de dados e chaves PK/FK destacados.

O quadro comparativo entre o DER original e o modelo lógico final mostra claramente a evolução do projeto.

As considerações de integridade e normalização estão bem explicadas, reforçando que redundâncias foram eliminadas e regras de integridade aplicadas.

📌 Se quiser deixar ainda mais profissional para entrega:

Revisar pequenos detalhes de formatação (como quebras de linha ou palavras cortadas, ex.: “ende- reço” → “endereço”).

Adicionar uma capa simples com título, seu nome, disciplina e professor.

Mas em termos de conteúdo acadêmico, está pronto para ser entregue. 👏

Quer que eu te ajude a preparar uma conclusão final curta para fechar o documento com chave de ouro?

Irei mandar a 4 atividade, ela vai ser em código MySQL
Perfeito, David! 🚀 A quarta atividade vai ser a parte prática de implementação em MySQL, ou seja, transformar o modelo lógico que você já construiu (na atividade 3) em código SQL para criar as tabelas com suas chaves primárias e estrangeiras, aplicando integridade referencial.

Normalmente, essa etapa pede:

Criação das tabelas (CREATE TABLE) com todos os atributos, tipos de dados e restrições.

Definição das chaves primárias (PK) e estrangeiras (FK).

Aplicação de regras de integridade (NOT NULL, UNIQUE, CHECK, etc.).

Inserção de alguns dados de exemplo (INSERT INTO) para validar.

Consultas SQL (SELECT) para demonstrar funcionamento.

📌 Exemplo inicial para o seu projeto AquaControl:

sql
CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    tipo_usuario VARCHAR(20) NOT NULL
);

CREATE TABLE ResidenciaEmpresa (
    id_residencia INT PRIMARY KEY,
    endereco VARCHAR(200) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Medidor (
    id_medidor INT PRIMARY KEY,
    numero_serie VARCHAR(50) NOT NULL,
    id_residencia INT,
    FOREIGN KEY (id_residencia) REFERENCES ResidenciaEmpresa(id_residencia)
);

CREATE TABLE RegraRacionamento (
    id_regra INT PRIMARY KEY,
    limite_diario DECIMAL(10,2) NOT NULL,
    horario_inicio TIME NOT NULL,
    horario_fim TIME NOT NULL
);

CREATE TABLE Consumo (
    id_consumo INT PRIMARY KEY,
    data DATE NOT NULL,
    litros_consumidos DECIMAL(10,2) NOT NULL,
    id_medidor INT,
    id_regra INT,
    FOREIGN KEY (id_medidor) REFERENCES Medidor(id_medidor),
    FOREIGN KEY (id_regra) REFERENCES RegraRacionamento(id_regra)
);

CREATE TABLE Notificacao (
    id_notificacao INT PRIMARY KEY,
    data_envio DATE NOT NULL,
    mensagem VARCHAR(255) NOT NULL,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Relatorio (
    id_relatorio INT PRIMARY KEY,
    periodo VARCHAR(50) NOT NULL,
    id_regra INT,
    id_usuario INT,
    FOREIGN KEY (id_regra) REFERENCES RegraRacionamento(id_regra),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);
👉 Quando você mandar os detalhes da atividade 4, eu posso ajustar esse código para exatamente o que o professor pediu (se for só criação de tabelas, ou também inserções e consultas).

Quer que eu já prepare também alguns inserts de exemplo e consultas SQL para testar o banco?

💻 Criação e Manipulação de Dados com SQL em Projeto Real (Mini-mundo) Implementar e manipular dados em um banco de dados relacional utilizando comandos da linguagem SQL (DML), aplicando os conceitos de tipos de dados e ferramentas de desenvolvimento, integrando o modelo lógico anteriormente criado com práticas de versionamento e compartilhamento de código. Taxonomia de Bloom Aplicar: executar comandos SQL para manipulação de dados reais; Criar: desenvolver scripts SQL completos e bem estruturados para um banco de dados funcional. Taxonomia de Fink Aplicação: utilizar ferramentas reais (Workbench ou PGAdmin) para criação e testes dos scripts; Integração: combinar conhecimentos de modelagem lógica, normalização e integridade com o uso da DML; Aprendendo a aprender: lidar com erros de sintaxe, compreender mensagens do sistema e buscar soluções técnicas por conta própria. 📌 | Fundamentos e Preparação do Ambiente Compreender a diferença entre linguagem SQL e linguagens de programação, configurar o ambiente de desenvolvimento (Workbench ou PGAdmin) e revisar os tipos de dados do projeto. Elaborar e executar comandos de inserção de dados (INSERT) e consulta (SELECT) no banco de dados do projeto, garantindo coerência com o modelo lógico e os tipos de dados. Aprofundar o uso da DML com comandos de UPDATE e DELETE, garantindo a integridade dos dados e respeitando as restrições impostas pelas chaves e relacionamentos.
Excelente, David! 🚀 Agora na Experiência Prática 4 você vai transformar o modelo lógico do AquaControl em scripts SQL completos, aplicando comandos de DML (INSERT, SELECT, UPDATE, DELETE). Vou te preparar um roteiro pronto para você usar no MySQL Workbench ou PGAdmin:

🗂️ Estrutura do Banco de Dados (já criada na atividade 3)
As tabelas principais são:

Usuario

ResidenciaEmpresa

Medidor

Consumo

RegraRacionamento

Notificacao

Relatorio

📌 Inserção de Dados (INSERT)
sql
-- Inserindo usuários
INSERT INTO Usuario (id_usuario, nome, cpf, endereco, tipo_usuario)
VALUES (1, 'Maria Silva', '12345678901', 'Rua das Flores, 100', 'morador'),
       (2, 'João Souza', '98765432100', 'Av. Central, 200', 'empresa');

-- Inserindo residências/empresas
INSERT INTO ResidenciaEmpresa (id_residencia, endereco, tipo, id_usuario)
VALUES (1, 'Rua das Flores, 100', 'residencia', 1),
       (2, 'Av. Central, 200', 'empresa', 2);

-- Inserindo medidores
INSERT INTO Medidor (id_medidor, numero_serie, id_residencia)
VALUES (1, 'MD-001', 1),
       (2, 'MD-002', 2);

-- Inserindo regras de racionamento
INSERT INTO RegraRacionamento (id_regra, limite_diario, horario_inicio, horario_fim)
VALUES (1, 500.00, '06:00:00', '22:00:00');

-- Inserindo consumos
INSERT INTO Consumo (id_consumo, data, litros_consumidos, id_medidor, id_regra)
VALUES (1, '2025-12-01', 120.50, 1, 1),
       (2, '2025-12-01', 300.00, 2, 1);

-- Inserindo notificações
INSERT INTO Notificacao (id_notificacao, data_envio, mensagem, id_usuario)
VALUES (1, '2025-12-01', 'Consumo acima do limite diário!', 1);

-- Inserindo relatórios
INSERT INTO Relatorio (id_relatorio, periodo, id_regra, id_usuario)
VALUES (1, 'Dezembro/2025', 1, 2);
📌 Consultas (SELECT)
sql
-- Listar todos os usuários
SELECT * FROM Usuario;

-- Mostrar consumo por residência
SELECT u.nome, r.endereco, c.data, c.litros_consumidos
FROM Consumo c
JOIN Medidor m ON c.id_medidor = m.id_medidor
JOIN ResidenciaEmpresa r ON m.id_residencia = r.id_residencia
JOIN Usuario u ON r.id_usuario = u.id_usuario;

-- Relatórios gerados por cada usuário
SELECT u.nome, rel.periodo, rr.limite_diario
FROM Relatorio rel
JOIN Usuario u ON rel.id_usuario = u.id_usuario
JOIN RegraRacionamento rr ON rel.id_regra = rr.id_regra;
📌 Atualização de Dados (UPDATE)
sql
-- Atualizar endereço de um usuário
UPDATE Usuario
SET endereco = 'Rua das Palmeiras, 150'
WHERE id_usuario = 1;

-- Atualizar limite diário de regra de racionamento
UPDATE RegraRacionamento
SET limite_diario = 400.00
WHERE id_regra = 1;
📌 Exclusão de Dados (DELETE)
sql
-- Excluir uma notificação
DELETE FROM Notificacao
WHERE id_notificacao = 1;

-- Excluir um consumo específico
DELETE FROM Consumo
WHERE id_consumo = 2;
✅ Com isso você cobre todos os pontos da atividade 4:

Criação do ambiente (já feito na atividade 3).

Inserção de dados reais (INSERT).

Consultas (SELECT).

Manipulação (UPDATE e DELETE).

Garantia de integridade pelas PK e FK.

👉 Quer que eu monte também um script único que já cria as tabelas e insere os dados iniciais, para você rodar direto no MySQL Workbench sem precisar separar em etapas?

Sim
Ótimo, David! Então aqui está um script único em MySQL que já cria todas as tabelas do projeto AquaControl, aplica as chaves primárias e estrangeiras, insere dados iniciais e faz consultas de teste. Assim você pode rodar direto no MySQL Workbench ou PGAdmin sem precisar separar em etapas:

sql
-- Criação do banco de dados
CREATE DATABASE AquaControl;
USE AquaControl;

-- Tabela Usuário
CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    tipo_usuario VARCHAR(20) NOT NULL
);

-- Tabela Residência/Empresa
CREATE TABLE ResidenciaEmpresa (
    id_residencia INT PRIMARY KEY,
    endereco VARCHAR(200) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

-- Tabela Medidor
CREATE TABLE Medidor (
    id_medidor INT PRIMARY KEY,
    numero_serie VARCHAR(50) NOT NULL,
    id_residencia INT,
    FOREIGN KEY (id_residencia) REFERENCES ResidenciaEmpresa(id_residencia)
);

-- Tabela Regra de Racionamento
CREATE TABLE RegraRacionamento (
    id_regra INT PRIMARY KEY,
    limite_diario DECIMAL(10,2) NOT NULL,
    horario_inicio TIME NOT NULL,
    horario_fim TIME NOT NULL
);

-- Tabela Consumo
CREATE TABLE Consumo (
    id_consumo INT PRIMARY KEY,
    data DATE NOT NULL,
    litros_consumidos DECIMAL(10,2) NOT NULL,
    id_medidor INT,
    id_regra INT,
    FOREIGN KEY (id_medidor) REFERENCES Medidor(id_medidor),
    FOREIGN KEY (id_regra) REFERENCES RegraRacionamento(id_regra)
);

-- Tabela Notificação
CREATE TABLE Notificacao (
    id_notificacao INT PRIMARY KEY,
    data_envio DATE NOT NULL,
    mensagem VARCHAR(255) NOT NULL,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

-- Tabela Relatório
CREATE TABLE Relatorio (
    id_relatorio INT PRIMARY KEY,
    periodo VARCHAR(50) NOT NULL,
    id_regra INT,
    id_usuario INT,
    FOREIGN KEY (id_regra) REFERENCES RegraRacionamento(id_regra),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

-- Inserção de dados iniciais
INSERT INTO Usuario VALUES
(1, 'Maria Silva', '12345678901', 'Rua das Flores, 100', 'morador'),
(2, 'João Souza', '98765432100', 'Av. Central, 200', 'empresa');

INSERT INTO ResidenciaEmpresa VALUES
(1, 'Rua das Flores, 100', 'residencia', 1),
(2, 'Av. Central, 200', 'empresa', 2);

INSERT INTO Medidor VALUES
(1, 'MD-001', 1),
(2, 'MD-002', 2);

INSERT INTO RegraRacionamento VALUES
(1, 500.00, '06:00:00', '22:00:00');

INSERT INTO Consumo VALUES
(1, '2025-12-01', 120.50, 1, 1),
(2, '2025-12-01', 300.00, 2, 1);

INSERT INTO Notificacao VALUES
(1, '2025-12-01', 'Consumo acima do limite diário!', 1);

INSERT INTO Relatorio VALUES
(1, 'Dezembro/2025', 1, 2);

-- Consultas de teste
-- Listar todos os usuários
SELECT * FROM Usuario;

-- Mostrar consumo por residência
SELECT u.nome, r.endereco, c.data, c.litros_consumidos
FROM Consumo c
JOIN Medidor m ON c.id_medidor = m.id_medidor
JOIN ResidenciaEmpresa r ON m.id_residencia = r.id_residencia
JOIN Usuario u ON r.id_usuario = u.id_usuario;

-- Relatórios gerados por cada usuário
SELECT u.nome, rel.periodo, rr.limite_diario
FROM Relatorio rel
JOIN Usuario u ON rel.id_usuario = u.id_usuario
JOIN RegraRacionamento rr ON rel.id_regra = rr.id_regra;

-- Atualização de dados
UPDATE Usuario
SET endereco = 'Rua das Palmeiras, 150'
WHERE id_usuario = 1;

-- Exclusão de dados
DELETE FROM Consumo WHERE id_consumo = 2;
✅ Esse script cobre DDL (criação das tabelas) e DML (inserção, consulta, atualização e exclusão). Assim você já tem um banco funcional para entregar e demonstrar.

Quer que eu prepare também alguns exemplos de consultas mais avançadas (como AVG, SUM, GROUP BY) para mostrar estatísticas de consumo de água? Isso pode valorizar ainda mais sua entrega.

Tem algum compilardor online para textar esse código?
Sim, David! Você pode testar seu código SQL em compiladores online que simulam o MySQL. Isso é ótimo para validar rapidamente seus scripts sem precisar instalar nada no computador.

🔧 Compiladores Online de SQL (MySQL)
OneCompiler – MySQL Online Editor Permite criar tabelas, inserir dados e rodar consultas MySQL direto no navegador. É bem simples: você cola seu script, clica em Run e já vê os resultados.

myCompiler – Editor SQL Online Suporta várias linguagens, incluindo SQL. Tem autocompletar e realce de sintaxe, o que ajuda bastante na escrita.

SQL Playground Um ambiente leve para praticar SQL com suporte a MySQL, PostgreSQL e SQLite. Ideal para treinar consultas.

📌 Dicas para testar seu script
Copie todo o código que te passei (com CREATE DATABASE, CREATE TABLE, INSERT, etc.).

Cole no editor online.

Execute em blocos: primeiro a criação das tabelas, depois os INSERT, e por fim os SELECT.

Se aparecer erro, verifique se o compilador suporta todos os tipos de dados (alguns limitam DECIMAL ou TIME).

✅ Assim você consegue validar seu projeto AquaControl sem precisar instalar o MySQL Workbench.

Quer que eu adapte o script para rodar direto no OneCompiler (que costuma ser o mais usado e tem algumas limitações de tipos)?

Access denied for user ''@'%' to database 'AquaControl'
Esse erro que você recebeu, “Access denied for user ''@'%' to database 'AquaControl'”, acontece porque o compilador online ou o servidor MySQL não reconheceu um usuário autenticado com permissão para acessar o banco.

👉 O que significa:

O usuário está vazio (''), ou seja, você não está logado com um usuário válido.

O host % indica que a conexão está vindo de qualquer lugar, mas sem credenciais.

O banco AquaControl existe, mas você não tem permissão para acessá-lo.

🔧 Como resolver
No MySQL Workbench ou localmente

Sempre conecte com um usuário válido, normalmente root ou outro que você criou.

Exemplo:

sql
CREATE DATABASE AquaControl;
USE AquaControl;
Isso só funciona se você estiver logado como root ou um usuário com privilégios.

Em compiladores online (como OneCompiler)

Muitos não permitem CREATE DATABASE ou USE.

Nesse caso, basta remover essas duas linhas e criar as tabelas diretamente:

sql
-- NÃO usar CREATE DATABASE / USE
CREATE TABLE Usuario (...);
CREATE TABLE ResidenciaEmpresa (...);
O compilador já cria um banco temporário para você.

Se for ambiente real (MySQL local)

Crie um usuário e dê permissão:

sql
CREATE USER 'david'@'localhost' IDENTIFIED BY 'senha123';
GRANT ALL PRIVILEGES ON AquaControl.* TO 'david'@'localhost';
FLUSH PRIVILEGES;
Depois conecte com esse usuário.

✅ Resumo: Se você está usando um compilador online, remova CREATE DATABASE e USE AquaControl. Se está no MySQL Workbench, conecte como root ou crie um usuário com permissão.

Quer que eu te adapte o script para rodar sem CREATE DATABASE e USE, pronto para colar no OneCompiler?

eu preciso de um readmi.md
Perfeito, David! Vou montar para você um README.md bem estruturado para documentar o projeto AquaControl. Esse arquivo serve como guia para quem for usar ou avaliar seu banco de dados, mostrando desde o propósito até como executar os scripts SQL.

Aqui está um modelo pronto:

markdown
# 💧 AquaControl - Sistema de Monitoramento e Racionamento de Água

## 📌 Descrição do Projeto
O **AquaControl** é um sistema de banco de dados relacional desenvolvido para monitorar e controlar o consumo de água em períodos de escassez.  
Seu objetivo é garantir uma distribuição justa e eficiente, atendendo companhias de abastecimento, órgãos públicos e moradores de regiões afetadas.

---

## 🗂️ Estrutura do Banco de Dados
O modelo lógico foi normalizado até a **3FN** e contém as seguintes entidades:

- **Usuario**: id_usuario (PK), nome, cpf, endereco, tipo_usuario  
- **ResidenciaEmpresa**: id_residencia (PK), endereco, tipo, id_usuario (FK)  
- **Medidor**: id_medidor (PK), numero_serie, id_residencia (FK)  
- **RegraRacionamento**: id_regra (PK), limite_diario, horario_inicio, horario_fim  
- **Consumo**: id_consumo (PK), data, litros_consumidos, id_medidor (FK), id_regra (FK)  
- **Notificacao**: id_notificacao (PK), data_envio, mensagem, id_usuario (FK)  
- **Relatorio**: id_relatorio (PK), periodo, id_regra (FK), id_usuario (FK)  

---

## ⚙️ Tecnologias Utilizadas
- **MySQL** (Workbench ou servidor local)  
- **SQL DDL/DML** para criação e manipulação de dados  
- **Versionamento**: Git/GitHub para compartilhamento do código  

---

## 🚀 Como Executar
1. Clone este repositório:
   ```bash
   git clone https://github.com/seuusuario/aquacontrol.git
Abra o MySQL Workbench ou outro cliente SQL.

Execute o script aquacontrol.sql para criar o banco e as tabelas.

Insira os dados iniciais com os comandos INSERT.

Teste o banco com consultas SELECT, atualizações UPDATE e exclusões DELETE.

---

📊 Exemplos de Consultas

-- Listar todos os usuários
SELECT * FROM Usuario;

-- Mostrar consumo por residência
SELECT u.nome, r.endereco, c.data, c.litros_consumidos
FROM Consumo c
JOIN Medidor m ON c.id_medidor = m.id_medidor
JOIN ResidenciaEmpresa r ON m.id_residencia = r.id_residencia
JOIN Usuario u ON r.id_usuario = u.id_usuario;

-- Relatórios gerados por cada usuário
SELECT u.nome, rel.periodo, rr.limite_diario
FROM Relatorio rel
JOIN Usuario u ON rel.id_usuario = u.id_usuario
JOIN RegraRacionamento rr ON rel.id_regra = rr.id_regra;

---

✅ Status do Projeto
** [x] Modelagem Conceitual (DER)

** [x] Normalização até 3FN

** [x] Implementação em MySQL (DDL/DML)

** [ ] Inserção de dados adicionais para testes

** [ ] Consultas avançadas com agregações (SUM, AVG, GROUP BY)

---

👨‍💻 Autor
Projeto desenvolvido por Johnny para a disciplina de Modelagem de Banco de Dados.
