
with source as (

    select * from {{ source('raw_netsuite', 'currencies') }}

),

renamed as (

    select
        currency_extid,
        currency_id,
        date_last_modified,
        is_inactive,
        name,
        precision_0,
        symbol

    from source

)

select * from renamed
