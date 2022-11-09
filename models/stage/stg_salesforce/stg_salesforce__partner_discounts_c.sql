
with source as (

    select * from {{ source('raw_salesforce', 'partner_discounts_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_type_c,
        created_by_id,
        created_date,
        currency_iso_code,
        deal_source_c,
        discount_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        super_geo_c,
        system_modstamp

    from source

)

select * from renamed
