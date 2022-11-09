
with source as (

    select * from {{ source('raw_salesforce', 'calendar_view_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        color,
        created_by_id,
        created_date,
        currency_iso_code,
        date_handling_type,
        display_field,
        end_field,
        fill_pattern,
        id,
        is_deleted,
        is_displayed,
        last_modified_by_id,
        last_modified_date,
        list_view_filter_id,
        name,
        owner_id,
        sobject_type,
        start_field,
        system_modstamp

    from source

)

select * from renamed
