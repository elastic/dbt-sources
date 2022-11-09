
with source as (

    select * from {{ source('raw_docebo_internal', 'ilt_sessions') }}

),

renamed as (

    select

    from source

)

select * from renamed
