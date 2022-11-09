
with source as (

    select * from {{ source('raw_marketo', 'list_membership') }}

),

renamed as (

    select
        id,
        list_id,
        _fivetran_deleted,
        _fivetran_synced

    from source

)

select * from renamed
