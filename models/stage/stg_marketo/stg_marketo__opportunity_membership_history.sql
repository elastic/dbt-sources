
with source as (

    select * from {{ source('raw_marketo', 'opportunity_membership_history') }}

),

renamed as (

    select
        id,
        opportunity_id,
        _fivetran_deleted,
        _fivetran_synced,
        partition_date

    from source

)

select * from renamed
