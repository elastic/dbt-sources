
with source as (

    select * from {{ source('raw_salesforce', 'user_prov_mock_target_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        external_email,
        external_first_name,
        external_last_name,
        external_user_id,
        external_username,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
