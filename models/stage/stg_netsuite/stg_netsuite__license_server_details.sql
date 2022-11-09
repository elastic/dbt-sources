
with source as (

    select * from {{ source('raw_netsuite', 'license_server_details') }}

),

renamed as (

    select
        auth_code,
        auth_url,
        date_created,
        is_inactive,
        last_modified_date,
        license_server_details_extid,
        license_server_details_id,
        parent_id,
        url

    from source

)

select * from renamed
