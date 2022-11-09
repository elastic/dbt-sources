
with source as (

    select * from {{ source('raw_salesforce', 'network_self_registration_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        account_id,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        network_id,
        system_modstamp,
        apex_handler_id,
        execute_apex_handler_as_id,
        options_include_password,
        options_show_email,
        options_show_first_name,
        options_show_last_name,
        options_show_mobile_phone,
        options_show_nickname,
        options_show_username,
        verification_method

    from source

)

select * from renamed
