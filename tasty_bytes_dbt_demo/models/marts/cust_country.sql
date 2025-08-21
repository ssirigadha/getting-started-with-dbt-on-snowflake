
{{
    config(
            tags=["country"],
            pre_hook=[ "truncate table {{ this }}"]             
    )
}}

select *
FROM {{ ref('raw_pos_country') }} c