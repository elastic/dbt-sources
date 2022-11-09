
with source as (

    select * from {{ source('raw_netsuite_sa', 'mfg_cost_template_history') }}

),

renamed as (

    select
        mfg_cost_template_id,
        _fivetran_deleted,
        _fivetran_synced,
        create_date,
        date_deleted,
        date_last_modified,
        externalid,
        isinactive,
        mfg_cost_template_memo,
        mfg_cost_template_name,
        subsidiary_id,
        partition_date

    from source

)

select * from renamed
