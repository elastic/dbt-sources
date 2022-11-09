
with source as (

    select * from {{ source('raw_salesforce', 'pse_rr_milestone_c_history') }}

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
        pse_milestone_c,
        pse_resource_request_c,
        system_modstamp

    from source

)

select * from renamed