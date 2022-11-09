
with source as (

    select * from {{ source('raw_salesforce', 'location_trust_measure') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        description,
        icon_url,
        is_deleted,
        is_visible_in_public,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        location_external_reference,
        location_id,
        name,
        owner_id,
        sort_order,
        system_modstamp,
        title

    from source

)

select * from renamed
