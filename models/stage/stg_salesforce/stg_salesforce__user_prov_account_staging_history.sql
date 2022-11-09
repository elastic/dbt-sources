
with source as (

    select * from {{ source('raw_salesforce', 'user_prov_account_staging_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        connected_app_id,
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
        link_state,
        name,
        salesforce_user_id,
        status,
        system_modstamp

    from source

)

select * from renamed
