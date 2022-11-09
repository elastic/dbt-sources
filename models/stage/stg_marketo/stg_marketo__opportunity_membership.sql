
with source as (

    select * from {{ source('raw_marketo', 'opportunity_membership') }}

),

renamed as (

    select
        id,
        opportunity_id,
        _fivetran_deleted,
        _fivetran_synced

    from source

)

select * from renamed
