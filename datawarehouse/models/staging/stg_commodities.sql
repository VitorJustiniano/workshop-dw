-- import
with source as (
    select
        "Date",
        "Close",
        "simbolo"
    from 
        {{ source ('dbsales_fbv3', 'commodities') }}
),
-- renamed
renamed as (

    select
        cast("Date" as date) as data,
        "Close" as valor_fechamento,
        simbolo
    from 
        source
)
-- select * from

select * from renamed