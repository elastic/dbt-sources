
with source as (

    select * from {{ source('raw_salesforce', 'pse_resource_request_set_c_history') }}

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
        pse_account_c,
        pse_master_resource_request_c,
        pse_opportunity_c,
        pse_project_c,
        pse_staffed_on_c,
        pse_staffed_resource_request_c,
        system_modstamp

    from source

)

select * from renamed
