
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_round_robin_schedule_setting_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        lean_data_description_c,
        lean_data_is_template_c,
        lean_data_schedule_data_c,
        lean_data_schedule_type_c,
        lean_data_timezone_c,
        lean_data_vacation_user_c,
        name,
        owner_id,
        system_modstamp,
        lean_data_object_type_c,
        lean_data_is_default_c

    from source

)

select * from renamed
