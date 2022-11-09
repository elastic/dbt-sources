
with source as (

    select * from {{ source('raw_salesforce', 'opportunity_line_item_schedule') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        description,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        opportunity_line_item_id,
        quantity,
        revenue,
        schedule_date,
        system_modstamp,
        type

    from source

)

select * from renamed
