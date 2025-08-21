{% snapshot country_snapshot %}
    {{
        config(
            target_schema="POC",
            strategy="check",
            updated_at="insert_ts",
            unique_key="country_id",
            check_cols=["iso_country"],
        )
    }}

    select * from {{ ref('cust_country') }}

{%endsnapshot %}