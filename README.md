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

## Fotos Do Projeto:
### Modelagem de Dados (DER)
<img width="707" height="469" alt="Captura de tela de 2025-12-27 20-13-14" src="https://github.com/user-attachments/assets/0176cee2-fd95-41d7-a0ee-8bd0aaa51da3" />
### Código Rodando no Terminal (MySQL)
<img width="1366" height="768" alt="Captura de tela de 2025-12-27 20-10-57" src="https://github.com/user-attachments/assets/7298e0b3-9148-421d-8913-7ef4623564e0" />
<img width="1366" height="768" alt="Captura de tela de 2025-12-27 20-10-35" src="https://github.com/user-attachments/assets/80526542-8878-4f83-8191-1452a5fae713" />
<img width="1366" height="768" alt="Captura de tela de 2025-12-27 20-11-22" src="https://github.com/user-attachments/assets/ef42a267-0c2c-48a5-b193-492e8d9105c2" />
<img width="1357" height="121" alt="Captura de tela de 2025-12-27 20-11-12" src="https://github.com/user-attachments/assets/7cb87b41-8539-4958-9ee7-79b7c535d351" />
<img width="1357" height="427" alt="Captura de tela de 2025-12-27 20-11-41" src="https://github.com/user-attachments/assets/2dd12de0-468b-4afd-9ebd-b7b7afccddc9" />
### Código Limpo no Visual Studio Code
<img width="1366" height="768" alt="Captura de tela de 2025-12-27 20-29-31" src="https://github.com/user-attachments/assets/be0360cb-66c1-4d64-a007-53cf9f634f7b" />
<img width="1366" height="768" alt="Captura de tela de 2025-12-27 20-29-44" src="https://github.com/user-attachments/assets/7c8c0e0c-5367-462f-bafd-a29251eb521b" />
<img width="1366" height="768" alt="Captura de tela de 2025-12-27 20-29-50" src="https://github.com/user-attachments/assets/bd493994-3074-4f3f-b97a-7fddcb352de6" />



## 👨‍💻 Autor
Desenvolvido por **Leandro Amaro da Silva** - Estudante de Análise e Desenvolvimento de Sistemas.
