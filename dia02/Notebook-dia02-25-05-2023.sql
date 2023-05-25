-- Databricks notebook source
SELECT * FROM silver.pizza_query.produto

-- COMMAND ----------

SELECT descItem
FROM silver.pizza_query.produto

-- COMMAND ----------

SELECT descItem,
        vlPreco
FROM silver.pizza_query.produto

-- COMMAND ----------

SELECT descItem,
        dtValidades
FROM silver.pizza_query.produto

-- COMMAND ----------

SELECT descItem,
        vlPreco,
        21 +21 AS vl42
FROM silver.pizza_query.produto
