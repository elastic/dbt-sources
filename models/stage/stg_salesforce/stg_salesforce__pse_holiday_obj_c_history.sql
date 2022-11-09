
with source as (

    select * from {{ source('raw_salesforce', 'pse_holiday_obj_c_history') }}

),

renamed as (

    select
        partitiontime,
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
        pse_date_c,
        pse_work_calendar_c,
        pse_work_hours_c,
        system_modstamp

    from source

)

select * from renamed
