
with source as (

    select * from {{ source('raw_netsuite_sa', 'budget_category_history') }}

),

renamed as (

    select
        budget_category_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        is_global,
        isinactive,
        name,
        partition_date

    from source

)

select * from renamed
