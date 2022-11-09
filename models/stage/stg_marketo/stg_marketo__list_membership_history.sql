
with source as (

    select * from {{ source('raw_marketo', 'list_membership_history') }}

),

renamed as (

    select
        id,
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        partition_date

    from source

)

select * from renamed
