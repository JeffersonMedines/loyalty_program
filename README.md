![Customer-Loyaly-Program](https://github.com/JeffersonMedines/loyalty_program/assets/93053350/272455db-42b7-4b48-a33e-9f57c08ee2d0)


# Insiders Loyalty Program



<h1> Índice </h1>

<h3>

• [Problemas de Negócio](https://github.com/JeffersonMedines/loyalty_program#mag_right-problemas-de-neg%C3%B3cio-)

• [Planejamento da Solução](https://github.com/JeffersonMedines/loyalty_program#computer-planejamento-da-solu%C3%A7%C3%A3o-)

• [Top 3 Insights de Negócio](https://github.com/JeffersonMedines/loyalty_program#bar_chart-top-3-insights-de-neg%C3%B3cio)

• [Machine Learning e Métricas de Performance](https://github.com/JeffersonMedines/loyalty_program#mechanical_arm-machine-learning-e-m%C3%A9tricas-de-performance-)

• [Resultados Financeiros para o Negócio](https://github.com/JeffersonMedines/loyalty_program#chart_with_upwards_trend-resultados-financeiros-para-o-neg%C3%B3cio-)

• [Deploy do Modelo em Produção](https://github.com/JeffersonMedines/loyalty_program#hammer_and_wrench-deploy-do-modelo-em-produ%C3%A7%C3%A3o-)

• [Próximos Passos](https://github.com/JeffersonMedines/loyalty_program#pushpin-pr%C3%B3ximos-passos-)
 
 </h3>

<h1>:mag_right: Problemas de Negócio </h1>

<p> A empresa All in One Place é uma Outlet Multimarcas, ou seja, ela comercializa produtos de segunda linha de várias marcas a um preço menor, através de um e-commerce. </p>

<p> Em pouco mais de 1 ano de operação, o time de marketing percebeu que alguns clientes da base, compram produtos mais caros e com alta frequência e por isso esses clientes contribuem com uma parcela significativa do faturamento da empresa. </p>

<p> Baseado nessa percepção, o time de marketing irá lançar um programa de fidelidade para garantir a permanência dos melhores clientes da base, chamado grupo Insiders. </p>

<p> Porém, o time de marketing não possui avançado em análise de dados para eleger esses clientes, então, fui contratado como cientista de dados consultor para desenvolver um projeto de clusterização para segmentar esses clientes e encontrar o grupo Insiders, além de entrar um relatório respondendo as seguintes perguntas:

1. Quem são as pessoas elegíveis para participar do programa de Insiders?

2. Quantos clientes farão parte do grupo?

3. Quais as principais características desses clientes?

4. Qual a porcentagem de contribuição do faturamento, vinda do Insiders?

5. Quais as condições para uma pessoa ser elegível ao Insiders?

6. Quais as condições para uma pessoa ser removida do Insiders?

7. Qual a garantia que o programa Insiders é melhor que o restante da base?</p>

<h1>:computer: Planejamento da Solução </h1>

<p> Este projeto será desenvolvido com base no Processo Padrão Inter-Indústrias para Mineração de Dados (CRISP-DM). Uma metodologia padronizada de projetos de ciência de dados com etapas bem definidas e ordenadas: entendimento do negócio, entendimento dos dados, prepração dos dados, modelagem, avaliação e implementação. Dessa forma, quando utilizamos a metodologia CRIPS-DM, o projeto de ciência de dados passa a ter um ciclo de vida circular. Mesmo quando o projeto chega na etapa de implementação, o projeto pode ser novamente iniciado pela etapa de entendimento do negócio. </p>

<p> O intuito desa metodologia é que o cientista passe inicialmente por todos os passos do projeto da forma mais rápida possível. Mas como isso pode ajudar no desenvolvimento do projeto e na agregação de valor para a empresa? Ao passar por todas as etapas do projeto de maneira rápida já é possível identificar qualquer problema que impeça o projeto de ser desenvolvido, reduzindo custos no caso de construir um projeto excelente já na primeira entrega o que demandaria mais tempo e investimento para no final descobrir o problema que impede o desenvolvimento do projeto. Ao desenvolver uma solucção inicial rápida, a empresa já está sendo beneficiada financeiramente ainda que pouco nessa primeira versão do projeto em quanto uma solução mais robusta é construída em uma próxima iteração do CRISP-DM. </p>

<p> Assim, o objetivo é que se faça quantas iteraões forem necessárias do CRISP-DM até que se apresente uma solução condizente com as expectativas da empresa. Além disso, o  CRISP-DM pode até ser considerada uma metodologia ágil já que possibilita ao cientista um desenvolvimento de projeto e agregação de valor para a empresa de forma mais eficiente e inteligente. </p>

![crisp dm](https://user-images.githubusercontent.com/93053350/208129563-6f933191-f522-4603-bf98-06b3f0db9937.jpg)


<h1>:bar_chart: Top 3 Insights de Negócio</h1>
<h3> 1. Os clientes do cluster Insiders possuem um volume de produtos acima de 15% do total da base. </h3>

<p> VERDADEIRA: O cluster Insiders possui um volume de produtos de 48,62% em relação ao total da base. </p>

![GRAFICO1](https://github.com/JeffersonMedines/loyalty_program/assets/93053350/03188e28-3552-4159-9963-d107a693ad62)

<h3> 2. Os clientes do cluster Insiders possuem um volume de faturamento acima de 30% do total da base. </h3>

<p> VERDADEIRA: O cluster Insiders possui um volume de faturamento de 45,61% em relação ao total da base. </p>

![GRAFICO2](https://github.com/JeffersonMedines/loyalty_program/assets/93053350/e122ce0c-6f37-4406-9ed6-bbac743d194f)

<h3> 3. O faturamento dos clientes do cluster Insiders estão concentrados no 3 quartil. </h3>

<p> VERDADEIRA: O faturamento dos clientes do cluster Insiders está concentrada no terceiro quartil, o que mostra que o cluster não tem alguns poucos clientes outliers que puxam as métricas lá para cima, e sim uma boa variedade de clientes com padrões similares de consumo. </p>

![GRAFICO3](https://github.com/JeffersonMedines/loyalty_program/assets/93053350/ba8702e8-9892-43b2-b676-68f703d73c8e)

<h1>:mechanical_arm: Machine Learning e Métricas de Performance </h1>

<p> O objetivo de um projeto de clusterização é agrupar os dados de forma organizada, por exemplo, no atual projeto queremos organizar os consumidores em grupos para descobrir quais são os clientes mais valiosos e a partir desses grupos, pensar em ações para aumentar o faturamento da empresa criando um programa de fidelidade para os clientes mais valiosos por exemplo. </p>

<p> A performance desse agrupamento dependerá bastante da atual organização dos dados (dados mais gabunçados são mais difíceis de se organizar do que dados menos bagunçados) e para isso utilzei técnicas de embedding para reproduzir os dados em um espaço mais organizado, e como esses espaços possuem uma alta dimensionalidade, utilizei a técnica UMAP de redução de dimensionalidade para que seja possível visualizar graficamente a organização dos nossos dados no novo espaço. </p>

<p> A técnica utilizada foi a tree-based embedding, onde de acordo com o problema de negócio definimos uma variável como variável resposta, nesse caso o problema de negócio é encontrar os clientes mais valiosos, e a variável que melhor resume os clientes mais valioso é o valor total que cada cliente gastou comprando os produtos da empresa. Esse foi o resultado da organização dos dados em um novo espaço: </p>

![embedding1](https://github.com/JeffersonMedines/loyalty_program/assets/93053350/b47e35ed-9904-438f-ad48-46bc06740457)

<p> Para avaliar a performance dos clusters formados pelos algoritmos, foi escolhida a métrica silhouette score que leva em consideração tanto a coesão (o quanto um cluster é compacto) quanto a separação (o quanto um cluster é distante dos demais) e por isso nos dá uma boa noção da qualidade dos clusters que os algoritmos estão formando. </p>

![silhouette](https://github.com/JeffersonMedines/loyalty_program/assets/93053350/897ae67a-83d1-4315-afcc-0a39601cbb48)

<p> Apesar da silhouette score continuar aumentando conforme subimos o número de clusters, por questões de praticidade para montar as estratégias para cada segmento de clientes, foi escolhido trabalhar com 7 clusters, e para essa quantidade o algoritmo GMM obteve a melhor performance e por isso foi o escolhido. </p>

<p> Finalmente, essa é uma visualização como ficou a organização dos clusters dentro do espaço de embedding: </p>

![cluterizado](https://github.com/JeffersonMedines/loyalty_program/assets/93053350/ccbbbf9c-c8a8-4c5d-aae5-0807fb0acc20)

<h1>:chart_with_upwards_trend: Resultados Financeiros para o Negócio </h1>

<p> 
1. Quem são as pessoas elegíveis para participar do programa de Insiders?
 
- Foi gerado um arquivo csv com o ID de todos os clientes do cluester insiders. </p>

<p> 
2. Quantos clientes farão parte do grupo?
 
- 543 clientes. </p>

<p> 
3. Quais as principais características desses clientes?
 
- São 543 clientes que representam 9,53% da base, que trazem um faturamento médio de $8487,32. Compraram em média 277 produtos que totalizam 4917 itens na média e com um ticket médio de $243. </p>

<p> 
4. Qual a porcentagem de contribuição do faturamento, vinda do Insiders?
 
- O cluster Insiders contribui com 45,61% do faturamento total. </p>

<p> 
5. Quais as condições para uma pessoa ser elegível ao Insiders?
 
- Ter um valor igual ou superar ao segundo quartil do cluster Insiders em todas as variáveis. </p>

<p> 
6. Quais as condições para uma pessoa ser removida do Insiders?
 
- Ter um valor abaixo do menor valor possível em alguma das variáveis do cluster Insiders. </p>

<p> 
7. Qual a garantia que o programa Insiders é melhor que o restante da base?
 
- Apesar de haver 7 clusters, apenas o Insiders detém quase metade de todo a faturamento da empresa, comrpovando que é um grupo com impacto altíssimo na receita da empresa. </p>

<p> A tabela a seguir mostra os valores médios para cada uma das variáveis e para cada um dos clusters encontrados: </p>

![tabela clusters](https://github.com/JeffersonMedines/loyalty_program/assets/93053350/d1335891-d420-45ad-8362-7a33d55610dc)


<h1>:hammer_and_wrench: Deploy do Modelo em Produção </h1>

<p> De acordo com as boas práticas, inicialmente montei a estrutura de deploy de forma local para garantir que todas as peças estavam funcionando, após isso comecei a migrar cada peça para o ambiente remoto. O ambiente remoto foi desenvolvido utilizando as ferramentas da cloud AWS. </p>

<p> Na estrutura local o notebook de deploy salvo no meu computador pega o arquivo csv com os dados dentro de uma pasta do meu computador e realiza todo o pipeline para a clusterização, após isso salva em um banco de dados sqlite que é consumido por uma visualização em outro notebook salvo no meu computador. </p>

<p> Na migração para o ambiente remoto, iniciei criando um banco de dados postgres com o serviço RDS da AWS que é onde serão salvos os dados da clusterização. Depois usando o EC2 criei uma instância de servidor para executar o notebook do modelo, criei todo o ambiente virtual na instância e configurei ela para que fosse possível funcionar a automatização do deploy. </p>

<p> Em seguida criei um bucket no S3 para armazenar o arquivo .csv com os dados para o notebook consumir. E finalmente, conectei o metabase com o RDS para consumir os dados clusterizados e criar a visualização para o time de marketing. </p>

<p> Então o fluxo de deploy ficou: O notebook na EC2 checa o github para ver se tem uma nova versão de código enviada pelo notebook local, após isso carrega o dataset salvo no S3 e executa o pipeline do modelo, salva os dados clusterizados no postgres do RDS e então o metabase consome esses dados para criar a visualização. A seguir a estrutura do deploy: </p>

![estrutura deploy metabase](https://github.com/JeffersonMedines/loyalty_program/assets/93053350/d91c97c4-07a1-4570-acf1-d120ac280db2)

<h1>:pushpin: Próximos Passos </h1>

<p> Fazer testes com a aplicação dos embedding em diferentes dimensionalidades para ver se a organização dos dados irá aumentar já que nesse ciclo do crisp apenas foram testados embedding em duas dimensões. </p>
