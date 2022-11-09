
with source as (

    select * from {{ source('raw_salesforce', 'forecasting_type_to_category') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        display_position,
        forecasting_item_category,
        forecasting_type_id,
        is_adjustable,
        is_deleted,
        is_owner_adjustable,
        last_modified_by_id,
        last_modified_date,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
