
with source as (

    select * from {{ source('raw_netsuite_sa', 'license_server_details_history') }}

),

renamed as (

    select
        license_server_details_id,
        _fivetran_deleted,
        _fivetran_synced,
        auth_code,
        auth_url,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        license_server_details_extid,
        parent_id,
        url,
        partition_date

    from source

)

select * from renamed
