
with source as (

    select * from {{ source('raw_salesforce', 'seller') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        active_from_date,
        active_to_date,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        party_id,
        sales_amount,
        seller_tier,
        seller_type,
        system_modstamp

    from source

)

select * from renamed
