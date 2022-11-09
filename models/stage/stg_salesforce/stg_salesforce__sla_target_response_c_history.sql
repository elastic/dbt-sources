
with source as (

    select * from {{ source('raw_salesforce', 'sla_target_response_c_history') }}

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
        setup_owner_id,
        support_levels_c,
        system_modstamp,
        target_responses_c

    from source

)

select * from renamed