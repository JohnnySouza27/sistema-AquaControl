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