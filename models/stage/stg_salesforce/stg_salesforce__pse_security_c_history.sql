
with source as (

    select * from {{ source('raw_salesforce', 'pse_security_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        pse_bypass_internal_fls_and_crud_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
