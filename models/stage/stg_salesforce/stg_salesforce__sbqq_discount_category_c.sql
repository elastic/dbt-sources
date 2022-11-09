
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_discount_category_c') }}

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
        sbqq_max_discount_rate_c,
        system_modstamp

    from source

)

select * from renamed
