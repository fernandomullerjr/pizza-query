-- Databricks notebook source
SELECT count(*)
FROM silver.pizza_query.pedido

-- COMMAND ----------

SELECT count(1)  -- linhas não nulas
FROM silver.pizza_query.pedido

-- COMMAND ----------

SELECT count(idPedido)
FROM silver.pizza_query.pedido

-- COMMAND ----------

SELECT *
FROM silver.pizza_query.pedido
WHERE flKetchup IS NOT null

-- COMMAND ----------

SELECT count(*)
FROM silver.pizza_query.pedido
WHERE flKetchup IS NOT null

-- COMMAND ----------

SELECT *
FROM silver.pizza_query.pedido
WHERE descUF = 'Paraná'

-- COMMAND ----------

SELECT count(*)
FROM silver.pizza_query.pedido
WHERE descUF = 'Paraná'

-- COMMAND ----------

SELECT descUF,
      count(*)
FROM silver.pizza_query.pedido
GROUP BY descUF

-- COMMAND ----------

SELECT descUF,
      count(*)
FROM silver.pizza_query.pedido
GROUP BY descUF
ORDER BY count(1) DESC

-- COMMAND ----------

SELECT descUF,
      count(*) AS qtdePedidos
FROM silver.pizza_query.pedido

WHERE descUF != 'São Paulo'

GROUP BY descUF
ORDER BY qtdePedidos DESC

LIMIT 6

-- COMMAND ----------

SELECT *
FROM silver.pizza_query.produto
WHERE descItem LIKE 'suco%'

-- COMMAND ----------

SELECT *
FROM silver.pizza_query.produto
WHERE descItem LIKE '%laranja%'

-- COMMAND ----------

SELECT *
FROM silver.pizza_query.produto
WHERE descItem LIKE '%abacaxi%'

-- COMMAND ----------

SELECT descUF,
      count(*) AS qtdePedidos
FROM silver.pizza_query.pedido

WHERE descUF != 'São Paulo'

GROUP BY descUF

HAVING qtdePedidos >= 75

ORDER BY qtdePedidos DESC

LIMIT 6

-- COMMAND ----------

SELECT *
FROM silver.pizza_query.pedido


-- COMMAND ----------

SELECT descUF,
    flKetchup,
    count(*)
FROM silver.pizza_query.pedido

-- COMMAND ----------

SELECT descUF,
    flKetchup,
    count(*)
FROM silver.pizza_query.pedido

GROUP BY descUF, flKetchup
