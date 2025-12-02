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
     
2. Abra o MySQL Workbench ou outro cliente SQL.

3. Execute o script aquacontrol.sql para criar o banco e as tabelas.

4. Insira os dados iniciais com os comandos INSERT.

5. Teste o banco com consultas SELECT, atualizações UPDATE e exclusões DELETE.     

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

- ** [x] Modelagem Conceitual (DER)

- ** [x] Normalização até 3FN

- ** [x] Implementação em MySQL (DDL/DML)

- ** [ ] Inserção de dados adicionais para testes

- ** [ ] Consultas avançadas com agregações (SUM, AVG, GROUP BY)
