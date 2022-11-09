
with source as (

    select * from {{ source('raw_salesforce', 'dsfs_recipient_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        dsfs_access_code_c,
        dsfs_action_c,
        dsfs_authentication_c,
        dsfs_email_c,
        dsfs_envelope_configuration_c,
        dsfs_first_name_c,
        dsfs_last_name_c,
        dsfs_message_c,
        dsfs_object_c,
        dsfs_order_c,
        dsfs_phone_c,
        dsfs_private_message_c,
        dsfs_role_c,
        dsfs_signing_group_id_c,
        dsfs_signing_group_name_c,
        dsfs_type_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
