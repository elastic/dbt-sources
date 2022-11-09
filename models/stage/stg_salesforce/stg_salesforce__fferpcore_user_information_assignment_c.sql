
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_user_information_assignment_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_message_c,
        fferpcore_status_c,
        fferpcore_template_name_c,
        fferpcore_uniqueness_constraint_c,
        fferpcore_user_information_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
