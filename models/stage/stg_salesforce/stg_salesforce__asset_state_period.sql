
with source as (

    select * from {{ source('raw_salesforce', 'asset_state_period') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        asset_id,
        asset_state_period_number,
        created_by_id,
        created_date,
        currency_iso_code,
        end_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        mrr,
        quantity,
        start_date,
        system_modstamp

    from source

)

select * from renamed
