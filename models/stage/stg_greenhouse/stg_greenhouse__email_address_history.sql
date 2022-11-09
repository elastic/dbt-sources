
with source as (

    select * from {{ source('raw_greenhouse', 'email_address_history') }}

),

renamed as (

    select
        candidate_id,
        index,
        _fivetran_synced,
        type,
        value,
        partition_date

    from source

)

select * from renamed
