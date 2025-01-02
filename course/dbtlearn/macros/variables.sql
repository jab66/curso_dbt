{% macro dblearn_variables() %}

    {% set my_name = "Jorge" %}
    {{ log("Hello " ~ my_name, info=True) }}

    {{ log("Hello dbt user " ~ var("user_name", "NO USERNAME IS SET!!!") ~ "!", info=True) }}

{% endmacro %}

