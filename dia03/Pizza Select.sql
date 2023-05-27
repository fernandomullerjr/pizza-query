-- Databricks notebook source
SELECT *

FROM silver.pizza_query.item_pedido


-- COMMAND ----------

SELECT *

FROM silver.pizza_query.item_pedido

WHERE descTipoItem = 'borda'

-- COMMAND ----------

SELECT descItem,
    count(*) AS qtdePedido

FROM silver.pizza_query.item_pedido

WHERE descTipoItem = 'borda'

GROUP BY descItem
ORDER BY qtdePedido DESC

LIMIT 1

-- COMMAND ----------

SELECT descItem,
    count(*) AS qtdePedido

FROM silver.pizza_query.item_pedido

WHERE descTipoItem = 'massa'

GROUP BY descItem
ORDER BY qtdePedido DESC

-- COMMAND ----------

SELECT descItem,
    count(*) AS qtdePedido

FROM silver.pizza_query.item_pedido

WHERE descTipoItem LIKE '%queijo%'

GROUP BY descItem
ORDER BY qtdePedido DESC

-- COMMAND ----------

SELECT descItem,
    count(*) AS qtdePedido

FROM silver.pizza_query.item_pedido

WHERE descTipoItem LIKE '%ingrediente%'

GROUP BY descItem
ORDER BY qtdePedido DESC

LIMIT 5

-- COMMAND ----------


(SELECT descItem,
    count(*) AS qtdePedido

FROM silver.pizza_query.item_pedido

WHERE descTipoItem LIKE '%ingrediente%'

GROUP BY descItem
ORDER BY qtdePedido DESC

LIMIT 5)

UNION ALL

(SELECT descItem,
    count(*) AS qtdePedido

FROM silver.pizza_query.item_pedido

WHERE descTipoItem LIKE '%queijo%'

GROUP BY descItem
ORDER BY qtdePedido DESC

LIMIT 5)

UNION ALL

(SELECT descItem,
    count(*) AS qtdePedido

FROM silver.pizza_query.item_pedido

WHERE descTipoItem LIKE '%ingrediente%'

GROUP BY descItem
ORDER BY qtdePedido DESC

LIMIT 5)

UNION ALL

(SELECT descItem,
    count(*) AS qtdePedido

FROM silver.pizza_query.item_pedido

WHERE descTipoItem LIKE '%bebida%'

GROUP BY descItem
ORDER BY qtdePedido DESC

LIMIT 5)

-- COMMAND ----------


(SELECT descItem,
    count(*) AS qtdePedido

FROM silver.pizza_query.item_pedido

WHERE descTipoItem LIKE '%ingrediente%'

GROUP BY descItem
ORDER BY qtdePedido DESC

LIMIT 1)

UNION ALL

(SELECT descItem,
    count(*) AS qtdePedido

FROM silver.pizza_query.item_pedido

WHERE descTipoItem LIKE '%queijo%'

GROUP BY descItem
ORDER BY qtdePedido DESC

LIMIT 5)

UNION ALL

(SELECT descItem,
    count(*) AS qtdePedido

FROM silver.pizza_query.item_pedido

WHERE descTipoItem LIKE '%ingrediente%'

GROUP BY descItem
ORDER BY qtdePedido DESC

LIMIT 5)

UNION ALL

(SELECT descItem,
    count(*) AS qtdePedido

FROM silver.pizza_query.item_pedido

WHERE descTipoItem LIKE 'bebida'

GROUP BY descItem
ORDER BY qtdePedido DESC

LIMIT 5)
