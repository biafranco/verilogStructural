# verilogStructural

Projeto Verilog de Exemplo
Este é um projeto Verilog de exemplo que demonstra a simulação de um circuito combinacional que gera saídas com base em entradas específicas. O projeto inclui módulos para a simulação de várias funções lógicas e um módulo de teste para verificar o comportamento do circuito.

# Estrutura do Projeto
Insipirado em um trabalho da faculdade a ideia do circuito é retornar o resto de divisão por 7, sendo a entrada 4 bits e saída 3. 
Usando a tabela da verdade não é necessário fazer um divisor completo, apenas observar para cada um dos bits de saída a função lógica que pode ser inferida pelo mapa de karnaugh. 

f1(a, b, c, d) = bc' + a'bd' + ab'cd

f2(a, b, c, d) = a'b'c + a'cd' + ac'd + b'cd'

f3(a, b, c, d) = a'b'd + a'c'd + ab'd' + ac'd' + abcd

O projeto é composto por vários módulos interconectados:

structuralProject: Este é o módulo principal que interconecta os outros módulos e define a lógica de saída com base nas entradas.

setF1, setF2 e setF3: Esses módulos representam funções lógicas específicas que são usadas para calcular as saídas F1, F2 e F3, respectivamente.

testbench: Este é o módulo de teste que verifica o comportamento do circuito para várias combinações de entradas gerando uma tabela da verdade. 

Simulação e Geração de Formas de Onda
O arquivo testbench inclui instruções para simulação e geração de formas de onda. Ele também gera um arquivo VCD (Value Change Dump) chamado dump.vcd que pode ser usado para visualizar as formas de onda resultantes em um visualizador de formas de onda externo.

# Execução do Projeto
Para executar o projeto, siga estas etapas:

- Certifique-se de ter um ambiente Verilog/Simulation adequado configurado.
- Abra os arquivos do projeto no seu ambiente de desenvolvimento Verilog.
- Compile e simule o projeto.

Após a simulação, você pode abrir o arquivo dump.vcd em um visualizador de formas de onda para analisar as formas de onda resultantes.

# Notas Importantes
- O autor sugere usar o EDA Playground para compilar o projeto
- Certifique-se de ter as ferramentas Verilog adequadas instaladas e configuradas corretamente para executar o projeto.
- Os tempos de atraso nas instruções $display no módulo de teste (testbench) podem ser ajustados conforme necessário para controlar a taxa de atualização das formas de onda durante a simulação.
- Este é um projeto de exemplo com fins educacionais. Você pode personalizar e expandir o projeto de acordo com suas necessidades específicas.
