
with source as (

    select * from {{ source('raw_netsuite', 'mfg_cost_template_history') }}

),

renamed as (

    select
        create_date,
        date_last_modified,
        externalid,
        isinactive,
        mfg_cost_template_id,
        mfg_cost_template_memo,
        mfg_cost_template_name,
        subsidiary_id

    from source

)

select * from renamed
