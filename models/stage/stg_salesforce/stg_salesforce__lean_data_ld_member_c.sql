
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_ld_member_c') }}

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
        lean_data_user_id_c,
        name,
        owner_id,
        system_modstamp,
        lean_data_vacations_c,
        lean_data_time_zone_sid_key_c,
        lean_data_pausing_resume_time_c,
        lean_data_is_round_robin_paused_c,
        lean_data_holiday_set_c,
        lean_data_working_hours_c,
        lean_data_member_type_c,
        lean_data_user_c

    from source

)

select * from renamed
