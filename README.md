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

---
