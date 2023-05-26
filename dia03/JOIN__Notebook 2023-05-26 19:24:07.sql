-- Databricks notebook source
SELECT * FROM silver.pizza_query.produto
ORDER BY descItem
LIMIT 100

-- COMMAND ----------

SELECT * FROM silver.pizza_query.item_pedido

-- COMMAND ----------

SELECT * FROM silver.pizza_query.item_pedido LEFT JOIN silver.pizza_query.produto ON descItem

-- COMMAND ----------

SELECT * FROM silver.pizza_query.item_pedido

-- COMMAND ----------


SELECT *

FROM silver.pizza_query.item_pedido AS t1

LEFT JOIN silver.pizza_query.produto AS t2
ON t1.descItem = t2.descItem

-- COMMAND ----------

SELECT t1.*,
    t2.vlPreco

FROM silver.pizza_query.item_pedido AS t1

LEFT JOIN silver.pizza_query.produto AS t2
ON t1.descItem = t2.descItem
