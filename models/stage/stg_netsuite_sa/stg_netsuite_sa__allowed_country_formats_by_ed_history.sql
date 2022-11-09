
with source as (

    select * from {{ source('raw_netsuite_sa', 'allowed_country_formats_by_ed_history') }}

),

renamed as (

    select
        allowed_country_formats_by__id,
        _fivetran_deleted,
        _fivetran_synced,
        allowed_country_formats_by__ex,
        date_created,
        date_deleted,
        edition,
        is_inactive,
        last_modified_date,
        parent_id,
        partition_date

    from source

)

select * from renamed
