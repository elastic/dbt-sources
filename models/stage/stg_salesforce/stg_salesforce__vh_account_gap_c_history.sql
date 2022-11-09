
with source as (

    select * from {{ source('raw_salesforce', 'vh_account_gap_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        system_modstamp,
        vh_account_c,
        vh_account_gap_amount_c,
        vh_account_gap_weighted_yield_c,
        vh_account_gap_yield_c,
        vh_active_c,
        vh_active_lookup_c,
        vh_amount_source_c,
        vh_date_delivered_c,
        vh_description_c,
        vh_percent_complete_c,
        vh_product_gap_c,
        vh_status_c,
        vh_type_c,
        account_gap_created_by_workday_id_c

    from source

)

select * from renamed
