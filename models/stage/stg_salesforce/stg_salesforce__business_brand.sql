
with source as (

    select * from {{ source('raw_salesforce', 'business_brand') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        org_id,
        owner_id,
        parent_id,
        system_modstamp

    from source

)

select * from renamed
