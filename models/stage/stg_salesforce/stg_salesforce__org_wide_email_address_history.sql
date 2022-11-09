
with source as (

    select * from {{ source('raw_salesforce', 'org_wide_email_address_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_deleted,
        _fivetran_synced,
        address,
        created_by_id,
        created_date,
        display_name,
        is_allow_all_profiles,
        last_modified_by_id,
        last_modified_date,
        system_modstamp

    from source

)

select * from renamed
