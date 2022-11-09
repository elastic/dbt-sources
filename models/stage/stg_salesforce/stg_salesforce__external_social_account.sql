
with source as (

    select * from {{ source('raw_salesforce', 'external_social_account') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        authorized_by,
        created_by_id,
        created_date,
        data_source_id,
        default_response_account_id,
        developer_name,
        external_account_id,
        external_picture_url,
        is_active,
        is_authenticated,
        is_case_creation_enabled,
        is_data_source_active,
        is_deleted,
        language,
        last_modified_by_id,
        last_modified_date,
        master_label,
        profile_url,
        provider,
        provider_user_id,
        rule_id,
        social_property_id,
        system_modstamp,
        topic_id,
        unique_name,
        username,
        _fivetran_deleted

    from source

)

select * from renamed
