
with source as (

    select * from {{ source('raw_salesforce', 'forecasting_displayed_family') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        display_position,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        product_family,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
