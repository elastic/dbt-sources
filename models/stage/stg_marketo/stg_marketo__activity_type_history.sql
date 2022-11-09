
with source as (

    select * from {{ source('raw_marketo', 'activity_type_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        description,
        name,
        partition_date

    from source

)

select * from renamed
