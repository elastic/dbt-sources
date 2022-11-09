
with source as (

    select * from {{ source('raw_salesforce', 'vh_completed_status_configuration_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp,
        vh_integration_type_c,
        vh_status_c

    from source

)

select * from renamed
