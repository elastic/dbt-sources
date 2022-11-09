
with source as (

    select * from {{ source('raw_salesforce', 'matching_information_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        email_address,
        external_id,
        id,
        is_deleted,
        is_picked_as_preferred,
        last_modified_by_id,
        last_modified_date,
        name,
        preference_used,
        sfdcid_id,
        system_modstamp,
        user_id

    from source

)

select * from renamed
