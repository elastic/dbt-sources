
with source as (

    select * from {{ source('raw_aviso', 'hierarchy') }}

),

renamed as (

    select
        key,
        label,
        parent

    from source

)

select * from renamed
