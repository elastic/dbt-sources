
with source as (

    select * from {{ source('raw_salesforce', 'calendar_view') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        color,
        created_by_id,
        created_date,
        currency_iso_code,
        date_handling_type,
        display_field,
        end_field,
        fill_pattern,
        is_deleted,
        is_displayed,
        last_modified_by_id,
        last_modified_date,
        list_view_filter_id,
        name,
        owner_id,
        sobject_type,
        start_field,
        system_modstamp,
        publisher_id

    from source

)

select * from renamed
