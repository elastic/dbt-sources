
with source as (

    select * from {{ source('raw_netsuite_sa', 'denied_zip_code') }}

),

renamed as (

    select
        denied_zip_code_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        denied_zip_code_extid,
        is_inactive,
        last_modified_date,
        parent_id,
        zip_code__country_id,
        zip_code_starts_with

    from source

)

select * from renamed
