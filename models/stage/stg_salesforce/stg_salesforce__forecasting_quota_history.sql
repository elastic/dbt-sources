
with source as (

    select * from {{ source('raw_salesforce', 'forecasting_quota_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        forecasting_type_id,
        is_amount,
        is_quantity,
        last_modified_by_id,
        last_modified_date,
        period_id,
        product_family,
        quota_amount,
        quota_owner_id,
        quota_quantity,
        start_date,
        system_modstamp,
        territory_2_id

    from source

)

select * from renamed
