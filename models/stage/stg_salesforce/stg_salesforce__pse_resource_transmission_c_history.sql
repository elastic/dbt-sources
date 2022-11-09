
with source as (

    select * from {{ source('raw_salesforce', 'pse_resource_transmission_c_history') }}

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
        pse_resource_c,
        pse_status_c,
        pse_timecard_transmission_c,
        system_modstamp

    from source

)

select * from renamed
