
with source as (

    select * from {{ source('raw_netsuite_sa', 'inventory_cost_template') }}

),

renamed as (

    select
        inv_cost_template_id,
        _fivetran_deleted,
        _fivetran_synced,
        create_date,
        date_deleted,
        date_last_modified,
        inv_cost_template_memo,
        inv_cost_template_name,
        isinactive,
        subsidiary_id

    from source

)

select * from renamed
