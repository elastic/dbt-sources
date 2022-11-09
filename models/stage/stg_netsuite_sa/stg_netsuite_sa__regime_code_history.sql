
with source as (

    select * from {{ source('raw_netsuite_sa', 'regime_code_history') }}

),

renamed as (

    select
        regime_code_id,
        _fivetran_deleted,
        _fivetran_synced,
        code,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        nexus,
        parent_id,
        regime_code_extid,
        regime_code_name,
        transaction_type,
        partition_date

    from source

)

select * from renamed
