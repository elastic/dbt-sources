
with source as (

    select * from {{ source('raw_salesforce', 'email_services_address') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        authorized_senders,
        created_by_id,
        created_date,
        email_domain_name,
        function_id,
        is_active,
        last_modified_by_id,
        last_modified_date,
        local_part,
        run_as_user_id,
        system_modstamp,
        developer_name

    from source

)

select * from renamed
