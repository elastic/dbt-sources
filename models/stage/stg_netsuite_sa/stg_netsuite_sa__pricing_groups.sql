
with source as (

    select * from {{ source('raw_netsuite_sa', 'pricing_groups') }}

),

renamed as (

    select
        pricing_group_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        name

    from source

)

select * from renamed
