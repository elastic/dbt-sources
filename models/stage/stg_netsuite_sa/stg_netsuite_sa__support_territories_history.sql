
with source as (

    select * from {{ source('raw_netsuite_sa', 'support_territories_history') }}

),

renamed as (

    select
        sales_territory_id,
        _fivetran_synced,
        date_last_modified,
        description,
        isinactive,
        name,
        priority,
        _fivetran_deleted,
        date_deleted,
        partition_date

    from source

)

select * from renamed
