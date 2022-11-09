
with source as (

    select * from {{ source('raw_salesforce', 'pse_team_schedule_slot_type_c') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_description_c,
        pse_is_blocking_c,
        pse_is_holiday_c,
        pse_is_weekend_c,
        pse_type_c,
        system_modstamp

    from source

)

select * from renamed
