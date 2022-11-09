
with source as (

    select * from {{ source('raw_salesforce', 'pse_rate_card_c') }}

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
        pse_account_c,
        pse_average_cost_rate_c,
        pse_cascading_role_c,
        pse_end_date_c,
        pse_group_c,
        pse_practice_c,
        pse_region_c,
        pse_role_c,
        pse_start_date_c,
        pse_suggested_bill_rate_c,
        system_modstamp

    from source

)

select * from renamed
