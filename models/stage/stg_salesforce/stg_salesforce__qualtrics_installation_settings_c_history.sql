
with source as (

    select * from {{ source('raw_salesforce', 'qualtrics_installation_settings_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        qualtrics_install_state_c

    from source

)

select * from renamed
