INSERT INTO categoria (nome, ativo) VALUES ('Frutas', b'1');
INSERT INTO categoria (nome, ativo) VALUES ('Legumes', b'1');
INSERT INTO categoria (nome, ativo) VALUES ('Laticínios', b'1');
INSERT INTO categoria (nome, ativo) VALUES ('Bebidas', b'1');
INSERT INTO categoria (nome, ativo) VALUES ('Enlatados', b'0');
INSERT INTO categoria (nome, ativo) VALUES ('Doces e Confeitos', b'1');
INSERT INTO categoria (nome, ativo) VALUES ('Padaria', b'1');
INSERT INTO categoria (nome, ativo) VALUES ('Higiene Pessoal', b'0');
INSERT INTO categoria (nome, ativo) VALUES ('Limpeza', b'1');
INSERT INTO categoria (nome, ativo) VALUES ('Congelados', b'0');

-- Categoria: Frutas
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Banana', 50, 3.99, '2024-10-15', b'1', 1);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Maçã', 30, 4.99, '2024-09-30', b'1', 1);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Laranja', 40, 2.99, '2024-10-10', b'0', 1);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Abacaxi', 15, 5.99, '2024-09-25', b'1', 1);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Uva', 20, 6.50, '2024-10-05', b'0', 1);

-- Categoria: Legumes
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Cenoura', 100, 1.99, '2024-10-20', b'1', 2);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Batata', 200, 2.50, '2024-10-15', b'1', 2);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Abobrinha', 30, 3.49, '2024-09-28', b'0', 2);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Berinjela', 25, 4.25, '2024-10-18', b'1', 2);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Pepino', 40, 2.75, '2024-09-22', b'0', 2);

-- Categoria: Laticínios
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Leite', 60, 4.99, '2024-09-18', b'1', 3);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Queijo', 20, 9.99, '2024-10-05', b'1', 3);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Iogurte', 30, 3.49, '2024-09-15', b'0', 3);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Manteiga', 15, 6.99, '2024-10-08', b'1', 3);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Requeijão', 25, 5.75, '2024-09-25', b'0', 3);

-- Categoria: Bebidas
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Refrigerante', 100, 7.99, '2024-12-01', b'1', 4);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Água Mineral', 150, 1.50, '2025-01-01', b'1', 4);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Suco de Laranja', 50, 6.50, '2024-09-20', b'0', 4);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Vinho', 10, 29.99, '2025-05-15', b'1', 4);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Cerveja', 70, 4.99, '2024-11-30', b'0', 4);

-- Categoria: Enlatados
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Milho Enlatado', 80, 3.99, '2025-08-10', b'1', 5);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Ervilha Enlatada', 60, 3.50, '2025-07-01', b'1', 5);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Tomate Pelado', 45, 4.25, '2025-06-15', b'0', 5);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Atum Enlatado', 30, 8.99, '2025-05-05', b'1', 5);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Sardinha Enlatada', 35, 7.50, '2025-04-10', b'0', 5);

-- Categoria: Doces e Confeitos
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Chocolate', 120, 4.99, '2024-12-25', b'1', 6);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Bala de Goma', 200, 2.99, '2025-03-01', b'1', 6);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Pirulito', 180, 1.50, '2025-02-15', b'0', 6);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Doce de Leite', 50, 6.99, '2024-11-01', b'1', 6);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Marshmallow', 60, 3.99, '2025-01-05', b'0', 6);

-- Categoria: Padaria
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Pão Francês', 300, 0.50, '2024-09-12', b'1', 7);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Pão de Forma', 50, 5.49, '2024-09-18', b'1', 7);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Bolo de Chocolate', 20, 12.99, '2024-09-15', b'0', 7);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Croissant', 30, 3.99, '2024-09-14', b'1', 7);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Pão de Queijo', 100, 1.99, '2024-09-16', b'0', 7);

-- Categoria: Higiene Pessoal
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Shampoo', 40, 15.99, '2025-03-10', b'1', 8);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Condicionador', 35, 14.99, '2025-04-01', b'1', 8);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Sabonete', 80, 2.99, '2025-06-20', b'0', 8);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Creme Dental', 60, 7.50, '2025-05-15', b'1', 8);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Desodorante', 50, 9.99, '2025-02-28', b'0', 8);

-- Categoria: Limpeza
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Detergente', 120, 2.50, '2025-07-01', b'1', 9);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Sabão em Pó', 100, 12.99, '2025-06-10', b'1', 9);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Alvejante', 70, 5.99, '2025-05-05', b'0', 9);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Lustra Móveis', 30, 9.99, '2025-04-15', b'1', 9);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Desinfetante', 90, 3.49, '2025-03-20', b'0', 9);

-- Categoria: Congelados
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Pizza Congelada', 25, 15.99, '2024-11-10', b'1', 10);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Hambúrguer Congelado', 40, 9.99, '2024-10-05', b'1', 10);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Sorvete', 35, 12.50, '2024-12-01', b'0', 10);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Peixe Congelado', 20, 19.99, '2024-09-30', b'1', 10);
INSERT INTO produto (nome, quantidade, preco, validade, ativo, categoria_codigo) VALUES ('Batata Frita Congelada', 50, 7.99, '2024-11-20', b'0', 10);

INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Acre', 'AC', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Alagoas', 'AL', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Amapá', 'AP', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Amazonas', 'AM', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Bahia', 'BA', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Ceará', 'CE', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Distrito Federal', 'DF', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Espírito Santo', 'ES', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Goiás', 'GO', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Maranhão', 'MA', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Mato Grosso', 'MT', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Mato Grosso do Sul', 'MS', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Minas Gerais', 'MG', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Pará', 'PA', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Paraíba', 'PB', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Paraná', 'PR', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Pernambuco', 'PE', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Piauí', 'PI', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Rio de Janeiro', 'RJ', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Rio Grande do Norte', 'RN', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Rio Grande do Sul', 'RS', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Rondônia', 'RO', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Roraima', 'RR', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Santa Catarina', 'SC', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('São Paulo', 'SP', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Sergipe', 'SE', 1);
INSERT INTO unidadefederativa (nome, sigla, ativo) VALUES ('Tocantins', 'TO', 1);
