
with source as (

    select * from {{ source('raw_netsuite_sa', 'currencies') }}

),

renamed as (

    select
        currency_id,
        _fivetran_deleted,
        _fivetran_synced,
        currency_extid,
        date_deleted,
        date_last_modified,
        is_inactive,
        name,
        precision_0,
        symbol

    from source

)

select * from renamed
