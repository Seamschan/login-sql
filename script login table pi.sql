use cadastro;
-- criando a tabela de usuarios/cadastro
CREATE TABLE usuarios (
    id int AUTO_INCREMENT PRIMARY key,
    nome varchar(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha varchar(200) NOT NULL,
    data_criação TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- timestamp para setar tempo em horas corridas desde de a criação da senha 
-- inserindo alguns valores para testar a funcionalidade
INSERT into usuarios (nome, email, senha)
VALUE ('Paulo cezar', 'paulinholoko@outlook.com', SHA2('senhazuda', 256));
-- usar para verificar dados(nao roubar dados)
SELECT id, nome, email, data_criação FROM usuarios;
-- comando para validar( e também testar se essa porra funcionou)
SELECT * FROM usuarios
WHERE email = 'paulinholoko@outlook.com' AND senha = SHA2('senhazuda', 256);
-- vai se fude eu (não)amo a escola!