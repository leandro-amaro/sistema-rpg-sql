# ⚔️ Sistema de Gerenciamento de RPG Medieval (SQL)

Este projeto consiste na modelagem e implementação de um banco de dados relacional para um sistema de RPG. O objetivo foi aplicar conceitos fundamentais de Engenharia de Dados, Normalização e SQL.

## 🛠️ Tecnologias Utilizadas
- **Linguagem:** SQL
- **Banco de Dados:** MySQL
- **Ambiente:** Linux (Ubuntu)
- **Modelagem:** Diagrama Entidade-Relacionamento (DER)

## 📋 Estrutura do Banco de Dados
O sistema foi modelado para resolver relacionamentos complexos, incluindo:

1.  **Classes e Personagens (1:N):** Um sistema onde cada jogador possui uma classe (Guerreiro, Mago, etc) com integridade referencial.
2.  **Herança de Itens (1:1):** Implementação de especialização onde `ARMA` e `ARMADURA` herdam características de uma tabela pai `ITEM`.
3.  **Sistema de Inventário (N:N):** Tabela associativa que permite aos jogadores possuírem múltiplos itens com controle de quantidade.

## 💻 Como Rodar
1. Clone o repositório:
   ```bash
   git clone [https://github.com/leandro-amaro/sistema-rpg-sql.git](https://github.com/leandro-amaro/sistema-rpg-sql.git)
   ```
2. Importe o arquivo `meu_rpg.sql` no seu banco de dados MySQL ou execute o script em um cliente SQL.

## 🔍 Exemplo de Consulta (Query)
O projeto inclui queries complexas utilizando `JOIN` para relatórios completos:

```sql
SELECT J.Nome_Personagem, C.Nome_Classe, I.Nome
FROM JOGADOR J
JOIN CLASSE C ON J.ID_Classe = C.ID_Classe
JOIN INVENTARIO INV ON J.ID_Jogador = INV.ID_Jogador
JOIN ITEM I ON INV.ID_Item = I.ID_Item;
```

## 📸 Demonstração do Projeto

### 1. Modelagem de Dados (DER)
![Diagrama Entidade Relacionamento](https://github.com/user-attachments/assets/0176cee2-fd95-41d7-a0ee-8bd0aaa51da3)

### 2. Implementação e Consultas (MySQL)
![Resultado no Terminal](https://github.com/user-attachments/assets/ef42a267-0c2c-48a5-b193-492e8d9105c2)
![Tabela Final](https://github.com/user-attachments/assets/7cb87b41-8539-4958-9ee7-79b7c535d351)

### 3. Script SQL no VS Code
![Código no VS Code](https://github.com/user-attachments/assets/7c8c0e0c-5367-462f-bafd-a29251eb521b)


## 👨‍💻 Autor
Desenvolvido por **Leandro Amaro da Silva** - Estudante de Análise e Desenvolvimento de Sistemas.
