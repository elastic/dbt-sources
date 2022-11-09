
with source as (

    select * from {{ source('raw_netsuite_sa', 'bins') }}

),

renamed as (

    select
        bin_id,
        _fivetran_deleted,
        _fivetran_synced,
        bin_number,
        date_deleted,
        external_id,
        is_inactive,
        location_id,
        memo

    from source

)

select * from renamed
