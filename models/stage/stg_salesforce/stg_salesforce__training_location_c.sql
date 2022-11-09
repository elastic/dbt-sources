
with source as (

    select * from {{ source('raw_salesforce', 'training_location_c') }}

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
        project_c,
        system_modstamp,
        location_c

    from source

)

select * from renamed
